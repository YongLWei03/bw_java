package com.bandweaver.tunnel.service.mam.video;

import com.bandweaver.tunnel.common.biz.constant.PtzDirectionEnum;
import com.bandweaver.tunnel.common.biz.constant.mam.VideoVendor;
import com.bandweaver.tunnel.common.biz.dto.TunnelSimpleDto;
import com.bandweaver.tunnel.common.biz.dto.mam.video.VideoDto;
import com.bandweaver.tunnel.common.biz.dto.mam.video.VideoExtendSceneDto;
import com.bandweaver.tunnel.common.biz.dto.mam.video.VideoSceneDto;
import com.bandweaver.tunnel.common.biz.dto.mam.video.VideoServerDto;
import com.bandweaver.tunnel.common.biz.itf.ModuleCenterInterface;
import com.bandweaver.tunnel.common.biz.itf.SectionService;
import com.bandweaver.tunnel.common.biz.itf.mam.OnvifService;
import com.bandweaver.tunnel.common.biz.pojo.Section;
import com.bandweaver.tunnel.common.biz.pojo.mam.measobj.MeasObj;
import com.bandweaver.tunnel.common.biz.pojo.mam.video.*;
import com.bandweaver.tunnel.common.platform.constant.Constants;
import com.bandweaver.tunnel.common.platform.log.LogUtil;
import com.bandweaver.tunnel.common.platform.util.PropertiesUtil;
import com.bandweaver.tunnel.dao.common.TunnelMapper;
import com.bandweaver.tunnel.dao.mam.*;
import com.bandweaver.tunnel.service.mam.measobj.MeasObjModuleCenter;
import de.onvif.soap.devices.PtzDevices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Service
public class VideoModuleCenter implements ModuleCenterInterface {

    @Autowired
    private MeasObjModuleCenter measObjModuleCenter;
    @Autowired
    private VideoServerMapper videoServerMapper;
    @Autowired
    private VideoSceneMapper videoSceneMapper;
    @Autowired
    private VideoExtendSceneMapper videoExtendSceneMapper;
    @Autowired
    private VideoPresetMapper videoPresetMapper;
    @Autowired
    private VideoMapper videoMapper;
    @Autowired
    private MeasObjMapper measObjMapper;
    @Autowired
    private TunnelMapper tunnelMapper;
    @Autowired
    private SectionService sectionService;
    @Resource(name = "OnvifServiceImpl")
    private OnvifService onvifService;
    @Resource(name = "H5StreamServiceImpl")
    private OnvifService h5streamService;

    private HashMap<Integer, List<VideoSceneDto>> videoSceneOfTunnelHashMap;
    private HashMap<Integer, List<VideoExtendSceneDto>> videoExtendSceneOfTunnelHashMap;
    private HashMap<Integer, VideoServer> videoServerHashMap;
    private HashMap<Integer, VideoDto> videoDtoHashMap;
    private HashMap<Integer, PtzDevices> videoPtzDeviceHashMap;
    private HashMap<Integer, String> videoProfileTokenHashMap;

    public List<VideoSceneDto> getVideoSceneDtosByTunnel(int tunnelId) {
        return videoSceneOfTunnelHashMap.get(tunnelId);
    }

    public List<VideoExtendSceneDto> getVideoExtendSceneDtosByTunnel(int tunnelId) {
        return videoExtendSceneOfTunnelHashMap.get(tunnelId);
    }

    public List<VideoDto> getVideoDtos() {
        return new ArrayList<VideoDto>(videoDtoHashMap.values());
    }

    public VideoDto getVideoDto(int id) {
        return videoDtoHashMap.get(id);
    }

    public PtzDevices getPtzDevices(int id) {
        return videoPtzDeviceHashMap.get(id);
    }

    public String getProfileToken(int id) {
        return videoProfileTokenHashMap.get(id);
    }

    //    @Transactional
    public void insertVideo(Video video) {
        if (videoDtoHashMap.containsKey(video.getId())) return;

        // 添加进数据库，出现问题回滚
        videoMapper.insertVideo(video);
        Section section = sectionService.getSectionByStoreAndArea(video.getStoreId(), video.getAreaId());
        if(section != null) video.setSectionId(section.getId());
        else video.setSectionId(0);
        measObjMapper.insertSelective((MeasObj) video);

        // 添加进缓存
        videoDtoHashMap.put(video.getId(), videoMapper.getVideoDto(video.getId().intValue()));

        // 对应监测对象表中添加对象
        measObjModuleCenter.addMeasObjHashMap((MeasObj) video);

        // 将ptz控制和权限加入缓存
        PtzDevices ptzDevices = onvifService.getPtzDevices(videoDtoHashMap.get(video.getId()));
        String profileToken = onvifService.getProfileToken(videoDtoHashMap.get(video.getId()));
        if (ptzDevices != null && profileToken != null) {
            videoPtzDeviceHashMap.put(video.getId(), ptzDevices);
            videoProfileTokenHashMap.put(video.getId(), profileToken);
        }
    }
    
    public void updateVideo(Video video) {
    	if (!videoDtoHashMap.containsKey(video.getId())) return;
    	
    	// 更新视频表
    	videoMapper.updateVideo(video);
    	// 更新监测对象表
    	measObjModuleCenter.updateMeasObj(video);
    	// 再更新缓存
        videoDtoHashMap.put(video.getId(), videoMapper.getVideoDto(video.getId().intValue()));
    }
    
    public void deleteVideo(Integer id) {
    	if (!videoDtoHashMap.containsKey(id)) return;
    	
    	// 删除监测对象
    	measObjModuleCenter.deleteObj(id);
    	// 删除视频
    	videoMapper.deleteVideo(id);
    	// 清除缓存
    	videoDtoHashMap.remove(id);
    }

    public void insertVideo2DB(Video video) {
        if (videoDtoHashMap.containsKey(video.getId())) return;
        videoMapper.insertVideo(video);
//        double x = 1/0;
    }

    public void insertVideo2HashMap(Video video) {
        if (videoDtoHashMap.containsKey(video.getId())) return;
        videoDtoHashMap.put(video.getId(), videoMapper.getVideoDto(video.getId()));
    }

    public void insertVideoScene(VideoScene videoScene) {
        // 管廊已经有了场景,查看是否已经有了对应的场景了
        if (videoSceneOfTunnelHashMap.containsKey(videoScene.getTunnelId())) {

            List<VideoSceneDto> videoSceneDtos = videoSceneOfTunnelHashMap.get(videoScene.getTunnelId());
            if (videoSceneDtos.stream().filter(a -> a.getId().intValue() == videoScene.getId().intValue()).count() > 0)
                return;
        }
        videoSceneMapper.insertVideoScene(videoScene);
        List<VideoSceneDto> videoSceneDtos = videoSceneMapper.getVideoSceneDtosByTunnel(videoScene.getTunnelId());
        videoSceneOfTunnelHashMap.put(videoScene.getTunnelId(), videoSceneDtos);
    }

    public void insertVideoExtendScene(VideoExtendScene videoExtendScene) {
        // 管廊已经有了场景,查看是否已经有了对应的场景了
        if (videoExtendSceneOfTunnelHashMap.containsKey(videoExtendScene.getTunnelId())) {

            List<VideoExtendSceneDto> videoExtendSceneDtos = videoExtendSceneOfTunnelHashMap.get(videoExtendScene.getTunnelId());
            if (videoExtendSceneDtos.stream().filter(a -> a.getId().intValue() == videoExtendScene.getId().intValue()).count() > 0)
                return;
        }
        videoExtendSceneMapper.insertVideoExtendScene(videoExtendScene);
        List<VideoExtendSceneDto> videoExtendSceneDtos = videoExtendSceneMapper.getVideoExtendSceneDtosByTunnel(videoExtendScene.getTunnelId());
        videoExtendSceneOfTunnelHashMap.put(videoExtendScene.getTunnelId(), videoExtendSceneDtos);
    }

    public void insertVideoServer(VideoServer videoServer) {
        if (videoServerHashMap.containsKey(videoServer.getId())) return;

        videoServerMapper.insertVideoServer(videoServer);
        videoServerHashMap.put(videoServer.getId(), videoServer);
    }

    /**
     * 更新预置位的3D镜头设置
     *
     * @param videoPreset
     */
    public void updateVideoPreset(VideoPreset videoPreset) {
        if (!videoDtoHashMap.containsKey(videoPreset.getVideoId())) return;

        // 获取这个相机所有预置位的3D设置
        List<VideoPreset> videoPresets = videoDtoHashMap.get(videoPreset.getVideoId()).getVideoPresets();

        // 如果有，直接更新
        // 如果没有，则加入
        boolean f = false;
        for (VideoPreset tmp : videoPresets) {
            if (tmp.getPresetName().equals(videoPreset.getPresetName())) {
                f = true;
                tmp.setLongitude(videoPreset.getLongitude());
                tmp.setLatitude(videoPreset.getLatitude());
                tmp.setHeight(videoPreset.getHeight());
                tmp.setHeading(videoPreset.getHeading());
                tmp.setPitch(videoPreset.getPitch());
                tmp.setRoll(videoPreset.getRoll());
                videoPresetMapper.updateVideoPreset(tmp);
                break;
            }
        }
        if (!f) {
            videoPresets.add(videoPreset);
            videoPresetMapper.insertVideoPreset(videoPreset);
        }
    }

    /**
     * 移动相机
     *
     * @param id
     * @param direction
     */
    public void startMove(int id, PtzDirectionEnum direction) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            h5streamService.startMove(id, direction);
        } else {
            onvifService.startMove(id, direction);
        }
    }

    /**
     * 停止移动
     *
     * @param id
     */
    public void stopMove(int id) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            h5streamService.stopMove(id);
        } else {
            onvifService.stopMove(id);
        }
    }

    /**
     * 获得相机所有的预置位
     *
     * @param id
     * @return
     */
    public List<String> getPresets(int id) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            return h5streamService.getPresets(id);
        } else {
            return onvifService.getPresets(id);
        }
    }

    /**
     * 添加预置位
     *
     * @param id
     * @param presetName
     * @return
     */
    public boolean addPreset(int id, String presetName) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            return h5streamService.addPreset(id, presetName);
        } else {
            return onvifService.addPreset(id, presetName);
        }
    }

    /**
     * 删除预置位
     *
     * @param id
     * @param presetName
     * @return
     */
    public boolean delPreset(int id, String presetName) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            return h5streamService.delPreset(id, presetName);
        } else {
            return onvifService.delPreset(id, presetName);
        }
    }

    /**
     * 更新预置位
     *
     * @param id
     * @param presetName
     * @return
     */
    public boolean updatePreset(int id, String presetName) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            return h5streamService.updatePreset(id, presetName);
        } else {
            return onvifService.updatePreset(id, presetName);
        }
    }

    /**
     * 移动到预置位
     *
     * @param id
     * @param presetName
     */
    public void gotoPreset(int id, String presetName) {
        VideoDto videoDto = videoDtoHashMap.get(id);

        if (videoDto.getVideoServerDto().getVendor() == VideoVendor.H5STREAM.getValue()) {
            h5streamService.gotoPreset(id, presetName);
        } else {
            onvifService.gotoPreset(id, presetName);
        }
    }


    private void initPTZ() {
        for (Object key : videoDtoHashMap.keySet()) {

            VideoDto video = (VideoDto) videoDtoHashMap.get(key);
            if(video.getVideoServerDto() == null) continue;

            // 如果不是h5stream的话，则通过onvif控制ptz
            if (video.getVideoServerDto().getVendor() != VideoVendor.H5STREAM.getValue()) {
                // 将ptz控制和权限加入缓存
                PtzDevices ptzDevices = onvifService.getPtzDevices(video);
                String profileToken = onvifService.getProfileToken(video);
                if (ptzDevices != null && profileToken != null) {
                    videoPtzDeviceHashMap.put(video.getId(), ptzDevices);
                    videoProfileTokenHashMap.put(video.getId(), profileToken);
                    video.setPtzOperationsSupported(true);
                } else {
                    video.setPtzOperationsSupported(false);
                }
            } else {        // h5stream则获取session
                VideoServer server = videoServerHashMap.get(video.getServerId());
                // 如果server的session为空，则登录获取，否则将server赋值给video。server
                if (server.getSession() == null) {
                    // 获取session
                	Callable<String> task = new Callable<String>() {
            			
            			@Override
            			public String call() throws Exception {
            				// 执行可能超时的操作
            				String session = h5streamService.getSession(server);
            				return session;
            			}
            		};
            		
            		ExecutorService executorService = Executors.newSingleThreadExecutor();
            		Future<String> future = executorService.submit(task);
            		String session = null;
            		// 获取超时时间
            		long s = 60;
            		try {
            			try {
							s = PropertiesUtil.getLongValue(Constants.INIT_TIMEOUT);
						} catch (Exception e) {
							
						}
            			session = future.get(s, TimeUnit.SECONDS);
            		} catch(InterruptedException e) {
            			e.printStackTrace();
            		} catch(ExecutionException e) {
            			e.printStackTrace();
            		}catch(TimeoutException e) {
            			LogUtil.info("session获取时间已超过预定时间：" + s + "秒！");
            		}finally {
            			executorService.shutdown();
            		}
                    
                    if (session == null) session = "";
                    LogUtil.info("getSession:" + session);
                    server.setSession(session);
                }
                video.setVideoServerDto((VideoServerDto) server);
                video.setPtzOperationsSupported(true);
                videoDtoHashMap.put(video.getId(), video);
            }

        }
    }

    private void initData() {
        List<VideoServerDto> videoServers = videoServerMapper.getAllVideoServers();
        for (VideoServer server : videoServers) {
            LogUtil.info("server:" + server);
            videoServerHashMap.put(server.getId(), server);
        }

        List<TunnelSimpleDto> tunnels = tunnelMapper.getList();
        LogUtil.info("tunnels:" + tunnels);
        for (TunnelSimpleDto tunnel : tunnels) {
            List<VideoSceneDto> videoSceneDtos = videoSceneMapper.getVideoSceneDtosByTunnel(tunnel.getId());
            LogUtil.info("videoSceneDtos:" + videoSceneDtos);
            videoSceneOfTunnelHashMap.put(tunnel.getId(), videoSceneDtos);

            List<VideoExtendSceneDto> videoExtendSceneDtos = videoExtendSceneMapper.getVideoExtendSceneDtosByTunnel(tunnel.getId());
            LogUtil.info("videoExtendSceneDtos:" + videoExtendSceneDtos);
            videoExtendSceneOfTunnelHashMap.put(tunnel.getId(), videoExtendSceneDtos);
        }

        List<VideoDto> videoDtos = videoMapper.getAllVideoDtos();
        for (VideoDto video : videoDtos) {
            LogUtil.info("video:" + video);
            videoDtoHashMap.put(video.getId(), video);
        }

        initPTZ();
    }

    @Override
    public void start() {
        videoDtoHashMap = new HashMap<>();
        videoSceneOfTunnelHashMap = new HashMap<>();
        videoExtendSceneOfTunnelHashMap = new HashMap<>();
        videoServerHashMap = new HashMap<>();
        videoProfileTokenHashMap = new HashMap<>();
        videoPtzDeviceHashMap = new HashMap<>();
        initData();
    }

    @Override
    public void stop() {

    }
}
package com.bandweaver.tunnel.controller.oam;

import java.io.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;
import java.util.UUID;

import com.bandweaver.tunnel.common.biz.itf.FileInfoService;
import com.bandweaver.tunnel.common.biz.pojo.oam.CableContract;
import com.bandweaver.tunnel.common.platform.exception.BandWeaverException;
import com.bandweaver.tunnel.common.platform.log.LogUtil;
import com.bandweaver.tunnel.common.platform.util.PropertiesUtil;
import org.apache.commons.codec.binary.Base64;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.alibaba.fastjson.JSONObject;
import com.bandweaver.tunnel.common.biz.dto.oam.CableContractDto;
import com.bandweaver.tunnel.common.biz.dto.oam.ContractDto;
import com.bandweaver.tunnel.common.biz.itf.oam.ContractService;
import com.bandweaver.tunnel.common.biz.vo.oam.CableContractVo;
import com.bandweaver.tunnel.common.biz.vo.oam.ContractVo;
import com.bandweaver.tunnel.common.platform.constant.StatusCodeEnum;
import com.bandweaver.tunnel.common.platform.util.CommonUtil;
import com.github.pagehelper.PageInfo;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

/**
 * 合同管理
 *
 * @author shaosen
 * @date 2018年7月29日
 */
@Controller
@ResponseBody
public class ContractController {

    @Autowired
    private ContractService contractService;
    @Autowired
    private FileInfoService fileInfoService;

    private static final String ATTACHMENT_PATH = "file.path.contract";


    /**
     * @param file 仅限上传单个文件，支持图片，pdf，不支持word文档
     * @return 返回上传文件相对路径
     */
    @RequiresPermissions("contract:add")
    @RequestMapping(value = "/contracts/upload", method = RequestMethod.POST)
    public JSONObject upload(MultipartFile file) throws Exception {

        // 获取合同保存路径
        String attachmentPath = PropertiesUtil.getString(ATTACHMENT_PATH);
        fileInfoService.checkPath(attachmentPath, true);
        String fileName = file.getOriginalFilename();
        // 考虑到并发的情况下可能发生文件名称重复，使用uuid表示文件名
        fileName = UUID.randomUUID() + fileName.substring(fileName.lastIndexOf("."), fileName.length());
        String path = attachmentPath + File.separator + fileName;
        file.transferTo(new File(path));
        // 用fileName表示相对路径，读取文件时，加上配置的attachment路径即可
        return CommonUtil.success(fileName);
    }


    /**
     * 新增合同
     *
     * @param name              合同名称
     * @param payType           付款方式（枚举）
     * @param contractStartTime 合同开始日期
     * @param contractEndTime   合同结束日期
     * @param companyId         企业id
     * @param
     * @param cableName         管线名称
     * @param cableLength       管线长度
     * @param cableLocation     管线位置
     * @param
     * @param storeId           管仓id
     * @param areaIds           区域id集合，格式：[1,2,3,4...]
     * @param
     * @return {"msg":"请求成功","code":"200","data":{}}
     * @throws
     * @author shaosen
     * @Date 2018年7月29日
     */
    @RequiresPermissions("contract:add")
    @RequestMapping(value = "contracts", method = RequestMethod.POST)
    public JSONObject add(@RequestBody ContractVo vo) {
        contractService.add(vo);
        return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
    }

    /**
     * 通过合同编号获取合同详情
     *
     * @param id 合同编号
     * @param
     * @return {"msg":"请求成功","code":"200","data":{"cableDto":{"id":"d306fbb1b2ac4a998ba7feaced076432","cableName":"高压线缆111111111","cableLength":8888,"cableStatus":2,"cableStatusName":"故障","cableLocation":null,"contract":{"id":"65de3644ec1e49c992f5bac5215d21c1","name":"tset2222","customer":{"id":2,"company":{"id":1,"name":"波汇科技","crtTime":1529596800000},"contact":"联系人0","tel":"13722228880","crtTime":1529979467000},"payType":2,"payTypeName":"季付","contractStatus":2,"contractStatusName":"过期","contractStartTime":1532849333000,"contractEndTime":1532849333000,"crtTime":1533276863000},"crtTime":1533276864000},"areaIds":[13,14,16],"storeId":3,"tunnelId":1}}
     * @throws
     * @author shaosen
     * @Date 2018年7月29日
     */
    @RequestMapping(value = "contracts/{id}", method = RequestMethod.GET)
    public JSONObject getContractDetById(@PathVariable String id) {
        ContractDto dto = contractService.getContractDetById(id);
        return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, dto);
    }


    /**
     * 预览合同
     * 16a91e49fd4b46b8bd1eff9280bd5925
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "contracts/{id}/view", method = RequestMethod.GET)
    public void view(@PathVariable String id, HttpServletResponse response) throws IOException {
        BufferedInputStream bis = null;
        OutputStream out = null;
        try {
            CableContract cableContract = contractService.get(id);
            if (cableContract != null) {
                String path = cableContract.getPath();
                File file = new File(PropertiesUtil.getString(ATTACHMENT_PATH) + File.separator + path);
                if (!file.exists()) {
                    throw new BandWeaverException("没有发现文件：" + path);
                }

                bis = new BufferedInputStream(new FileInputStream(file));
                byte[] bytes = new byte[bis.available()];
                bis.read(bytes);
                out = response.getOutputStream();
                out.write(bytes);
                out.flush();
            }
        } catch (BandWeaverException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
            LogUtil.error("预览合同失败：" + e.getMessage());
        } finally {
            if (bis != null) {
                bis.close();
            }
            if (out != null) {
                out.close();
            }

        }
    }

    /**
     * 合同分页查询
     *
     * @param id             合同编号（精确查找）
     * @param name           合同名称（支持模糊查询）
     * @param companyId      企业id
     * @param payType        付款方式
     * @param contractStatus 合同状态（枚举）
     * @param startTime
     * @param endTime
     * @param pageNum        必须
     * @param pageSize       必须
     * @param
     * @return {"msg":"请求成功","code":"200","data":{"total":3,"list":[{"id":"c1003","name":"合同3","customer":{"id":2,"company":{"id":1,"name":"波汇科技","crtTime":1529596800000},"contact":"联系人0","tel":"13722228880","crtTime":1529979467000},"payType":1,"payTypeName":"月付","contractStatus":1,"contractStatusName":"正常","contractStartTime":1532849333000,"contractEndTime":1532849333000,"crtTime":1532852103000},{"id":"c1002","name":"合同2","customer":null,"payType":1,"payTypeName":"月付","contractStatus":1,"contractStatusName":"正常","contractStartTime":1532849333000,"contractEndTime":1532849333000,"crtTime":1532850908000},{"id":"c1001","name":"合同1","customer":null,"payType":1,"payTypeName":"月付","contractStatus":1,"contractStatusName":"正常","contractStartTime":1532849333000,"contractEndTime":1532849333000,"crtTime":1532849901000}],"pageNum":1,"pageSize":5,"size":3,"startRow":1,"endRow":3,"pages":1,"prePage":0,"nextPage":0,"isFirstPage":true,"isLastPage":true,"hasPreviousPage":false,"hasNextPage":false,"navigatePages":8,"navigatepageNums":[1],"navigateFirstPage":1,"navigateLastPage":1,"firstPage":1,"lastPage":1}}
     * @throws
     * @author shaosen
     * @Date 2018年7月29日
     */
    @RequiresPermissions("contract:list")
    @RequestMapping(value = "contracts/datagrid", method = RequestMethod.POST)
    public JSONObject dataGrid(@RequestBody CableContractVo vo) {
        PageInfo<CableContractDto> pageInfo = contractService.dataGrid(vo);
        return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, pageInfo);
    }

    /**
     * 删除合同信息（同时删除管线信息和关联信息）
     *
     * @param id 合同编号
     * @param
     * @return {"msg":"请求成功","code":"200","data":{}}
     * @throws
     * @author shaosen
     * @Date 2018年7月30日
     */
    @RequiresPermissions("contract:delete")
    @RequestMapping(value = "contracts/{id}", method = RequestMethod.DELETE)
    public JSONObject delete(@PathVariable String id) {
        contractService.delete(id);
        return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
    }

    /**
     * 更新合同信息
     *
     * @param cableContactInfo  -------------------------
     * @param id                合同编号
     * @param name              合同名称
     * @param payType           付款方式（枚举）
     * @param contractStatus    合同状态（枚举）
     * @param contractStartTime 合同开始日期
     * @param contractEndTime   合同结束日期
     * @param companyId         企业id
     * @param
     * @param cableInfo         -------------------------
     * @param cableId           管线id
     * @param cableName         管线名称
     * @param cableLength       管线长度
     * @param cableLocation     管线位置
     * @param cableStatus       管线状态（枚举）
     * @param
     * @param sectionInfo       ---------------------------
     * @param areaIds           area集合，格式：[1,3,5,6,7.....]
     * @param storeId           管舱id
     * @param
     * @return {"msg":"请求成功","code":"200","data":{}}
     * @throws
     * @author shaosen
     * @Date 2018年7月30日
     */
    @RequiresPermissions("contract:update")
    @RequestMapping(value = "contracts", method = RequestMethod.PUT)
    public JSONObject update(@RequestBody ContractVo vo) {
        contractService.update(vo);
        return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
    }

}

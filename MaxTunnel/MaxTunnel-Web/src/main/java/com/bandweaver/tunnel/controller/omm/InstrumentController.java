package com.bandweaver.tunnel.controller.omm;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.bandweaver.tunnel.common.biz.dto.CommonDto;
import com.bandweaver.tunnel.common.biz.dto.omm.InstrumentDto;
import com.bandweaver.tunnel.common.biz.dto.omm.InstrumentRecordDto;
import com.bandweaver.tunnel.common.biz.itf.omm.InstrumentRecordService;
import com.bandweaver.tunnel.common.biz.itf.omm.InstrumentService;
import com.bandweaver.tunnel.common.biz.pojo.ListPageUtil;
import com.bandweaver.tunnel.common.biz.pojo.omm.Instrument;
import com.bandweaver.tunnel.common.biz.pojo.omm.InstrumentRecord;
import com.bandweaver.tunnel.common.biz.vo.omm.InstrumentRecordVo;
import com.bandweaver.tunnel.common.biz.vo.omm.InstrumentVo;
import com.bandweaver.tunnel.common.platform.constant.StatusCodeEnum;
import com.bandweaver.tunnel.common.platform.log.LogUtil;
import com.bandweaver.tunnel.common.platform.util.CommonUtil;
import com.bandweaver.tunnel.common.platform.util.DateUtil;

/**
 * 仪表工具模块
 * @author ya.liu
 * @Date 2018年12月1日
 */
@Controller
@ResponseBody
public class InstrumentController {
	
	@Autowired
	private InstrumentService instrumentService;
	@Autowired
	private InstrumentRecordService instrumentRecordService;
	
	/**
	 * 批量添加仪表入库
	 * @param count 数量
	 * @param name	名称
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status true 入库/false 出库
	 * @param inTime 入库时间
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments/{count}", method = RequestMethod.POST)
	public JSONObject addBath(@PathVariable("count") Integer count,
			@RequestBody Instrument in) {
		List<Instrument> list = new ArrayList<>();
		for(int i=1;i<= count;i++) {
			Instrument t = new Instrument();
			t.setName(in.getName() + i);
			t.setTypeId(in.getTypeId());
			t.setModelId(in.getModelId());
			t.setVenderId(in.getVenderId());
			t.setUseStatus(in.getUseStatus());
			t.setStatus(in.getStatus());
			t.setInTime(in.getInTime());
			list.add(t);
		}
		instrumentService.addBatch(list);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
	}
	/**
	 * 修改仪表工具
	 * @param id 
	 * @param name	名称
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status true/false
	 * @param inTime 入库时间
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments", method = RequestMethod.PUT)
	public JSONObject update(@RequestBody Instrument in) {
		instrumentService.update(in);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
	}
	
	/**
	 * 条件查询仪表工具，分页
	 * @param name	名称,支持模糊查询
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status 备品状态
	 * @param startTime
	 * @param endTime 
	 * @param pageSize
	 * @param pageNum
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments/datagride", method = RequestMethod.POST)
	public JSONObject dataGride(@RequestBody InstrumentVo vo) {
		ListPageUtil<InstrumentDto> page = instrumentService.dataGride(vo);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, page);
	}
	
	/**
	 * 条件查询仪表工具，不分页
	 * @param name	名称,支持模糊查询
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status 备品状态
	 * @param startTime
	 * @param endTime 
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments", method = RequestMethod.POST)
	public JSONObject getInstrumentDtoByCondition(@RequestBody InstrumentVo vo) {
		List<InstrumentDto> list = instrumentService.getInstrumentDtoByCondition(vo);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, list);
	}
	
	/**
	 * 通过id获取仪表工具信息
	 * @param id
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments/{id}", method = RequestMethod.GET)
	public JSONObject dataGride(@PathVariable("id") Integer id) {
		InstrumentDto dto = instrumentService.getInstrumentDtoById(id);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, dto);
	}
	
	/**
	 * 批量删除仪表工具
	 * @param ids "1,2,3"
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "instruments/{ids}", method = RequestMethod.DELETE)
	public JSONObject deleteByIds(@PathVariable("ids") String ids) {
		String [] strs = ids.split(",");
		List<Integer> list = new ArrayList<>();
		for(String str : strs) {
			list.add(Integer.valueOf(str));
		}
		instrumentService.deleteByIds(list);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
	}
	
	/**
	 * 在库/设备类型
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月1日
	 */
	@RequestMapping(value = "types/instruments", method = RequestMethod.GET)
	public JSONObject getCountGroupByTypeId() {
		List<CommonDto> list = instrumentService.getCountGroupByTypeId();
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200, list);
	}
	
	/**
	 * 仪表借出记录
	 * @param ids 仪表id "1,2,3"
	 * @param staffId 借用人id
	 * @param borrowTime 借出时间
	 * @param describe 备注
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records/{ids}", method = RequestMethod.POST)
	public JSONObject addBatch(@PathVariable("ids") String ids, 
			@RequestBody InstrumentRecord in) {
		String [] strs = ids.split(",");
		List<InstrumentRecord> list = new ArrayList<>();
		for(String str : strs) {
			InstrumentRecord i = new InstrumentRecord();
			i.setInstrumentId(Integer.valueOf(str));
			i.setStaffId(in.getStaffId());
			i.setBorrowTime(in.getBorrowTime());
			i.setDescribe(in.getDescribe() == null ? "" : in.getDescribe());
			list.add(i);
		}
		instrumentRecordService.addBatch(list);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
	}
	
	/**
	 * 仪表归还记录
	 * @param ids 借出id "3,4,5"
	 * @param returnId 归还人
	 * @param returnTime 归还时间
	 * @param remark 备注	可选
	 * @param useStatus 状态
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records/{ids}/usestatus/{useStatus}", method = RequestMethod.POST)
	public JSONObject updateReturnTime(@PathVariable("ids") String ids, 
			@PathVariable("useStatus") Integer useStatus, 
			@RequestBody InstrumentRecord record) {
		String [] strs = ids.split(",");
		List<Integer> list = new ArrayList<>();
		for(String str : strs) {
			list.add(Integer.valueOf(str));
		}
		instrumentRecordService.updateReturnTime(useStatus, record, list);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200);
	}
	
	/**
	 * 条件查询仪表借出/归还记录，分页
	 * @param instrumentId 仪表id
	 * @param name	名称,支持模糊查询
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status 备品状态
	 * @param staffId 借用人id
	 * @param returnId 归还人id
	 * @param startTime 借用开始时间
	 * @param endTime 借用结束时间
	 * @param retStaTime 归还开始时间
	 * @param retEndTime 归还结束时间
	 * @param pageSize
	 * @param pageNum
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records/datagride", method = RequestMethod.POST)
	public JSONObject dataGride(@RequestBody InstrumentRecordVo vo) {
		ListPageUtil<InstrumentRecordDto> page = instrumentRecordService.dataGride(vo);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200,page);
	}
	
	/**
	 * 条件查询仪表借出/归还记录，不分页
	 * @param instrumentId 仪表id
	 * @param name	名称,支持模糊查询
	 * @param modelId 模型
	 * @param typeId 类型
	 * @param venderId 供应商
	 * @param useStatus 使用状态
	 * @param status 备品状态
	 * @param staffId 借用人id
	 * @param returnId 归还人id
	 * @param startTime 借用开始时间
	 * @param endTime 借用结束时间
	 * @param retStaTime 归还开始时间
	 * @param retEndTime 归还结束时间
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records", method = RequestMethod.POST)
	public JSONObject getInstrumentRecordDtoByCondition(@RequestBody InstrumentRecordVo vo) {
		List<InstrumentRecordDto> list = instrumentRecordService.getInstrumentRecordDtoByCondition(vo);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200,list);
	}
	
	/**
	 * 通过id获取借出记录信息
	 * @param id
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records/{id}", method = RequestMethod.GET)
	public JSONObject getInstrumentRecordDtoById(@PathVariable("id") Integer id) {
		InstrumentRecordDto dto = instrumentRecordService.getInstrumentRecordDtoById(id);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200,dto);
	}
	
	/**
	 * 批量删除记录
	 * @param ids
	 * @return
	 * @author ya.liu
	 * @Date 2018年12月3日
	 */
	@RequestMapping(value = "instrument-records/{ids}", method = RequestMethod.DELETE)
	public JSONObject deleteRecordByIds(@PathVariable("ids") String ids) {
		String [] strs = ids.split(",");
		List<Integer> list = new ArrayList<>();
		for(String str : strs) {
			list.add(Integer.valueOf(str));
		}
		int i = instrumentRecordService.deleteByIds(list);
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200,i);
	}
}
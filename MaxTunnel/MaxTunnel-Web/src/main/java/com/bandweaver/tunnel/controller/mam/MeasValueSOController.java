package com.bandweaver.tunnel.controller.mam;

import com.alibaba.fastjson.JSONObject;
import com.bandweaver.tunnel.common.biz.itf.mam.MeasValueSOService;
import com.bandweaver.tunnel.common.biz.pojo.mam.MeasValueSO;
import com.bandweaver.tunnel.common.platform.constant.StatusCodeEnum;
import com.bandweaver.tunnel.common.platform.log.LogUtil;
import com.bandweaver.tunnel.common.platform.util.CommonUtil;
import com.bandweaver.tunnel.common.platform.util.ContextUtil;
import com.bandweaver.tunnel.common.platform.util.DataTypeUtil;
import com.bandweaver.tunnel.common.platform.util.DateUtil;
import com.bandweaver.tunnel.service.mam.measobj.MeasObjModuleCenter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@ResponseBody
public class MeasValueSOController {
	@Autowired
	private MeasValueSOService measValueSOService;
	@Autowired
	private MeasObjModuleCenter measObjModuleCenter;

	
	
	/**接收MaxView发送的数据 
	 * @param list
	 * @return   
	 * @author shaosen
	 * @Date 2018年10月22日
	 */
	@RequestMapping(value="measvalue-so/batch",method=RequestMethod.POST)
	public JSONObject addMeasValueSOBatch(@RequestBody List<MeasValueSO> list) {
		String ip = ContextUtil.getRemoteIp();
    	LogUtil.info("来自:" + ip + ",接收到MaxView发送的SO数据共：" + list.size() + "条" );
		for (MeasValueSO measValueSO : list) {
			measObjModuleCenter.updateMeasObjSOValue(measValueSO);
		}
		return CommonUtil.returnStatusJson(StatusCodeEnum.S_200,list.size());
	}
	
	
}

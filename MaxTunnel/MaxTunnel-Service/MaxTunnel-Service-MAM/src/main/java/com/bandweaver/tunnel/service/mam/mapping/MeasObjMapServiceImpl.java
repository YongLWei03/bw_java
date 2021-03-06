package com.bandweaver.tunnel.service.mam.mapping;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bandweaver.tunnel.common.biz.constant.mam.DataType;
import com.bandweaver.tunnel.common.biz.itf.mam.mapping.MeasObjMapService;
import com.bandweaver.tunnel.common.biz.pojo.mam.mapping.MeasObjMap;
import com.bandweaver.tunnel.common.biz.pojo.mam.measobj.MeasObj;
import com.bandweaver.tunnel.common.biz.pojo.mam.measobj.MeasObjDI;
import com.bandweaver.tunnel.common.biz.pojo.mam.measobj.MeasObjSI;
import com.bandweaver.tunnel.common.biz.vo.mam.MeasObjMapVo;
import com.bandweaver.tunnel.common.platform.util.DateUtil;
import com.bandweaver.tunnel.dao.mam.MeasObjMapMapper;
import com.bandweaver.tunnel.service.mam.measobj.MeasObjModuleCenter;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class MeasObjMapServiceImpl implements MeasObjMapService {

	@Autowired
	private MeasObjMapMapper measObjMapMapper;
	@Autowired
	private MeasObjModuleCenter measObjModuleCenter;

	@Override
	public MeasObjMap getByObjectIdAndInputValue(Integer objectId, Integer inputValue) {
		return measObjMapMapper.getByObjectIdAndInputValue(objectId,inputValue);
	}

	@Override
	public MeasObjMap getById(Integer id) {
		return measObjMapMapper.selectByPrimaryKey(id);
	}

	@Override
	public void add(MeasObjMap measObjMap) {
		measObjMap.setCrtTime(DateUtil.getCurrentDate());
		measObjMapMapper.insertSelective(measObjMap);
	}

	@Override
	public void delete(Integer id) {
		measObjMapMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void deleteBatch(List<Integer> list) {
		measObjMapMapper.deleteBatch(list);
	}

	@Override
	public void update(MeasObjMap pojo) {
		measObjMapMapper.updateByPrimaryKeySelective(pojo);
	}

	@Override
	public MeasObjMap getMaxViewMeasObj(Integer objectId, Integer inputValue) {
		return getByObjectIdAndInputValue(objectId,inputValue);
	}

	@Override
	public PageInfo<MeasObjMap> dataGrid(MeasObjMapVo vo) {
		PageHelper.startPage(vo.getPageNum(), vo.getPageSize());
		List<MeasObjMap> list = getByCondition(vo);
		return new PageInfo<>(list);
	}

	private List<MeasObjMap> getByCondition(MeasObjMapVo vo) {
		List<MeasObjMap> list = measObjMapMapper.getByCondition(vo);
		return list == null ? Collections.emptyList() : list ;
	}
	
	
	
} 

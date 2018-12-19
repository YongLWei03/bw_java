package com.bandweaver.tunnel.dao.omm;


import com.bandweaver.tunnel.common.biz.dto.CommonDto;
import com.bandweaver.tunnel.common.biz.dto.omm.SpareDto;
import com.bandweaver.tunnel.common.biz.pojo.omm.Spare;
import com.bandweaver.tunnel.common.biz.vo.omm.SpareVo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SpareMapper {

    int add(Spare spare);

    int update(Spare spare);

    int addBatch(List<Spare> list);
    /**
     * 获取所有未出库的备品
     * @return
     * @author ya.liu
     * @Date 2018年11月26日
     */
    List<SpareDto> getSpareDto();
    /**
     * 获取所有已出库的备品
     * @return
     * @author ya.liu
     * @Date 2018年11月26日
     */
    List<SpareDto> getSpareDtoByStatus();
    /**
     * 条件查询列表
     * @param vo
     * @return
     * @author ya.liu
     * @Date 2018年11月26日
     */
    List<SpareDto> getSpareDtoByCondition(SpareVo vo);
    
    SpareDto getSpareDtoById(Integer id);

    int deleteByIds(List<Integer> list);
    
    List<CommonDto> getCountGroupByTypeId(@Param("status") Boolean status);
}
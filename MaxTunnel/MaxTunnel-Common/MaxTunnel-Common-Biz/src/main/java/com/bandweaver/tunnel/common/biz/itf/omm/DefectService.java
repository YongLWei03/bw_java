package com.bandweaver.tunnel.common.biz.itf.omm;

import java.util.List;

import com.bandweaver.tunnel.common.biz.dto.omm.DefectDto;
import com.bandweaver.tunnel.common.biz.pojo.omm.Defect;
import com.bandweaver.tunnel.common.biz.pojo.omm.InspectionPlan;
import com.bandweaver.tunnel.common.biz.vo.omm.DefectVo;
import com.github.pagehelper.PageInfo;

public interface DefectService {

    int add(Defect defect);

    int update(Defect defect);

    List<DefectDto> getDefectsOfTunnel(Integer tunnelId);

    int getCountByCondition(DefectVo vo);

    List<DefectDto> getDefectsByCondition(DefectVo vo);

    /**
     * 维修完成后，更改缺陷状态
     *
     * @param defectId
     */
    void maintComplete(int defectId);
    
    PageInfo<DefectDto> dataGrid(DefectVo defectVo);
    
    DefectDto getDefectDto(Integer id);
}

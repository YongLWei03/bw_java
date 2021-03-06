package com.bandweaver.tunnel.common.biz.itf.em;

import java.util.List;
import java.util.Set;

import org.activiti.engine.delegate.event.ActivitiEvent;
import org.activiti.engine.impl.persistence.entity.TaskEntity;

import com.alibaba.fastjson.JSONObject;
import com.bandweaver.tunnel.common.biz.dto.em.EmPlanDto;
import com.bandweaver.tunnel.common.biz.pojo.Section;
import com.bandweaver.tunnel.common.biz.pojo.em.EmPlan;
import com.bandweaver.tunnel.common.biz.pojo.mam.measobj.MeasObj;
import com.bandweaver.tunnel.common.biz.vo.em.EmPlanVo;
import com.github.pagehelper.PageInfo;

public interface EmPlanService {

    void doBusiness(ActivitiEvent activitiEvent, TaskEntity taskEntity);

    /**
     * 下一个任务
     *
     * @param iid 流程实例id
     * @author shaosen
     * @Date 2018年10月16日
     */
    void nextTask(String processInstanceId, List<Section> sectionList);

    /**
     * 发送消息到mq队列
     *
     * @author shaosen
     * @Date 2018年10月16日
     */
    void sendMsg(String processInstanceId);


    /**
     * 发送消息和状态到mq
     *
     * @param processInstanceId
     * @param status
     */
    void sendMsg(String processInstanceId, String status);

    /**
     * 启动预案 并返回 流程实例id
     *
     * @param sectionId
     * @param processValue
     * @author shaosen
     * @Date 2018年10月17日
     */
    String start(List<Section> sectionList, Integer processValue);

    void add(EmPlan record);

    void delete(Integer id);

    void update(EmPlan record);

    EmPlanDto getById(Integer id);

    void deleteBatch(List<Integer> list);

    PageInfo<EmPlanDto> dataGrid(EmPlanVo vo);

    List<JSONObject> getNodeListByProcessKeyAndSection(String processKey, List<Section> sectionList);

    List<EmPlanDto> getListByProcessKey(String processKey);

}

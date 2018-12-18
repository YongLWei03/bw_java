package com.bandweaver.tunnel.common.biz.vo.omm;

import java.util.Date;

import com.bandweaver.tunnel.common.biz.vo.BaseVo;

public class MaintenanceOrderVo extends BaseVo{
    private String id;
    private Integer tunnelId;
    private Integer type;
    private Integer defectId;
    private Integer workerId;
    private Date workTime;
    private Integer status;
    private String maintenanceResult;
    private String describe;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getTunnelId() {
        return tunnelId;
    }

    public void setTunnelId(Integer tunnelId) {
        this.tunnelId = tunnelId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getDefectId() {
        return defectId;
    }

    public void setDefectId(Integer defectId) {
        this.defectId = defectId;
    }

    public Integer getWorkerId() {
        return workerId;
    }

    public void setWorkerId(Integer workerId) {
        this.workerId = workerId;
    }

    public Date getWorkTime() {
        return workTime;
    }

    public void setWorkTime(Date workTime) {
        this.workTime = workTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMaintenanceResult() {
		return maintenanceResult;
	}

	public void setMaintenanceResult(String maintenanceResult) {
		this.maintenanceResult = maintenanceResult;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	@Override
    public String toString() {
        return "MaintenanceOrderVo{" +
                "id='" + id + '\'' +
                ", tunnelId=" + tunnelId +
                ", type=" + type +
                ", defectId=" + defectId +
                ", workerId=" + workerId +
                ", workTime=" + workTime +
                ", status=" + status +
                ", maintenanceResult=" + maintenanceResult +
                ", describe=" + describe +
                "} " + super.toString();
    }
}

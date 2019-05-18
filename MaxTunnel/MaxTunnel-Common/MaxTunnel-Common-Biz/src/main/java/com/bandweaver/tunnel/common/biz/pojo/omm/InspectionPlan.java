package com.bandweaver.tunnel.common.biz.pojo.omm;

import java.io.Serializable;
import java.util.Date;

import com.bandweaver.tunnel.common.biz.pojo.ProcessBase;

public class InspectionPlan extends ProcessBase implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -6477451854974630586L;
	private String planId;
    private String name;
    private Integer requestStaffId;
    private Integer	approverId;
    private Integer tunnelId;
    private Integer groupId;
    private Date inspectTime;
    private String remark;
    
    private Integer inspectionWay;
    private Integer inspectionObject;
    private Integer inspectionPath;

    public InspectionPlan() {
        super();
        this.remark = "";
    }

    public String getPlanId() {
        return planId;
    }

    public void setPlanId(String planId) {
        this.planId = planId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRequestStaffId() {
		return requestStaffId;
	}

	public void setRequestStaffId(Integer requestStaffId) {
		this.requestStaffId = requestStaffId;
	}

	public Integer getApproverId() {
		return approverId;
	}

	public void setApproverId(Integer approverId) {
		this.approverId = approverId;
	}

	public Integer getTunnelId() {
        return tunnelId;
    }

    public void setTunnelId(Integer tunnelId) {
        this.tunnelId = tunnelId;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public Date getInspectTime() {
        return inspectTime;
    }

    public void setInspectTime(Date inspectTime) {
        this.inspectTime = inspectTime;
    }

    public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

    public Integer getInspectionWay() {
		return inspectionWay;
	}

	public void setInspectionWay(Integer inspectionWay) {
		this.inspectionWay = inspectionWay;
	}

	public Integer getInspectionObject() {
		return inspectionObject;
	}

	public void setInspectionObject(Integer inspectionObject) {
		this.inspectionObject = inspectionObject;
	}

	public Integer getInspectionPath() {
		return inspectionPath;
	}

	public void setInspectionPath(Integer inspectionPath) {
		this.inspectionPath = inspectionPath;
	}

	@Override
    public String toString() {
        return "InspectionPlan{" +
                "planId='" + planId + '\'' +
                ", name='" + name + '\'' +
                ", requestStaffId=" + requestStaffId +
                ", approverId=" + approverId +
                ", tunnelId=" + tunnelId +
                ", groupId=" + groupId +
                ", inspectTime=" + inspectTime +
                ", remark='" + remark + '\'' +
                ", inspectionWay=" + inspectionWay +
                ", inspectionObject=" + inspectionObject +
                ", inspectionPath=" + inspectionPath +
                "} " + super.toString();
    }
}

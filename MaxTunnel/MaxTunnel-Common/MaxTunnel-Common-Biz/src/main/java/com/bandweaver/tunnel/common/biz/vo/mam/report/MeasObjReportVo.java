package com.bandweaver.tunnel.common.biz.vo.mam.report;

import java.util.Date;

import com.bandweaver.tunnel.common.biz.vo.BaseVo;

public class MeasObjReportVo extends BaseVo{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private Integer objectId;

    private Integer objectType;

    private Integer timeType;
    
    private Date sTime;

    private Date eTime;

    private Double maxValue;

    private Double minValue;

    private Double avgValue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getObjectId() {
        return objectId;
    }

    public void setObjectId(Integer objectId) {
        this.objectId = objectId;
    }

    public Integer getObjectType() {
        return objectType;
    }

    public void setObjectType(Integer objectType) {
        this.objectType = objectType;
    }

    public Integer getTimeType() {
		return timeType;
	}

	public void setTimeType(Integer timeType) {
		this.timeType = timeType;
	}

	public Date getsTime() {
        return sTime;
    }

    public void setsTime(Date sTime) {
        this.sTime = sTime;
    }

    public Date geteTime() {
        return eTime;
    }

    public void seteTime(Date eTime) {
        this.eTime = eTime;
    }

    public Double getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(Double maxValue) {
        this.maxValue = maxValue;
    }

    public Double getMinValue() {
        return minValue;
    }

    public void setMinValue(Double minValue) {
        this.minValue = minValue;
    }

    public Double getAvgValue() {
        return avgValue;
    }

    public void setAvgValue(Double avgValue) {
        this.avgValue = avgValue;
    }
}
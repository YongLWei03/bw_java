package com.bandweaver.tunnel.common.biz.pojo.oam;

import java.io.Serializable;
import java.util.Date;

/**
 * ClassName: CableContract
 * @Description: 管线合同实体类
 * @author shaosen
 * @date 2018年7月22日
 */
public class CableContract implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;

    private String name;

    private Integer companyId;

    private Integer payType;
    
    private Integer contractStatus;//合同状态
    
    private Date contractStartTime;
    
    private Date contractEndTime;
    
    private Date crtTime;

	/**
	 * 录入人信息
	 */
	private String operateUsername;

	/**
	 * 附件地址
	 */
	private String path;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

	public Integer getContractStatus() {
		return contractStatus;
	}

	public void setContractStatus(Integer contractStatus) {
		this.contractStatus = contractStatus;
	}

	public Date getContractStartTime() {
		return contractStartTime;
	}

	public void setContractStartTime(Date contractStartTime) {
		this.contractStartTime = contractStartTime;
	}

	public Date getContractEndTime() {
		return contractEndTime;
	}

	public void setContractEndTime(Date contractEndTime) {
		this.contractEndTime = contractEndTime;
	}

	public Date getCrtTime() {
		return crtTime;
	}

	public void setCrtTime(Date crtTime) {
		this.crtTime = crtTime;
	}


	public String getOperateUsername() {
		return operateUsername;
	}

	public void setOperateUsername(String operateUsername) {
		this.operateUsername = operateUsername;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
}
package com.bandweaver.tunnel.common.biz.pojo;

import java.io.Serializable;
import java.util.Date;

public class Staff implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	//真实姓名
    private String name;
    //登录名
    private String account;
    //性别
    private String sex;
    //联系方式
    private String telphone;
    //入职时间
    private Date hireDate;
    //身份证号
    private String identityNO;
    //外来人员
    private Integer outside;

    private Integer deptId;

    private Integer positionId;
    
    private Date crtTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getPositionId() {
        return positionId;
    }

    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    public Date getCrtTime() {
        return crtTime;
    }

    public void setCrtTime(Date crtTime) {
        this.crtTime = crtTime;
    }

    
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}

    public String getIdentityNO() {
        return identityNO;
    }

    public void setIdentityNO(String identityNO) {
        this.identityNO = identityNO;
    }

    public Integer getOutside() {
		return outside;
	}

	public void setOutside(Integer outside) {
		this.outside = outside;
	}

	@Override
	public String toString() {
		return "Staff [name=" + name + "]";
	}

    
}
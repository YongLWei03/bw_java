package com.bandweaver.tunnel.common.biz.vo;

import java.util.Date;

/**
 * ClassName: Area
 * @Description: 管廊区域
 * @author shaosen
 * @date 2018年6月11日
 */
public class AreaVo extends BaseVo{
    private Integer id;

    private String name;

    private String location;

    private Integer tunnelId;
    
    private String camera;

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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public Integer getTunnelId() {
        return tunnelId;
    }

    public void setTunnelId(Integer tunnelId) {
        this.tunnelId = tunnelId;
    }

    public String getCamera() {
		return camera;
	}

	public void setCamera(String camera) {
		this.camera = camera;
	}

	public Date getCrtTime() {
        return crtTime;
    }

    public void setCrtTime(Date crtTime) {
        this.crtTime = crtTime;
    }

	@Override
	public String toString() {
		return "AreaVo [id=" + id + ", name=" + name + ", location=" + location + ", tunnelId=" + tunnelId + ", camera="
				+ camera + ", crtTime=" + crtTime + "]";
	}
    
    
}
package com.bandweaver.tunnel.common.biz.dto;

import java.io.Serializable;
import java.util.Date;

import com.bandweaver.tunnel.common.biz.pojo.Area;
import com.bandweaver.tunnel.common.biz.pojo.Store;
import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * ClassName: SectionDto
 * 
 * @Description: 仓节
 * @author shaosen
 * @date 2018年6月21日
 */
public class SectionDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5147808746450270349L;

	private Integer id;
	
	private Integer parentId;

	private String name;
	private Integer tunnelId;
	@JsonIgnore
	private Integer storeId;
	@JsonIgnore
	private Integer areaId;

	private Integer totalCableNumber;
	private Double length;

	private String camera;
	private String startPoint;
	private String endPoint;
	
	private Date crtTime;

	private StoreDto store;

	private Area area;

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

	public Integer getTunnelId() {
		return tunnelId;
	}

	public void setTunnelId(Integer tunnelId) {
		this.tunnelId = tunnelId;
	}

	public Integer getStoreId() {
		return storeId;
	}

	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}

	public Integer getAreaId() {
		return areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public Integer getTotalCableNumber() {
		return totalCableNumber;
	}

	public void setTotalCableNumber(Integer totalCableNumber) {
		this.totalCableNumber = totalCableNumber;
	}

	public Double getLength() {
		return length;
	}

	public void setLength(Double length) {
		this.length = length;
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

	public StoreDto getStore() {
		return store;
	}

	public void setStore(StoreDto store) {
		this.store = store;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getStartPoint() {
		return startPoint;
	}

	public void setStartPoint(String startPoint) {
		this.startPoint = startPoint;
	}

	public String getEndPoint() {
		return endPoint;
	}

	public void setEndPoint(String endPoint) {
		this.endPoint = endPoint;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	@Override
	public String toString() {
		return "SectionDto [id=" + id + ", parentId=" + parentId + ", name=" + name + ", tunnelId=" + tunnelId
				+ ", storeId=" + storeId + ", areaId=" + areaId + ", totalCableNumber=" + totalCableNumber + ", length="
				+ length + ", camera=" + camera + ", startPoint=" + startPoint + ", endPoint=" + endPoint + ", crtTime="
				+ crtTime + ", store=" + store + ", area=" + area + "]";
	}
}
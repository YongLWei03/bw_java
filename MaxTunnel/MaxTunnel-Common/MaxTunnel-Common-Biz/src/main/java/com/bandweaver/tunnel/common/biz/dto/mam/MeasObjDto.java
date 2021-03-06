package com.bandweaver.tunnel.common.biz.dto.mam;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.bandweaver.tunnel.common.biz.constant.mam.DataType;
import com.bandweaver.tunnel.common.biz.constant.mam.ObjectType;
import com.bandweaver.tunnel.common.biz.dto.SectionDto;
import com.bandweaver.tunnel.common.biz.pojo.mam.MeasValueAI;

public class MeasObjDto implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    private Integer tunnelId;
    private Integer storeId;
    private Integer areaId;
    private Integer sectionId;
    private String name;
    private Integer datatypeId;
    private String datatypeName;
    
    private Integer objtypeId;
    private String objtypeName;
    
    private boolean actived;
    private String description;
    /** 经度 */
    private String longitude;
    /** 维度 */
    private String latitude;
    /** 高度 */
    private String height;
    /** 偏差 */
    private Double deviation;
    
    //额外用来显示
    private Double cv;
    private SectionDto section;

    /**
     * 关联的应急预案id
     */
    private String planIds;

    /**
     * 关联的视频id
     */
    private String videoIds;

    private List<String> plansName;

    private List<String> videosName;

    public List<String> getPlansName() {
        return plansName;
    }

    public void setPlansName(List<String> plansName) {
        this.plansName = plansName;
    }

    public List<String> getVideosName() {
        return videosName;
    }

    public void setVideosName(List<String> videosName) {
        this.videosName = videosName;
    }

    public String getPlanIds() {
        return planIds;
    }

    public void setPlanIds(String planIds) {
        this.planIds = planIds;
    }

    public String getVideoIds() {
        return videoIds;
    }

    public void setVideoIds(String videoIds) {
        this.videoIds = videoIds;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

	public Integer getSectionId() {
        return sectionId;
    }

    public void setSectionId(Integer sectionId) {
        this.sectionId = sectionId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDatatypeId() {
        return datatypeId;
    }

    public void setDatatypeId(Integer datatypeId) {
        this.datatypeId = datatypeId;
    }

    public Integer getObjtypeId() {
        return objtypeId;
    }

    public void setObjtypeId(Integer objtypeId) {
        this.objtypeId = objtypeId;
    }

    public boolean isActived() {
        return actived;
    }

    public void setActived(boolean actived) {
        this.actived = actived;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public Double getDeviation() {
        return deviation;
    }

    public void setDeviation(Double deviation) {
        this.deviation = deviation;
    }

    
    
    public String getDatatypeName() {
		return DataType.getEnum(this.datatypeId).getName();
	}

	public void setDatatypeName(String datatypeName) {
		this.datatypeName = datatypeName;
	}

	public String getObjtypeName() {
		return ObjectType.getEnum(this.objtypeId).getName();
	}

	public void setObjtypeName(String objtypeName) {
		this.objtypeName = objtypeName;
	}

	
	public Double getCv() {
		return cv;
	}

	public void setCv(Double cv) {
		this.cv = cv;
	}
	
	
	public SectionDto getSection() {
		return section;
	}

	public void setSection(SectionDto section) {
		this.section = section;
	}

    @Override
    public String toString() {
        return "MeasObjDto{" +
                "id=" + id +
                ", tunnelId=" + tunnelId +
                ", storeId=" + storeId +
                ", areaId=" + areaId +
                ", sectionId=" + sectionId +
                ", name='" + name + '\'' +
                ", datatypeId=" + datatypeId +
                ", datatypeName='" + datatypeName + '\'' +
                ", objtypeId=" + objtypeId +
                ", objtypeName='" + objtypeName + '\'' +
                ", actived=" + actived +
                ", description='" + description + '\'' +
                ", longitude='" + longitude + '\'' +
                ", latitude='" + latitude + '\'' +
                ", height='" + height + '\'' +
                ", deviation=" + deviation +
                ", cv=" + cv +
                ", section=" + section +
                ", planIds='" + planIds + '\'' +
                ", videoIds='" + videoIds + '\'' +
                ", plansName=" + plansName +
                ", videosName=" + videosName +
                '}';
    }
}

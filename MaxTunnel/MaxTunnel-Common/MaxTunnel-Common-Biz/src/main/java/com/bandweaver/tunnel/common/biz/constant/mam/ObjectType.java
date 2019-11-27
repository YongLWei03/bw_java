package com.bandweaver.tunnel.common.biz.constant.mam;

import java.util.ArrayList;
import java.util.List;

public enum ObjectType {

    /**
     *
     */
    NONE("无", 0, 0, 0, ""),
    TEMPERATURE("温度", 1, 1, 1, "℃"),
    HUMIDITY("湿度", 2, 1, 1, "%RH"),
    OXYGEN("氧气", 3, 1, 1, "%"),
    H2S("硫化氢", 4, 1, 1, "ppm"),
    CH4("甲烷", 5, 1, 1, "LEL"),
    CO("一氧化碳", 6, 1, 1, "ppm"),
    VIDEO("视频", 7, 6, 7, ""),
    DISTRIBUTET("分布式温度", 8, 1, 1, ""),
    ROBOT("机器人", 9, 6, 97, ""),
    LIGHT("照明", 11, 1, 2, "", true),
    POSITION("定位设备", 20, 6, 97, ""),
    LIQUID("液位仪", 21, 1, 1, "m"),

    // 复杂类型
    FAN("风机", 10, 4, 200, "", true),
    EMERGENCY_LIGHT("应急照明", 12, 1, 200, "", true, true),
    ELECTRONIC_COVERS("智能井盖", 56, 3, 200, "", true, true),
    BLINDS("电动百叶", 58, 4, 200, "", true, true),
    PUMP("排水泵", 59, 4, 200, "", false),
    ELECTRICITY_METER0("电子仪表", 30, 1, 200, ""),
	
	DEPLOY_DEFENCE("布防", 63, 3, 200, "", true),
	LINKAGE("联动", 64, 3, 200, "", true),

    //普通类电表
    ELECTRICITY_METER1("风机类电表", 31, 6, 1, ""),
    ELECTRICITY_METER2("照明类电表", 32, 6, 1, ""),
    ELECTRICITY_METER3("水泵类电表", 33, 6, 1, ""),
    ELECTRICITY_METER4("百叶类电表", 34, 6, 1, ""),
    ELECTRICITY_METER5("井盖类电表", 35, 6, 1, ""),
    //应急类电表
    ELECTRICITY_METER6("应急照明类电表", 36, 6, 1, ""),
    //其他类电表
    ELECTRICITY_METER7("其他类电表", 37, 6, 1, ""),

    ALTEROR("声光报警", 41, 3, 2, ""),

    SETTLE("沉降", 51, 2, 97, ""),
    EXPANSION_JOINT("伸缩缝", 52, 2, 97, ""),
    STRESS("应力", 53, 2, 97, ""),
    EXTERNAL_WATER_PRESSURE("外水压力", 54, 2, 97, ""),

    ENTRANCE_GUARD("门禁", 55, 3, 3, ""),
    INFRARED("红外", 57, 3, 2, ""),

    SMOKE_SENSATION("烟感", 60, 5, 1, null),
    WARM_SENSATION("温感", 61, 5, 1, null),
    HAND_REPORT("手报", 62, 5, 2, null),
    
    LEL("可燃气体", 65, 5, 1, "%LEL"),

    WIRELESS_AP("无线AP", 70, 6, 0, null),
    SWITCH("交换机", 71, 6, 0, null);

    private String name;
    private int value;
    private int monitorType;
    private int dataType;
    private String unit;
    private boolean control;
    private boolean reset;

    ObjectType(String name, int value, int monitorType, int dataType, String unit) {
        this.name = name;
        this.value = value;
        this.monitorType = monitorType;
        this.dataType = dataType;
        this.unit = unit;
        this.control = false;
        this.reset = false;
    }

    ObjectType(String name, int value, int monitorType, int dataType, String unit, boolean control) {
        this.name = name;
        this.value = value;
        this.monitorType = monitorType;
        this.dataType = dataType;
        this.unit = unit;
        this.control = control;
        this.reset = false;
    }

    ObjectType(String name, int value, int monitorType, int dataType, String unit, boolean control, boolean reset) {
        this.name = name;
        this.value = value;
        this.monitorType = monitorType;
        this.dataType = dataType;
        this.unit = unit;
        this.control = control;
        this.reset = reset;
    }

    /**
     * 返回电表监测类型数组
     *
     * @return
     * @author shaosen
     * @Date 2018年8月16日
     */
    public static ObjectType[] getArr() {
        return new ObjectType[]{
                ELECTRICITY_METER1,
                ELECTRICITY_METER2,
                ELECTRICITY_METER3,
                ELECTRICITY_METER4,
                ELECTRICITY_METER5,
                ELECTRICITY_METER6,
                ELECTRICITY_METER7
        };
    }

    /**
     * 返回能耗类型是普通的对象类型数组
     *
     * @return
     * @author ya.liu
     * @Date 2018年11月19日
     */
    public static ObjectType[] getCommon() {
        return new ObjectType[]{
                ELECTRICITY_METER1,
                ELECTRICITY_METER2,
                ELECTRICITY_METER3,
                ELECTRICITY_METER4,
                ELECTRICITY_METER5,
                ELECTRICITY_METER7
        };
    }

    /**
     * 返回能耗类型为应急的对象类型数组
     *
     * @return
     * @author ya.liu
     * @Date 2018年11月19日
     */
    public static ObjectType[] getEmergency() {
        return new ObjectType[]{
                ELECTRICITY_METER6,
                ELECTRICITY_METER7
        };
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }


    public int getMonitorType() {
        return monitorType;
    }

    public void setMonitorType(int monitorType) {
        this.monitorType = monitorType;
    }

    public int getDataType() {
        return dataType;
    }

    public void setDataType(int dataType) {
        this.dataType = dataType;
    }

    public static ObjectType getEnum(String name) {
        for (ObjectType dl : ObjectType.values()) {
            if (dl.getName().equals(name)) {
                return dl;
            }
        }
        return null;
    }

    public static ObjectType getEnum(int value) {
        for (ObjectType dl : ObjectType.values()) {
            if (dl.getValue() == value) {
                return dl;
            }
        }
        return ObjectType.NONE;
    }


    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

	public boolean isControl() {
		return control;
	}

	public void setControl(boolean control) {
		this.control = control;
	}

    public boolean isReset() {
        return reset;
    }

    public void setReset(boolean reset) {
        this.reset = reset;
    }

    public static List<ObjectType> getEnumByMonitorType(int monitorType) {
        List<ObjectType> list = new ArrayList<>();
        for (ObjectType dl : ObjectType.values()) {
            if (dl.getMonitorType() == monitorType) {
                list.add(dl);
            }
        }
        return list;
    }

    public static List<ObjectType> getEnumByDataType(int dataType) {
        List<ObjectType> list = new ArrayList<>();
        for (ObjectType dl : ObjectType.values()) {
            if (dl.getDataType() == dataType) {
                list.add(dl);
            }
        }
        return list;
    }

}

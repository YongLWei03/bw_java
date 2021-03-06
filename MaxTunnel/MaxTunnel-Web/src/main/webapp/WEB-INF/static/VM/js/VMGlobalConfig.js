//vm 全局变量
export const VM_TILTE = "管廊智慧管理平台"; //vm title

export const LOGO_IMAGE = "MaxviewLogo"; //vm logo image

export default {
  install: function(Vue, options) {
    Vue.prototype.VMConfig = {
      VLC: {
        //vlc 属性
        VLC_ID: 0
      },
      UNDERGROUND_MODE: true, //设置开启地下场景,默认false
      flyManagerProp: {
        flySpeed: 100, //飞行管理速度
        flyUpdateTime: 1000 //单位ms
      },
      CAMERA: {
        //相机初始化视角
        longitude: 112.49802091380211,
        latitude: 37.70768364078975,
        height: 4999.577866952712,
        roll: 0,
        pitch: -1.559829,
        heading: 0.373219
      },
      entityHeight: 10, //实体高度
      searchEventsDay: "5", //查询几天内时间
      weatherConfig: {
        city: 310115, //行政区代码 例如:上海市浦东新区 310115
        key: "4bad9021a959fbc3f4709e9fe2fd51da", //高德地图密钥key
        networkAnomaly: 0, // 0 代表网络正常，1 代表网络异常
        weathers: [
          { key: "晴", val: "icon_fine" },
          { key: "多云", val: "icon_cloudy" },
          { key: "阴", val: "icon_yin" },
          { key: "小雨", val: "icon_light_rain" },
          { key: "中雨", val: "icon_moderate_rain" },
          { key: "大雨", val: "icon_heavy_rain" },
          { key: "大暴雨", val: "icon_torrential_rain" },
          { key: "阵雨", val: "icon_shower" },
          { key: "雷阵雨", val: "icon_thundershower" },
          { key: "小雪", val: "icon_light_snow" },
          { key: "中雪", val: "icon_moderate_snow" },
          { key: "大雪", val: "icon_heavy_snow" },
          { key: "暴雪", val: "icon_blizzard" },
          { key: "雾", val: "icon_fog" },
          { key: "雷阵雨并伴有冰雹", val: "icon_thundershower_hail" },
          { key: "沙尘暴", val: "icon_dust_storms" },
          { key: "雨夹雪", val: "icon_sleet" },
          { key: "龙卷风", val: "icon_tornado" },
          { key: "霾", val: "icon_haze" },
          { key: "轻雾", val: "icon_mist" }
        ]
      },
      queryParam: {
        //数据集查询参数
        dataSourceName: "datasources", // 默认值
        dataSetName: "安全设备"
      },
      detectionObj: {
        analog: [1,2,3,4,5,6,8,21,31,32,33,34,35,36,37], //模拟量
        sq: [], //开关量
        sa: [41,10,11,55,56,57,58,59] //状态量
      },
      unitType: [
        {
          //单位类型
          val: 1,
          key: "hospital" //医院
        },
        {
          val: 2,
          key: "school" //学校
        },
        {
          val: 3,
          key: "institutional_unit" //机关单位
        },
        {
          val: 4,
          key: "market" //商场
        },
        {
          val: 5,
          key: "back" //银行
        },
        {
          val: 6,
          key: "scenic_spot" //景点
        },
        {
          val: 7,
          key: "airport" //火车站/机场
        },
        {
          val: 8,
          key: "other" //其他
        }
      ],
      personnelType: [
        {
          //人员类型
          val: 0,
          key: "personnel-location1" //人员定位
        }
      ],
      flawType: [
        {
          //缺陷类型
          val: [1, 2, 4, 7],
          key: "flaw-location1" //缺陷定位
        }
      ],
      videoType: [
        {
          //视屏类型
          val: 7,
          key: "video-location" //视屏定位
        }
      ],
      checkPointType: [
        {
          val: 0,
          key: "video-location" //巡检点定位
        }
      ],
      alarmType: [
        {
          //告警类型
          val: [1, 2, 4, 7],
          key: "alarm-close" //告警定位
        }
      ],
      detectionObjTitleImg:[
        { key:1,val:'temperature' }, //温度
        { key:2,val:'humidity'}, //湿度
        { key:3,val:'oxygen'}, //氧气
        { key:4,val:'sulfide'}, //硫化氢
        { key:5,val:'methane' } //甲烷
      ]
    };
  }
};

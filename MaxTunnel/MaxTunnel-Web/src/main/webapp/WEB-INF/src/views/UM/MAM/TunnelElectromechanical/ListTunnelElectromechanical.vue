<template>
    <div>
        <div style="margin: 1vh;">
            <RadioGroup
                v-model="queryCondition.areaId"
                type="button"
                @on-change="updateArea"
                size="large"
            >
                <Radio
                    v-for="(item,key) in areaList"
                    :key="key"
                    :label="item.id"
                    style="font-size: 1.5vmin;height: 3vmin;line-height: 3vmin"
                    :class="{select_radio:queryCondition.areaId==item.id}"
                >{{item.name}}</Radio>
            </RadioGroup>
        </div>
        <div style="margin: 1vh;">
            <check-select v-bind="storeProp" @toParent="updateStores"></check-select>
        </div>
        <Row>
            <Col span="18" style="padding-left: 10px;padding-right: 10px;margin-top: 0.4vmin;">
                <div class="gis" :style="{height:curHeight+'px'}">
                    <!-- <sm-viewer :id="mapId" ref="smViewer">
                    </sm-viewer>-->
                    <TestSmViewer ref="smViewer" :openImageryProvider="false"  @sendSectionDetails="getSectionDetails"></TestSmViewer>
                    <div
                        class="positionNote"
                        v-if="note.areaName && note.storeName"
                    >{{note.areaName + " " + note.storeName}}</div>
                    <ShowSectionDetailData
                        :showDetailsModel="showDetailsModel"
                        :dataDetails="sectionDetailsData"
                    ></ShowSectionDetailData>
                </div>
            </Col>
            <Col span="6" style="padding-left: 10px;padding-right: 10px;">
                <div :style="{height:curHeight+'px'}">
                    <div class="monitor-tunnel-overview">
                        <div style="margin: 3vmin 10px;">
                            <span class="monitor-tunnel-title">{{curName}}</span>
                            <Row :gutter="16" style="padding: 0px 2vmin;">
                                <Col span="24" class="descCol">
                                    <span>区段数：</span>
                                    <div style="float: right">{{curTunnel.areaNum}}</div>
                                </Col>
                                <Col span="24" class="descCol">
                                    <span>监测仓个数：</span>
                                    <div style="float: right">{{curTunnel.storeNum}}</div>
                                </Col>
                                <Col span="24" class="descCol">
                                    <span>建设单位：</span>
                                    <div style="float: right">{{curTunnel.constructionUnit}}</div>
                                </Col>
                                <Col span="24" class="descCol">
                                    <span>运营单位：</span>
                                    <div style="float: right">{{curTunnel.operationUnit}}</div>
                                </Col>
                            </Row>
                        </div>
                    </div>
                    <div class="monitor-tunnel-overview" style="height:calc(47vh );">
                        <div style="margin: 3vmin 10px;">
                            <div>
                                <h2 class="monitor-tunnel-title">机电统计</h2>
                                <div>
                                    <Row style="color: #fff">
                                        <Col
                                            span="22"
                                            style="margin-top: 1vh;margin-bottom: 1vh; margin-left: 1vw;font-size:1.5vmin"
                                            v-for="(item,index) in tunnelProps"
                                            :key="index"
                                        >
                                            <span
                                                style="width:100%;display:inline-block;text-align:center"
                                            >{{item.name}}</span>
                                            <div style>
                                                <Row>
                                                    <Col
                                                        span="10"
                                                        style="margin-top: 14px;"
                                                        offset="2"
                                                        v-for="(item2,index) in item.data"
                                                        :key="index"
                                                    >
                                                        <img
                                                            src="../../../../assets/UM/status-open.png"
                                                            class="open-status-img"
                                                            v-if="item2.key ==('开' || '正常')"
                                                        >
                                                        <img
                                                            src="../../../../assets/UM/status-close.png"
                                                            class="open-status-img"
                                                            v-if="item2.key ==('关' || '入侵')"
                                                        >
                                                        <img
                                                            src="../../../../assets/UM/status-alarm.png"
                                                            class="open-status-img"
                                                            v-if="item2.key =='故障'"
                                                        >
                                                        {{item2.key}}：{{item2.val}}
                                                    </Col>
                                                </Row>
                                            </div>
                                        </Col>
                                    </Row>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </Col>
        </Row>
    </div>
</template>

<script>
import Modal from "../../../../components/Common/Modal/ShowMapDataModal.vue";
import TestSmViewer from "../../../../components/Common/3D/simple3DViewer";
import SimulatedData from "../../../../components/UM/MAM/ShowSimulatedData";
import showSwitchData from "../../../../components/UM/MAM/ShowSwitchData";
import { MonitorDataService } from "../../../../services/monitorDataService";
import EnvironmentShow from "../../../../components/Common/TunnelDisplay/EnvironmentShow";
import checkSelect from "../../../../components/Common/CheckSelect.vue";
import ShowSectionDetailData from "../../../../components/Common/Modal/ShowSectionDetailData.vue";
import { commonFlyFn } from "../Minxis/unit";

export default {
    name: "list-tunnel-ele",
    mixins: [commonFlyFn],
    data() {
        return {
            curHeight: 450,
            iconSize: 16,
            scene: null,
            modelProp: {
                show: {
                    //默认隐藏
                    state: false
                },
                showButton: false, //关闭底部按钮
                tilte: "详情", //对话框标题
                data: [
                    { key: "氧气浓度", val: "12.45%" },
                    { key: "硫化氢", val: "45%" },
                    { key: "一氧化碳", val: "34.2%" },
                    { key: "湿度", val: "30%" }
                ] //属性集
            },
            tunnelProps: [] //管廊统计数据
        };
    },
    mounted() {
        this.fentchData();
        // this.getMonitorData();
        // 设置表格高度
        this.curHeight = window.innerHeight * 0.76; //将85vh转为数值
        this.iconSize = window.innerHeight * 0.02;
        //3D加载
    },
    components: {
        SimulatedData,
        showSwitchData,
        Modal,
        EnvironmentShow,
        // SmViewer
        TestSmViewer,
        checkSelect,
        ShowSectionDetailData
    },
    methods: {
        //根据监测类型获取数据
        getMonitorData() {
            let { queryCondition } = this;
            let areaId = !queryCondition.areaId ? null : queryCondition.areaId ;
            !queryCondition.storeId && (queryCondition.storeId = null);
            let parms = {
                tunnelId: queryCondition.tunnelId,
                storeId: queryCondition.storeId,
                areaId: areaId,
                monitorType: 4
            };

            MonitorDataService.getMeasStatusCounts(parms).then(result => {
                this.tunnelProps = result;
            });
        }
    },
    watch: {
        $route: function() {
            // $route发生变化时再次赋值
            this.queryCondition.tunnelId = this.tunnelId;
            this.fentchData();
            this.getMonitorData();
        },
        storeProp: {
            handler: function(newVal, oldVal) {
                this.updateStores(newVal.selectObj.selectId);
            },
            deep: true
        }
    }
};
</script>

<style scoped>
@import "../CommonCss/ComStyle.css";

.details {
    display: inline-block;
    border: 1px solid #b3b0b0;
    vertical-align: top;
    width: 100%;
}
.Section #pageBox {
    border: 1px solid #b3b0b0;
    bottom: 0px;
    width: 83.5vw;
    left: 0px;
    text-align: center;
    overflow-x: hidden;
}
.showSection ul li {
    display: inline-block;
    border-right: 1px solid #b3b0b0;
    line-height: 35px;
    text-align: center;
    width: 100px;
}
.inline-box div {
    display: inline-block;
}
.ivu-select-single .ivu-select-selection {
    height: 100px;
}
.MaxValCol {
    margin-top: 4.5vh;
    font-size: 1.66vmin;
}
.descCol {
    margin-top: 1vh;
    font-size: 1.66vmin;
}
.MaxValCol:hover,
.descCol:hover {
    background-color: #44c3ee;
    cursor: pointer;
}
.borde_rhadow {
    border: 1px solid #b3b0b0;
    border-radius: 8px;
    box-shadow: 5px 6px 4px rgba(0, 0, 0, 0.2);
    border-color: #eee;
}
.select_radio {
    color: #fff;
    background-color: #869bcb;
    background-position: 0 -15px;
}
.ivu-modal-wrap > .ivu-modal {
    left: 500px;
    top: 500px;
}
.ivu-tabs.ivu-tabs-card > .ivu-tabs-bar .ivu-tabs-tab {
    background: #adb3e2;
    color: #fff;
}

.tunnelsInfo,
.environmentalMonitoring,
.theFireWarning,
.monitoringSituation {
    margin: 0.5vw;
    border: 1px solid #b3b0b0;
    border-radius: 8px;
    box-shadow: 5px 6px 4px rgba(0, 0, 0, 0.2);
    border-color: #828991;
}

.tunnelsInfo div,
.environmentalMonitoring div,
.theFireWarning div,
.monitoringSituation div {
    line-height: 5vh;
    font-size: 14px;
}
.monitor-tunnel-number {
    background: url("../../../../assets/UM/monitor-tunnel-bg.png") no-repeat;
    background-size: 100% 100%;
}
.monitor-tunnel-overview {
    height: calc(30vh - 10px);
    overflow-y: auto;
    color: #f9f8f6;
    background: url("../../../../assets/UM/monitor-tunnel-bg.png") no-repeat;
    background-size: 100% 100%;
}
.ivu-col-span-10 {
    display: block;
    width: 33%;
    text-align: center;
}
.open-status-img,
.close-status-img {
    width: 2.1vmin;
    float: left;
}
.ivu-col-offset-2 {
    margin-left: 0;
}
</style>

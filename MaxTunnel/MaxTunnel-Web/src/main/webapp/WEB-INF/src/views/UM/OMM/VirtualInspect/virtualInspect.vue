<template>
    <div class="container">
        <div class="coolBox" style="height: 5vmin;padding: 1vmin;color: #fff;font-size: 1.66vmin;">
            <Row>
                <Col span="9">
                    <span>飞行路径：</span>
                    <Select
                        v-model="conditions.routeId"
                        style="width: 60%"
                        @on-change="getStopsList"
                    >
                        <Option value="0">全部</Option>
                        <Option
                            v-for="item in list.routes"
                            :key="item.id"
                            :value="item.id"
                        >{{item.name}}</Option>
                    </Select>
                </Col>
                <Col span="9">
                    <span>站点：</span>
                    <Select
                        v-model="conditions.stopIndex"
                        style="width: 60%"
                        @on-change="handleStopChanged"
                    >
                        <Option
                            v-for="(item,index) in list.stops"
                            :key="index"
                            :value="item.stopIndex"
                        >{{item.stopName}}</Option>
                    </Select>
                </Col>
                <Col span="6" style="text-align: right;margin-top: -0.5vmin;">
                    <Button type="primary" @click="isManual = false" class="manual">手动</Button>
                    <Button type="primary" @click="isManual = true" class="auto">自动</Button>
                    <Button type="primary" icon="compose" @click="edit" class="edit">编辑</Button>
                </Col>
            </Row>
        </div>
        <Row :gutter="20" class="mainInfo">
            <Col span="12">
                <div class="manualShowInspect coolBox">
                    <div class="options" v-if="isManual">
                        <Button type="primary" class="buttons" icon="ios-rewind" @click="speedDown"></Button>
                        <Button
                            type="primary"
                            class="buttons"
                            :icon="playOrPause.isPlay ? 'pause' : 'play' "
                            @click="play"
                        ></Button>
                        <Button type="primary" class="buttons" icon="stop" @click="stop"></Button>
                        <Button
                            type="primary"
                            class="buttons"
                            icon="ios-fastforward"
                            @click="speedUp"
                        ></Button>
                    </div>
                    <SmViewer
                        @refreshCameraPosition="refreshCameraPosition"
                        ref="smViewer"
                        :openImageryProvider="false"
                        @sendSectionDetails="getSectionDetails"
                        @showStorePosition="showStorePosition"
                    ></SmViewer>
                    <ShowSectionDetailData
                        :showDetailsModel="sectionDetail.showFlag"
                        :dataDetails="sectionDetail.data"
                    ></ShowSectionDetailData>
                    <show-store-position v-bind:currPosition="storePosition"></show-store-position>
                </div>
            </Col>
            <Col span="12">
                <div class="manualShowInspect coolBox" style="color: #fff">
                    <video-component
                        v-bind:video="curVideo"
                        :id="'vitrulInspect'+curVideo.id"
                        :index="0"
                    ></video-component>
                </div>
            </Col>
        </Row>
        <div v-if="bottomView.isShow">{{ bottomView.data }}</div>
        <Row></Row>
    </div>
</template>

<script>
import VideoComponent from "../../../../components/Common/Video/VideoComponent";
import { VideoService } from "../../../../services/videoService";
import { TunnelService } from "../../../../services/tunnelService";
import SmViewer from "../../../../components/Common/3D/simple3DViewer";
import { _getFieldValues } from "../../../../scripts/commonFun";
import showStorePosition from "../../../../components/Common/Modal/showStorePosition";
import ShowSectionDetailData from "../../../../components/Common/Modal/ShowSectionDetailData.vue";
export default {
    data() {
        return {
            conditions: {
                routeId: "0",
                stopIndex: "1,0"
            },
            SmSetting: {
                flyManagerAttr: {
                    enable: true
                }
            },
            curVideo: {
                id: 0,
                url: "",
                // "rtsp://admin:123456@192.168.3.201:554/h264/ch1/main/av_stream",
                defaultAddress: null
            },
            curPerset: null,
            list: {
                routes: null,
                stops: []
            },
            cameraPosition: null,
            playOrPause: {
                isPlay: false,
                text: "开始"
            },
            bottomView: {
                isShow: true,
                data: null
            },
            isManual: false,
            defaultOptionFlag: 0, // 0 代表全部，1代表单一
            storePosition: {
                tunnelName: "",
                areaName: "",
                storeName: ""
            },
            sectionDetail: {
                showFlag: false,
                data: []
            }
        };
    },
    mounted() {
        let data = this.$refs.smViewer.getRoutes();
        this.list.routes = data;
        this.getStopsList();
        this.Log.info("初始化调用刷新");
        this.$refs.smViewer.startCameraPositionRefresh();
    },
    components: {
        ShowSectionDetailData,
        SmViewer,
        VideoComponent,
        showStorePosition
    },
    methods: {
        getStopsList() {
            this.list.stops = this.$refs.smViewer.getStopsList(
                this.conditions.routeId
            );
            if (this.conditions.routeId == 0) {
                this.defaultOptionFlag = 0;
                this.conditions.stopIndex = "1,0";
            } else {
                this.defaultOptionFlag = 1;
                this.conditions.stopIndex = "0";
            }
            this.handleStopChanged();
        },
        handleStopChanged() {
            if (this.conditions.stopIndex != null) {
                this.$refs.smViewer.stopChanged(this.conditions.stopIndex + "");
            }
        },
        // 3D相机位置刷新
        refreshCameraPosition(position) {
            this.cameraPosition = position;
            let _this = this;
            VideoService.getVICameras(this.cameraPosition).then(result => {
                this.Log.info("get camera", result.video);
                this.Log.info("get preset", result.preset);
                if (result.video) {
                    // 如果是不同相机，则预置位更新并走到对应预置位
                    if (this.curVideo.id != result.video.id) {
                        this.curVideo = result.video;
                        this.curPerset = result.preset;
                        if (this.curPerset != null) {
                            VideoService.goToPreset(
                                _this.curVideo.id,
                                _this.curPerset
                            ).then(
                                result => {
                                    _this.Log.info("goto" + _this.curPerset);
                                },
                                error => {
                                    _this.Log.info(error);
                                }
                            );
                        }
                    } else {
                        // 如果是同一个相机，并且预置位变了
                        if (
                            this.curPerset != result.preset &&
                            result.preset != null
                        ) {
                            this.curPerset = result.preset;
                            VideoService.goToPreset(
                                _this.curVideo.id,
                                _this.curPerset
                            ).then(
                                result => {
                                    _this.Log.info("goto" + _this.curPerset);
                                },
                                error => {
                                    _this.Log.info(error);
                                }
                            );
                        }
                    }
                }
            });
            if (this.$refs.smViewer.getFlyStatus(this.conditions.routeId)) {
                this.playOrPause.isPlay = false;
            }
        },

        edit() {
            this.$router.push("/UM/virtualInspectEdit");
        },

        play() {
            if (this.playOrPause.isPlay) {
                this.$refs.smViewer.pauseFly();
            } else {
                this.$refs.smViewer.playFly();
            }
            this.playOrPause.isPlay = !this.playOrPause.isPlay;
        },

        stop() {
            this.$refs.smViewer.stopFly();
            this.playOrPause.isPlay = false;
        },

        speedUp() {
            this.Log.info("加速");
            this.$refs.smViewer.speedUp();
        },

        speedDown() {
            this.Log.info("减速");
            this.$refs.smViewer.speedDown();
        },
        showStorePosition(position) {
            this.storePosition = position;
        },
        getSectionDetails(data) {
            if (data) {
                this.sectionDetail.showFlag = true;
                this.sectionDetail.data = data.moInfo;
            } else {
                this.sectionDetail.showFlag = false;
            }
        }
    },
    beforeDestroy() {
        this.stop();
    }
};
</script>
<style scoped>
.container {
    height: 91vh;
    padding: 1vmin;
    /* background: linear-gradient(
        to bottom,
        #16a8c9 0%,
        #ffffff 50%,
        #16a8c9 100%
    ); */
}

.mainInfo {
    margin-top: 2vmin;
}

.manualShowInspect {
    border: 0.1vmin solid #ccc;
    margin: 0.4vmin;
    height: 80vh;
}

.automaticBim,
.automaticShowInspect {
    border: 0.1vmin silver solid;
    height: 77vh;
}

.btn {
    background-color: rgb(255, 255, 180, 0.5);
    padding: 0.5vmin;
    text-align: right;
}

.bim {
    margin: 0.5vmin;
}

.coolBox {
    border: 1px solid rgba(0, 0, 0, 0.2);
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    background-clip: padding-box;
    background: rgba(36, 40, 42, 0.5);
    box-shadow: 0 0 1.3vmin 0.3vmin rgba(0, 0, 0, 0.5);
    /*overflow: hidden;*/
}
.options {
    z-index: 10;
    position: absolute;
    top: 0;
    left: 32%;
}
.buttons {
    margin: auto 1vmin;
}

.coolBox >>> .ivu-select-selected-value {
    font-size: 1.6vmin !important;
    line-height: 1.8vmin !important;
    height: 2.2vmin !important;
    padding-top: 0.4vmin !important;
    width: 100% !important;
}
.coolBox >>> .ivu-select-selection {
    height: 2.4vmin;
    background: transparent;
    color: #fff;
}
.coolBox >>> .ivu-select-dropdown {
    max-height: 20vmin !important;
}
.coolBox >>> .positionInformation {
    font-size: 1vmin;
    width: 20%;
    right: 6%;
}
.manual {
    background-color: -webkit-linear-gradient(left, #7c83f2, #2734e1);
    background: -o-linear-gradient(right, #7c83f2, #2734e1);
    background: -moz-linear-gradient(right, #7c83f2, #2734e1);
    background: linear-gradient(to right, #7c83f2, #2734e1);
    border-color: #3e4f61;
    border-radius: 1vmin;
}
.auto {
    background-color: -webkit-linear-gradient(left, #dcd77c, #cabf11);
    background: -o-linear-gradient(right, #dcd77c, #cabf11);
    background: -moz-linear-gradient(right, #dcd77c, #cabf11);
    background: linear-gradient(to right, #dcd77c, #cabf11);
    border-color: #3e4f61;
    border-radius: 1vmin;
}
.edit {
    background-color: -webkit-linear-gradient(left, #bcdca9, #6be421);
    background: -o-linear-gradient(right, #bcdca9, #6be421);
    background: -moz-linear-gradient(right, #bcdca9, #6be421);
    background: linear-gradient(to right, #bcdca9, #6be421);
    border-color: #3e4f61;
    border-radius: 1vmin;
}
.section-details-content {
    left: 30vmin;
}
</style>

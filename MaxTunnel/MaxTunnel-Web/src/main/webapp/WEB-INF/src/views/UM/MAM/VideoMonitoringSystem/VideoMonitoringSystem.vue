<template>
    <div>
        <ModulePage v-bind="VideoMonitoring"></ModulePage>
    </div>
</template>

<script>
import ModulePage from "../../../../components/Common/ModulePage";
import { TunnelService } from "../../../../services/tunnelService";
export default {
    name: "UM_main",
    components: { ModulePage },
    data() {
        return {
            VideoMonitoring: {
                moduleName: "视频监控系统",
                leftTree: [],
                selected: [0, 0]
            },
            treeNodeJumpUrl: "/UM/VideoMonitoring/details/"
        };
    },
    created() {
        this.VideoMonitoring.leftTree = [];
        let _this = this;
        TunnelService.getTunnels().then(
            result => {
                result.forEach(a => {
                    let temp = {};
                    temp.id = a.id;
                    temp.name = a.name;
                    temp.url = "/UM/VideoMonitoring/details/" + a.id;

                    // var child=[
                    //             {id:2,name: '详情', url: '/UM/VideoMonitoring/details/'+a.id}];
                    //             temp.childNode= child;
                    _this.VideoMonitoring.leftTree.push(temp);
                });
                _this.VideoMonitoring.leftTree.push({
                    id:
                        _this.VideoMonitoring.leftTree[result.length - 1].id +
                        1,
                    name: "历史记录",
                    url: "/UM/VideoMonitoring/historyPhotos"
                });
                if (
                    !sessionStorage["refreshAddress"] ||
                    sessionStorage["refreshAddress"].indexOf(
                        "/UM/VideoMonitoring"
                    ) < 0
                ) {
                    _this.goToMoudle({
                        path: _this.VideoMonitoring.leftTree[0].url
                    });
                    sessionStorage.setItem("selectedName", "");
                    _this.clearStateParams();
                }
                // sessionStorage.setItem("refreshAddress", "");
            },
            error => {
                console.log(error);
            }
        );
    },
    methods: {
        goToMoudle(path) {
            this.$router.push(path);
        },
        clearStateParams() {
            let data = {
                storeId: null,
                areaId: null,
                videoNum: 4
            };
            this.$store.commit("setVideoDetailParams", data);
        }
    }
};
</script>
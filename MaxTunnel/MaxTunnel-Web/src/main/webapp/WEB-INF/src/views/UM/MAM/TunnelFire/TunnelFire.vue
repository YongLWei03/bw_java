<template>
    <ModulePage v-bind="curModule"></ModulePage>
</template>

<script>
import ModulePage from "../../../../components/Common/ModulePage";
import { TunnelService } from "../../../../services/tunnelService";

export default {
    name: "tunnel-environment",
    data() {
        return {
            curModule: {
                moduleName: "管廊消防监控",
                leftTree: [],
                selected: [0, -1]
            }
        };
    },
    components: {
        ModulePage
    },
    created() {
        this.curModule.leftTree = [];
        let _this = this;

        TunnelService.getTunnels().then(
            result => {
                result.forEach(a => {
                    let temp = {};
                    temp.id = a.id;
                    temp.name = a.name;
                    temp.childNode = [
                        {
                            id: 21,
                            name: "监测总览",
                            url: "/UM/TunnelFire/list/" + a.id
                        },
                        {
                            id: 22,
                            name: "监测详情",
                            url: "/UM/TunnelFire/details/" + a.id
                        }
                    ];
                    _this.curModule.leftTree.push(temp);
                });
                if (
                    !sessionStorage["refreshAddress"] ||
                    sessionStorage["refreshAddress"].indexOf("/UM/TunnelFire") <
                        0
                ) {
                    _this.goToMoudle({
                        path: _this.curModule.leftTree[0].childNode[0].url
                    });

                    sessionStorage.setItem("selectedName", "");
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
        }
    }
};
</script>
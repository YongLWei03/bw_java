<template>
    <ModulePage v-bind="curModule"></ModulePage>
</template>

<script>
    import ModulePage from '../../../../components/Common/ModulePage'
    import {
        TunnelService
    } from '../../../../services/tunnelService'

    export default {
        name: "tunnel-environment",
        data() {
            return {
                curModule: {
                    moduleName: "管廊管线监控",
                    leftTree: [],
                    selected: [0, -1]
                },
                treeNodeJumpUrl: "/UM/TunnelPipeline/list/",
            }
        },
        components: {
            ModulePage
        },
        created() {
            console.log('你猜我走了几次')
            this.curModule.leftTree = [];
            let _this = this;

            TunnelService.getTunnels().then(
                (result) => {
                    result.forEach(a => {
                        let temp = {};
                        temp.id = a.id;
                        temp.name = a.name;
                        temp.childNode = [{
                                id: 21,
                                name: "监测总览",
                                url: "/UM/TunnelPipeline/list/" + a.id,
                            },
                            {
                                id: 22,
                                name: "监测详情",
                                url: "/UM/TunnelPipeline/details/" + a.id,
                            }
                        ];
                        _this.curModule.leftTree.push(temp);
                    })
                    if (sessionStorage["refreshAddress"] == "" || sessionStorage["refreshAddress"].indexOf(
                            "/UM/TunnelPipeline") < 0) {
                        _this.goToMoudle({
                            path: _this.curModule.leftTree[0].childNode[0].url
                        });
                        sessionStorage.setItem('selectedName', '')
                    }
                    sessionStorage.setItem("refreshAddress", "");
                },
                (error) => {
                    console.log(error)
                })
        },
        methods: {
            goToMoudle(path) {
                this.$router.push(path);
            }
        }
    };
</script>
<template>
    <div>
        <ModulePage v-bind="myNews"></ModulePage>
    </div>
</template>

<script>
import ModulePage from "../../../../components/Common/ModulePage";
export default {
    name: "UM_main",
    components: { ModulePage },
    data() {
        return {
            myNews: {
                moduleName: "我的消息",
                leftTree: [
                    {
                        id: 1,
                        name: "我的待办",
                        url: "/UM/myNews/queryMyTask"
                    },
                    {
                        id: 2,
                        name: "我的告警",
                        url: ""
                    }
                ],
                selected: [0, -1]
            },
            treeNodeJumpUrl: "/UM/myNews/queryMyTaske"
        };
    },
    created() {
        if (
            !sessionStorage["refreshAddress"] ||
            sessionStorage["refreshAddress"].indexOf("/UM/myNews") < 0
        ) {
            this.goToMoudle({ path: this.myNews.leftTree[0].url });
            sessionStorage.setItem("selectedName", "");
        }
        // sessionStorage.setItem("refreshAddress", "");
    },
    methods: {
        goToMoudle(path) {
            this.$router.push(path);
        }
    }
};
</script>
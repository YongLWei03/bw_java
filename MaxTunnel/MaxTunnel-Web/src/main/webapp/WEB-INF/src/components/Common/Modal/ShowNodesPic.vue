<template>
    <div>
        <Modal
            :styles="{top: '8vmin'}"
            width="30vw;"
            style="z-index: 1001; "
            v-model="nodesModal.showFlag"
            title="执行日志"
            class="processModal"
        >
            <div style="height: 70vmin">
                <image-from-url :url="nodesModal.imgUrl"></image-from-url>
            </div>
            <div slot="footer">
                <Button type="parimay" @click="confirmPlan()">确定</Button>
            </div>
        </Modal>
    </div>
</template>

<script>
import ImageFromUrl from "../ImageFromUrl";

export default {
    name: "show-nodes-pic",
    props: {
        nodesModal: {
            showFlag: {
                required: true,
                type: Boolean
            },
            imgUrl: {
                required: true,
                type: String
            }
        }
    },
    data() {
        return {};
    },
    computed: {},
    methods: {
        confirmPlan() {
            this.$emit("confirmPlan", false);
        }
    },
    watch: {},
    mounted() {},
    components: { ImageFromUrl }
};
</script>

<style scoped>
.processModal >>> .ivu-modal-body {
    max-height: 76vh;
}
</style>

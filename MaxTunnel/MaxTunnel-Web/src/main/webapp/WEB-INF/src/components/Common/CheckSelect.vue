<template>
    <div>
        <ButtonGroup>
            <Button
                style="font-size:1.22vmin;height:3.5vmin;"
                :disabled="lastDisabled"
                @click="setLast"
                type="success"
                icon="ios-skipbackward"
            >上一列</Button>
            <Button
                :key="key"
                v-for="(item,key) in curList"
                :class="['selectButtons',{select_radio:clickId==item.id}]"
                :label="item.id"
                @click="choose($event)"
            >{{item.name}}</Button>

            <Button
                type="success"
                icon="ios-skipforward"
                style="font-size:1.22vmin;height:3.5vmin;"
                :disabled="nextDisabled"
                @click="setNext"
            >下一列</Button>
        </ButtonGroup>
    </div>
</template>

<script>
export default {
    name: "check-select",
    props: {
        dataList: {
            type: Array,
            default: () => {
                return [];
            }
        },
        selectObj: {
            type: Object,
            default: () => {
                return {
                    selectId: ""
                };
            }
        },
        itemLen: {
            type: Number,
            default: 10
        }
    },
    data() {
        return {
            clickId: "",
            lastDisabled: true,
            nextDisabled: false,
            startIndex: 0,
            endIndex: 10,
            curList: []
        };
    },
    methods: {
        choose(e) {
            let _this = this;
            let temp = e.target.innerHTML;
            _this.dataList.forEach(a => {
                if (a.name == temp) {
                    _this.clickId = a.id;
                }
            });
            this.$emit("toParent", this.clickId);
        },
        setLast() {
            if (this.startIndex > 0) {
                this.startIndex -= this.itemLen;
                this.endIndex -= this.itemLen;
                if (this.startIndex < 0) {
                    this.startIndex = 0;
                }
                if (this.endIndex < this.itemLen) {
                    this.endIndex = this.itemLen;
                }
                if (this.startIndex == 0) {
                    this.lastDisabled = true;
                }
                this.nextDisabled = false;
            } else {
                this.lastDisabled = true;
            }
            this.setcurList();
        },

        setcurList() {
            let _this = this;
            _this.curList = _this.dataList.slice(
                _this.startIndex,
                _this.endIndex
            );
        },
        setNext() {
            if (this.endIndex < this.dataList.length) {
                this.startIndex += this.itemLen;
                this.endIndex += this.itemLen;
                if (this.endIndex > this.dataList.length) {
                    this.endIndex = this.dataList.length;
                }
                if (this.endIndex == this.dataList.length) {
                    this.nextDisabled = true;
                }
                this.lastDisabled = false;
            } else {
                this.nextDisabled = true;
            }
            this.setcurList();
        }
    },
    mounted() {},
    watch: {
        dataList: {
            handler: function(newVal, oldVal) {
                if (newVal.length > 0) {
                    if (
                        this.selectObj.selectId != null ||
                        this.selectObj.selectId != undefined ||
                        this.selectObj.selectId != ""
                    ) {
                        this.clickId = this.selectObj.selectId;
                    } else {
                        this.clickId = this.dataList[0].value;
                    }
                    this.startIndex = 0;
                    this.endIndex = this.itemLen;
                    this.curList = this.dataList.slice(0, this.endIndex);
                }
            },
            deep: true
        }
    }
};
</script>

<style scoped>
.select_radio {
    background: #869bcb !important;
    background-position: 0 -15px;
}
.selectButtons,
.ivu-btn-success[disabled],
.ivu-btn-success  {
    font-size: 1.22vmin;
    height: 3.5vmin;
    color: #fff;
    background: transparent;
    border: 1px solid #59b4e3;
    border-right: none;
    box-shadow: 0px 0px 0.1px 0.1px rgba(89, 180, 227, 0.5);
}
.ivu-btn-success {
    border-right: 1px solid #59b4e3;
}

</style>

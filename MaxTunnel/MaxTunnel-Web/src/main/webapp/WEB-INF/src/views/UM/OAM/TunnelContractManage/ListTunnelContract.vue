<template>
    <div class="allDiv">
        <div class="queryCondition">
            <Row>
                <Col span="6">
                    <span class="conditionTitle">合同编号：</span>
                    <Input v-model="conditions.contractId" placeholder="请输入合同编号" style="width: 60%"></Input>
                </Col>
                <Col span="6">
                    <span class="conditionTitle">合同名称：</span>
                    <Input
                        v-model="conditions.contractName"
                        placeholder="请输入合同名称"
                        style="width: 60%"
                    ></Input>
                </Col>
                <Col span="6">
                    <span class="conditionTitle">付款方式：</span>
                    <Select v-model="conditions.payment" style="width: 60%" id="payment">
                        <Option value="null">所有</Option>
                        <Option
                            v-for="(item,index) in selectList.payType"
                            :key="index"
                            :value="item.val"
                        >{{item.key}}</Option>
                    </Select>
                </Col>
                <Col span="6">
                    <span class="conditionTitle">合同状态：</span>
                    <Select v-model="conditions.contractStatus" style="width: 60%">
                        <Option value="null">所有</Option>
                        <Option
                            v-for="(item,index) in selectList.contractStatus"
                            :key="index"
                            :value="item.val"
                        >{{item.key}}</Option>
                    </Select>
                </Col>
                <Col span="6">
                    <span class="conditionTitle">开始时间：</span>
                    <DatePicker
                        type="datetime"
                        placeholder="请选择开始时间"
                        style="width: 60%"
                        v-model="conditions.startTime"
                    ></DatePicker>
                </Col>
                <Col span="6">
                    <span class="conditionTitle">结束时间：</span>
                    <DatePicker
                        type="datetime"
                        placeholder="请选择结束时间"
                        style="width: 60%"
                        v-model="conditions.endTime"
                    ></DatePicker>
                </Col>
                <Col span="6">
                    <Poptip placement="bottom">
                        <span class="conditionTitle">企业客户：</span>
                        <Input v-model="customerName" placeholder="请选择客户" id="cusInput"/>
                        <div class="pop" slot="content">
                            <customer-choose
                                @selectCustomer="getcompanyId"
                                v-bind:companyId="conditions.companyId"
                            ></customer-choose>
                        </div>
                    </Poptip>
                </Col>
                <Col span="6">
                    <Button type="primary" @click="resetPageAndSearch" icon="ios-search">查询</Button>
                </Col>
            </Row>
        </div>
        <div class="list">
            <Tabs value="card">
                <TabPane label="卡片" name="card">
                    <div class="nullData" v-show="isNullData">暂无数据</div>
                    <Row class="cardStyle">
                        <Col span="6" v-for="(item,index) in contractList" :key="index">
                            <div class="contracts">
                                <div
                                    style="display: table-cell;vertical-align: middle;text-align: center;"
                                >
                                    <div class="contractName" @click="edit(index)">
                                        <span>{{item.name}}</span>
                                    </div>
                                    <div class="contactInfo">
                                        <div class="item">
                                            <div class="title">公司：</div>
                                            <div class="info">{{ item.companyName }}</div>
                                        </div>
                                        <div class="item">
                                            <div class="title">联系方式：</div>
                                            <div class="info">{{ item.tel }}</div>
                                        </div>
                                        <div class="item">
                                            <div class="title">合同状态：</div>
                                            <div
                                                :class="['info',{'red': item.contractStatus === '过期'}]"
                                            >{{ item.contractStatus }}</div>
                                        </div>
                                        <div class="item">
                                            <div class="title">创建时间：</div>
                                            <div class="info">{{ item.crtTime }}</div>
                                        </div>
                                        <div class="item">
                                            <div class="title">付款方式：</div>
                                            <div class="info">{{ item.payType }}</div>
                                        </div>
                                    </div>
                                    <div>
                                        <Button size="small" @click="edit(index)" class="edit">编辑</Button>
                                        <Button size="small" @click="read(index)" class="read">详情</Button>
                                        <Button size="small" @click="del(item.id)" class="del">删除</Button>
                                    </div>
                                </div>
                            </div>
                        </Col>
                    </Row>
                </TabPane>
                <TabPane label="表格" name="table" class="table">
                    <Table :columns="contractColumn" :data="contractData" :height="tableHeight"></Table>
                </TabPane>
            </Tabs>
        </div>
        <!-- <div class="page"> -->
        <Page
            :total="page.pageTotal"
            :current="page.pageNum"
            :page-size-opts="[8,16,24]"
            :page-size="page.pageSize"
            show-sizer
            show-total
            placement="top"
            @on-change="handlePage"
            @on-page-size-change="handlePageSize"
            show-elevator
            :style="pageStyle"
        ></Page>
        <!-- </div> -->
    </div>
</template>

<script>
import { EnumsService } from "../../../../services/enumsService";
import { ContractService } from "../../../../services/contractService";
import types from "../../../../../static/Enum.json";
import CustomerChoose from "../../../../components/UM/OAM/CustomerChoose";
export default {
    data() {
        return {
            page: {
                pageNum: 1,
                pageSize: 8,
                pageTotal: 0
            },
            contractList: [],
            conditions: {
                payment: null,
                contractId: null,
                contractName: null,
                startTime: null,
                endTime: null,
                companyId: null,
                contractStatus: null
            },
            selectList: {
                payType: [],
                contractStatus: []
            },
            customer: [],
            customerName: "",
            pageStyle: {
                position: "absolute",
                bottom: "1vmin",
                right: "2.5vmin",
                color: "#fff"
            },
            contractIds: [],
            isNullData: false,
            contractColumn: [
                {
                    title: "合同名称",
                    key: "name",
                    align: "center"
                },
                {
                    title: "企业名称",
                    align: "center",
                    render: (h, params) => {
                        return h("div", {}, params.row.company.name);
                    }
                },
                {
                    title: "联系方式",
                    align: "center",
                    render: (h, params) => {
                        return h("div", params.row.company.phone);
                    }
                },
                {
                    title: "合同状态",
                    key: "contractStatusName",
                    align: "center"
                },
                {
                    title: "付款方式",
                    key: "payTypeName",
                    align: "center"
                },
                {
                    title: "创建时间",
                    align: "center",
                    render: (h, params) => {
                        return h(
                            "div",
                            new Date(params.row.crtTime).format(
                                "yyyy-MM-dd hh:mm:ss"
                            )
                        );
                    }
                },
                {
                    title: "操作",
                    align: "center",
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "Button",
                                {
                                    class: "edit",
                                    props: {
                                        type: "error",
                                        size: "small"
                                    },
                                    style: {
                                        marginRight: "0.4vmin"
                                    },
                                    on: {
                                        click: () => {
                                            this.edit(params.index);
                                        }
                                    }
                                },
                                "编辑"
                            ),
                            h(
                                "Button",
                                {
                                    class: "read",
                                    props: {
                                        type: "error",
                                        size: "small"
                                    },
                                    style: {
                                        marginRight: "0.4vmin"
                                    },
                                    on: {
                                        click: () => {
                                            this.read(params.index);
                                        }
                                    }
                                },
                                "详情"
                            ),
                            h(
                                "Button",
                                {
                                    class: "del",
                                    props: {
                                        type: "error",
                                        size: "small"
                                    },
                                    on: {
                                        click: () => {
                                            this.del(params.row.id);
                                        }
                                    }
                                },
                                "删除"
                            )
                        ]);
                    }
                }
            ],
            contractData: [],
            tableHeight: 600
        };
    },
    components: { CustomerChoose },
    computed: {
        params() {
            let param = {
                pageNum: this.page.pageNum,
                pageSize: this.page.pageSize,
                id: this.conditions.contractId
                    ? this.conditions.contractId
                    : null,
                name: this.conditions.contractName,
                startTime: new Date(this.conditions.startTime).getTime(),
                endTime: new Date(this.conditions.endTime).getTime(),
                companyId: this.conditions.companyId,
                payType: this.conditions.payment,
                contractStatus: this.conditions.contractStatus
            };
            return Object.assign({}, param);
        }
    },
    mounted() {
        this.tableHeight = (window.innerHeight / 100) * 60;
        this.initData();
        this.search();
        this.$nextTick(() => {
            let width = document.getElementById("payment").offsetWidth;
            document.getElementById("cusInput").style.width = width + "px";
        });
        window.onresize = function() {
            let width = document.getElementById("payment").offsetWidth;
            document.getElementById("cusInput").style.width = width + "px";
        };
    },
    methods: {
        initData() {
            let _this = this;
            EnumsService.getPayType().then(
                result => {
                    _this.selectList.payType = result;
                },
                error => {
                    _this.Log.info(error);
                }
            );
            EnumsService.getContractStatus().then(
                result => {
                    _this.selectList.contractStatus = result;
                },
                error => {
                    _this.Log.info(error);
                }
            );
        },
        resetPageAndSearch() {
            this.page.pageNum = 1;
            this.search();
        },
        search() {
            if (!this.customerName && this.conditions.companyId) {
                this.conditions.companyId = null;
            }
            let _this = this;
            if (
                new Date(_this.conditions.startTime) >
                new Date(_this.conditions.endTime)
            ) {
                _this.$Message.error("开始时间必须小于结束时间！");
                return;
            }
            ContractService.contractDatagrid(_this.params).then(result => {
                _this.contractList = [];
                _this.contractData = result.list;
                if (!result.list.length) {
                    _this.isNullData = true;
                } else {
                    _this.isNullData = false;
                }
                result.list.forEach(a => {
                    _this.contractList.push({
                        id: a.id,
                        companyName: a.company.name,
                        name: a.name,
                        contact: a.company.mail,
                        tel: a.company.phone,
                        payType: a.payTypeName,
                        contractStatus: a.contractStatusName,
                        contractStartTime: new Date(a.contractStartTime).format(
                            "yyyy-MM-dd"
                        ),
                        contractEndTime: new Date(a.contractEndTime).format(
                            "yyyy-MM-dd"
                        ),
                        crtTime: new Date(a.crtTime).format(
                            "yyyy-MM-dd hh:mm:ss"
                        )
                    });
                    _this.contractIds.push(a.id);
                    _this.page.pageTotal = result.total;
                });
            });
        },
        goToMoudle(path) {
            this.$router.push(path);
        },
        goMoudle(index, type) {
            if (type == 2) {
                this.$router.push({
                    name: "编辑合同",
                    params: {
                        contractIds: this.contractIds,
                        curIndex: index,
                        type: type
                    }
                });
            } else if (type == 1) {
                this.$router.push({
                    name: "合同详情",
                    params: {
                        contractIds: this.contractIds,
                        curIndex: index,
                        type: type
                    }
                });
            }
        },
        read(index) {
            this.goMoudle(index, types.pageType.Read);
        },
        edit(index) {
            this.goMoudle(index, types.pageType.Edit);
        },
        del(id) {
            this.$Modal.confirm({
                title: "合同信息",
                content: "<p>确定删除吗？</p>",
                onOk: () => {
                    let _this = this;
                    ContractService.delelteContract(id).then(
                        result => {
                            _this.resetPageAndSearch();
                        },
                        error => {
                            _this.Log.info(error);
                        }
                    );
                }
            });
        },
        handlePage(value) {
            this.page.pageNum = value;
            this.search();
        },
        handlePageSize(value) {
            this.page.pageSize = value;
            this.resetPageAndSearch();
        },
        getcompanyId(data) {
            this.conditions.companyId = data.id;
            this.customerName = data.name.toString();
        }
    }
};
</script>

<style scoped>
.allDiv {
    padding-bottom: 0;
}
.list {
    margin-top: 10px;
    padding: 20px 0 24px 0;
}
.pop {
    max-height: 300px;
    overflow-y: auto;
}
.contracts {
    /* border: 1px solid #dddfe1;*/
    width: 90%;
    height: 30vh;
    margin: 10px auto;
    border-radius: 4px;
    position: relative;
    background-image: url("../../../../assets/UM/companyBg.png");
    background-size: 100% 100%;
    display: table;
}
.option {
    position: absolute;
    top: 1.66vmin;
    right: 1.66vmin;
}
.contractName {
    text-align: center;
    padding: 20px 0 10px 0;
    font-size: 2vmin;
    font-weight: bold;
    color: rgb(252, 252, 255);
    cursor: pointer;
}
.red {
    color: rgb(255, 102, 0);
}
.cable {
    text-align: center;
    background-color: rgb(245, 245, 245);
    padding: 4px 0 4px 0;
}
.ivu-poptip {
    width: 100%;
}
#cusInput {
    width: 60%;
}
.del,
.table >>> .ivu-btn:last-child {
    background-color: -webkit-linear-gradient(left, #e49b9b, #f61a1a);
    background: -o-linear-gradient(right, #e49b9b, #f61a1a);
    background: -moz-linear-gradient(right, #e49b9b, #f61a1a);
    background: linear-gradient(to right, #e49b9b, #f61a1a);
}
.edit,
.table >>> .ivu-btn:first-child {
    background-color: -webkit-linear-gradient(left, #7c83f2, #2734e1);
    background: -o-linear-gradient(right, #7c83f2, #2734e1);
    background: -moz-linear-gradient(right, #7c83f2, #2734e1);
    background: linear-gradient(to right, #7c83f2, #2734e1);
}
.read,
.table >>> .ivu-btn:nth-child(2) {
    background-color: -webkit-linear-gradient(left, #dcd77c, #cabf11);
    background: -o-linear-gradient(right, #dcd77c, #cabf11);
    background: -moz-linear-gradient(right, #dcd77c, #cabf11);
    background: linear-gradient(to right, #dcd77c, #cabf11);
}
.del,
.read,
.edit,
.table >>> .ivu-btn:last-child,
.table >>> .ivu-btn:first-child,
.table >>> .ivu-btn:nth-child(2) {
    border-color: #3e4f61;
    border-radius: 1vmin;
    font-size: 1.4vmin !important;
    color: #fff;
    margin: 0.6vmin 1vmin;
}

.item {
    margin: 10px;
}
.title {
    color: rgb(223, 223, 241);
    display: inline-block;
    font-size: 1.66vmin;
    width: 38%;
    text-align: right;
}
.info {
    display: inline-block;
    color: rgb(234, 234, 243);
    font-size: 1.66vmin;
    width: 60%;
}

.queryCondition >>> .ivu-poptip-popper {
    width: 100vmin;
}

.queryCondition span {
    font-size: 1.66vmin;
}

.queryCondition >>> .ivu-input {
    height: 3.2vmin;
    font-size: 1.28vmin;
}
/*日期选择*/
.queryCondition >>> .ivu-date-picker-header {
    height: 3.2vmin;
    line-height: 3.2vmin;
}

.queryCondition >>> .ivu-picker-panel-icon-btn {
    font-size: 1.66vmin;
    width: 1.28vmin;
    height: 2.5vmin;
}

.queryCondition >>> .ivu-date-picker-header-label {
    font-size: 1.66vmin;
}

/* table style & table-buttom style(.ivu-btn-primary .ivu-btn-info) */
.list .ivu-table-wrapper >>> .ivu-table {
    color: #ffffff !important;
    background-color: #fffdfd00 !important;
}
.list .ivu-table-wrapper >>> .ivu-table:before,
.list .ivu-table-wrapper >>> .ivu-table:after {
    background-color: #fffdfd00 !important;
}
.list .ivu-table-wrapper >>> .ivu-table th,
.ivu-table-wrapper >>> .ivu-table td {
    background-color: #fffdfd00 !important;
    border-bottom: 1px solid #7d7d7d;
}
.list .ivu-table-wrapper >>> .ivu-btn-primary,
.ivu-table-wrapper >>> .ivu-btn-info {
    background: linear-gradient(to bottom right, #6952dd, #2d0dd3) !important;
    border: none;
}

.ivu-page >>> .ivu-page-total,
.ivu-page >>> .ivu-page-options-elevator,
.ivu-tabs {
    color: #fff;
}

.list {
    background: url("../../../../assets/UM/infoBox.png") no-repeat;
    background-size: 100% 100%;
    padding: 1%;
}
.ivu-table-wrapper >>> .ivu-table-overflowY {
    overflow-x: hidden;
}

.cardStyle {
    overflow-x: hidden;
    overflow-y: auto;
    height: 60vh;
}
.ivu-table-wrapper >>> .ivu-table-overflowY::-webkit-scrollbar,
.cardStyle::-webkit-scrollbar {
    width: 0.4vmin;
    height: 0.4vmin;
}
.ivu-table-wrapper >>> .ivu-table-overflowY::-webkit-scrollbar-thumb,
.cardStyle::-webkit-scrollbar-thumb {
    border-radius: 1vmin;
    box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
    background: #83a6ed;
}
.ivu-table-wrapper >>> .ivu-table-overflowY::-webkit-scrollbar-track,
.cardStyle::-webkit-scrollbar-track {
    box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
    border-radius: 1vmin;
    background: #ededed;
}

@media (min-width: 1921px) {
    .queryCondition >>> .ivu-date-picker-cells {
        width: 15vmin;
        font-size: 1.66vmin;
    }

    .queryCondition >>> .ivu-date-picker-cells-cell {
        width: 2vmin;
    }
    .queryCondition >>> .ivu-date-picker-cells-header span {
        padding-right: 2.5rem;
    }
}

/*下拉框*/
.queryCondition >>> .ivu-select-selection {
    height: 3.2vmin !important;
}

.queryCondition >>> .ivu-select-placeholder,
.ivu-select-selected-value {
    font-size: 1.28vmin !important;
    padding-top: 0.4vmin !important;
    height: 2.6vmin !important;
    line-height: 2vmin !important;
}
.queryCondition >>> .ivu-select-dropdown {
    max-height: 30vmin;
}
.queryCondition >>> .ivu-poptip-inner {
    background-color: #485463;
}
.page >>> .ivu-select-selection {
    height: 3.2vmin !important;
}
.page >>> .ivu-select-selected-value,
.ivu-select-placeholder {
    font-size: 1.2vmin !important;
    height: 3vmin !important;
    line-height: 3vmin !important;
}
.page >>> .ivu-page-options-elevator input {
    font-size: 1.2vmin;
    height: 3vmin;
}
.page >>> .ivu-page-options-elevator {
    display: inline-block;
    height: 3.2vmin;
    line-height: 3.2vmin;
}
.page >>> .ivu-page-next {
    height: 3.2vmin;
    line-height: 3vmin;
}
.page >>> .ivu-page-next .ivu-icon {
    font-size: 1.6vmin;
}
.page >>> .ivu-page-prev {
    height: 3.2vmin;
    line-height: 3vmin;
}
.page >>> .ivu-page-prev .ivu-icon {
    font-size: 1.6vmin;
}
</style>


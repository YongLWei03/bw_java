<template>
    <div class="allDiv">
        <Row class="conditions">
            <Col span="4">
                <span class="conditionTitle">缺陷类型：</span>
                <Select v-model="conditions.type" style="width: 60%">
                    <Option value=null key="0">所有</Option>
                    <Option v-for="item in defectType" :value="item.val" :key="item.value">{{ item.key }}</Option>
                </Select>
            </Col>
            <Col span="4">
                <span class="conditionTitle">缺陷状态：</span>
                <Select v-model="conditions.status" style="width: 60%">
                    <Option value=null key="0">所有</Option>
                    <Option v-for="item in defectStatus" :value="item.val" :key="item.value">{{ item.key }}</Option>
                </Select>
            </Col>
            <Col span="4">
                <span class="conditionTitle">危险等级：</span>
                <Select v-model="conditions.level" style="width: 60%">
                    <Option value=null key="0">所有</Option>
                    <Option v-for="item in defectLevel" :value="item.val" :key="item.value">{{ item.key }}</Option>
                </Select>
            </Col>
            <Col span="4">
                <span class="conditionTitle">开始时间：</span>
                <DatePicker type="datetime" v-model="conditions.startTime" placeholder="请输入开始时间" style="width: 65%"></DatePicker>
            </Col>
            <Col span="4">
                <span class="conditionTitle">结束时间：</span>
                <DatePicker type="datetime" v-model="conditions.endTime" placeholder="请输入结束时间" style="width: 65%"></DatePicker>
            </Col>
            <Col span="4">
                <Button type="primary" icon="ios-search" @click="queryCondition()">查询</Button>
                <Button type="primary" icon="plus-round" @click="goToModule3">添加</Button>
            </Col>
        </Row>
        <div class="list">
            <Table :columns='columns' :data="defects" :height="tableHeight"></Table>
        </div>
        <Page :total="page.pageTotal" :current="page.pageNum" :page-size="page.pageSize" show-sizer show-total
        placement="top" @on-change="handlePage" @on-page-size-change='handlePageSize' show-elevator :style='pageStyle'></Page>
    </div>
</template>

<script>
import { TunnelService } from '../../../../services/tunnelService'
import { DefectService } from '../../../../services/defectService'
import { EnumsService } from '../../../../services/enumsService'
import Enum from '../../../../../static/Enum.json'
export default {
    name:"queryDefect",
    data() {
        return {
            columns:[
                {
                    type: 'index',
                    width: 60,
                    align: 'center'
                },
                {
                    title:"所属区段",
                    align: 'center',
                    render: (h,params) =>{
                        let temp = params.row.area.name
                        if(temp!=undefined){
                            return h('span',params.row.area.name)
                        }
                    }
                },
                {
                    title:"所属管仓",
                    align: 'center',
                    render: (h,params) => {
                        let temp = params.row.store.name
                        if(temp!=undefined){
                            return h('span',params.row.store.name)
                        }
                    }
                },
                {
                    title: '缺陷名称',
                    align: 'center',
                    key: 'name'
                },
                {
                    title:"发现时间",
                    key:"createTime",
                    align: 'center',
                    render: (h, params) => {
                        return h(
                        "div",
                        new Date(params.row.createTime).format("yyyy-MM-dd hh:mm:s")
                        );
                    }
                },
                {
                    title:"缺陷类型",
                    key:"typeName",
                    align: 'center'
                },
                {
                    title:"对象名",
                    key:"objName",
                    align: 'center',
                    render: (h,params) =>{
                        let temp = ''
                        if(params.row.type==2){
                            temp = params.row.objName
                        }else if(params.row.type==1){
                            temp = '无'
                        }
                        return h('div',temp)
                    }
                },
                {
                    title:"危险等级",
                    key:"levelName",
                    align: 'center',
                    render: (h,params) => {
                        return h(
                            'div',
                            {
                                style:{
                                    color:
                                       params.row.level==0 ? 'green'
                                       :  params.row.level==1 ? 'blue'
                                       :  params.row.level==2 ? 'orange'
                                       :  'red'

                                }
                            },params.row.levelName
                        )
                    }
                },
                {
                    title:"缺陷状态",
                    key:"statusName",
                    align: 'center'
                },
                {
                    title:"操作",
                    key:"action",
                    align:'center',
                    width: window.innerWidth*0.15,
                    render:(h, params) => {
                        return h('div', [
                            h('Button', {
                                props: {
                                    type: 'primary',
                                    size: 'small'
                                },
                                style: {
                                    marginRight: '5px'
                                },
                                on: {
                                    click: () => {
                                        this.enterOrder(params.index)
                                    }
                                }
                            }, '查看'),
                             h('Button',{
                                props: {
                                    type: 'info',
                                    size: 'small'
                                },
                                class: 'btnOrder',
                                on: {
                                    click: ()=> {
                                        this.queryDetails(params.index)
                                    }
                                }
                            },'查看维修工单')
                        ]);
                    }
                }
            ],
            defects:[],
            tunnels: [],
            defectType: [],
            defectLevel: [],
            defectStatus: [],
            conditions:{
                tunnelId: null,
                type: null,
                level: null,
                status: null,
                startTime: null,
                endTime: null,
            },
            pageStyle: {
                position: 'absolute',
                bottom: '1vmin',
                right: '2vmin'
            },
            page:{
                pageTotal: null,
                pageSize: 10,
                pageNum: 1
            },
            tableHeight: 600,
            tunnelId: null
        }
    },
    watch:{
        '$route': function () {
            //2. $route发生变化时再次赋值planId
            this.tunnelId = this.$route.params.id;
            this.tunnels.forEach(a => {
                if (a.id == this.tunnelId) {
                    this.queryCondition();
                }
            });
        },
    },
    computed: {
        params() {
        let param = {
            pageNum: this.page.pageNum,
            pageSize: this.page.pageSize,
            startTime: this.conditions.startTime,
            endTime: this.conditions.endTime,
            type: this.conditions.type,
            level: this.conditions.level,
            status: this.conditions.status,
            tunnelId: this.$route.params.id
        };
        return Object.assign({}, param);
        }
    },
    mounted(){
        let _this = this
        _this.tableHeight = window.innerHeight/100*67
        //从数据库读取select的option选项
        TunnelService.getTunnels().then(
            (result)=>{
                _this.tunnels = result
            },
            (error)=>{
                _this.Log.info(error)
            })
        //缺陷类型
        EnumsService.getDefectType().then(
            (result)=>{
                _this.defectType = result
            },
            (error)=>{
                _this.Log.info(error)
            })
        //缺陷状态
        EnumsService.getDefectStatus().then(
            (result)=>{
                _this.defectStatus = result
            },
            (error)=>{
                _this.Log.info(error)
            })
        //危险等级
        EnumsService.getDefectLevel().then(
            (result)=>{
                _this.defectLevel = result
            },
            (error)=>{
                _this.Log.info(error)
            })

        this.queryCondition()
    },
    methods: {
        queryCondition(){
            let _this = this
            if(new Date(_this.conditions.startTime)>new Date(_this.conditions.endTime)){
                _this.$Message.error('开始时间必须小于结束时间！');
                return;
            }
            DefectService.defectsDatagrid(this.params).then(
                (result)=>{
                    _this.defects=result.list
                    _this.page.pageTotal = result.total
                },
                (error)=>{
                    _this.Log.info(error)
                }
            )
        },
        handlePage(value) {
            this.page.pageNum = value;
            this.queryCondition()
        },
        handlePageSize(value) {
            this.page.pageSize = value;
            this.queryCondition()
        },
        goToModule(index,type){
            this.$router.push({
                name: '维修工单详情',
                params: {
                    id: this.defects[index].id,
                    type: type
                }
            })
        },
        goToMoudle2: function(index, type) {
            this.$router.push({
                name: "缺陷详情",
                params: {
                    id: this.defects[index].id,
                    type: type
                }
            });
        },
        goToModule3: function(){
            console.log('this.tunnelId', this.$route.params.id)
            this.$router.push({
                name: "缺陷详情",
                params: {
                    tunnelId: this.$route.params.id,
                    type: 4
                }
            })
        },
        enterOrder(index){
            this.goToMoudle2(index, Enum.pageType.Read);
        },
        queryDetails(index){
            this.goToModule(index,Enum.pageType.Read)
        },
        goToMoudle: function(path) {
            this.$router.push(path);
        }
    }
}
</script>
<style scoped>
/* table style & table-buttom style(.ivu-btn-primary .ivu-btn-info) */
.list{
    background: url("../../../../assets/UM/infoBox.png") no-repeat;
    background-size: 100% 100%;
    padding: 1%;
}
.list .ivu-table-wrapper>>>.ivu-table{
    color: #ffffff !important;
    background-color: #fffdfd00 !important;
}
.list .ivu-table-wrapper>>>.ivu-table:before,.list .ivu-table-wrapper>>>.ivu-table:after{
    background-color: #fffdfd00 !important;
}
.list .ivu-table-wrapper>>>.ivu-table th,.ivu-table-wrapper>>>.ivu-table td{
    background-color: #fffdfd00 !important;
    border-bottom: 1px solid #7d7d7d;
}
.list .ivu-table-wrapper>>>.ivu-btn-primary,.ivu-table-wrapper>>>.ivu-btn-info{
    background: linear-gradient(to bottom right, #6952dd, #2d0dd3) !important;
    border: none
}
.ivu-page>>>.ivu-page-total, .ivu-page>>>.ivu-page-options-elevator,.ivu-select.ivu-select-single >>> .ivu-select-selected-value{
    color: #fff;
}
.list .ivu-table-wrapper>>>.ivu-table-tip table{
    width: auto;
}
.ivu-table-wrapper>>>.ivu-table-overflowY{
    overflow-x: hidden;
}
.ivu-table-wrapper>>>.ivu-table-overflowY::-webkit-scrollbar{
    width: 0.4vmin;
    height: 0.4vmin;
}
.ivu-table-wrapper>>>.ivu-table-overflowY::-webkit-scrollbar-thumb{
    border-radius: 1vmin;
    box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
    background: #83a6ed;
}
.ivu-table-wrapper>>>.ivu-table-overflowY::-webkit-scrollbar-track{
    box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
    border-radius: 1vmin;
    background: #ededed;
}
@media (min-width: 2200px){
    .ivu-select,.ivu-select >>> .ivu-select-selection,.ivu-i.nput-wrapper >>> .ivu-input,.ivu-date-picker >>> .ivu-input,
    .ivu-select.ivu-select-single >>> .ivu-select-selected-value,.ivu-select.ivu-select-single >>> .ivu-select-placeholder
    {
        height: 4vmin;
        line-height: 4vmin;
        font-size: 1.4vmin;
        color: #ffffff;
    }
}
</style>




<template>
<div class="allDiv" style="padding-bottom: 0px;">
    <div class="navigation">
        <div @click="showTable()" :class="{'activeTable': isTable}">巡检任务表</div>
        <div @click="showSuperCalender()" :class="{'activeSuper': isSuperCalender}">巡检任务日历</div>
    </div>
    <div v-if="isTable">
        <Row class="conditions">
            <Col span="4">
                <span class="conditionTitle">任务进程：</span>
                <Select v-model="conditions.finished" style="width: 60%">
                    <Option value=null>所有</Option>
                    <Option v-for="(item,index) in patrolResult" :key="index" :value="item.val">{{item.key}}</Option>
                </Select>
            </Col>
            <Col span="4">
                <span class="conditionTitle">巡检人：</span>
                <Input type="text" style="width: 60%" v-model="conditions.name"></Input>
            </Col>
            <Col span="4">
                <span class="conditionTitle">开始时间：</span>
                <DatePicker type="datetime" v-model="conditions.startTime" placeholder="请输入巡检开始时间" style="width: 60%"></DatePicker>
            </Col>
            <Col span="4">
                <span class="conditionTitle">结束时间：</span>
                <DatePicker type="datetime" v-model="conditions.endTime" placeholder="请输入巡检结束时间" style="width: 60%"></DatePicker>
            </Col>
            <Col span="4">
                <Button type="primary" icon="ios-search"  @click="queryConditions()">查询</Button>
            </Col>
        </Row>
        <div class="list">
            <Table :columns='columns'  :data="patrolTask" :height="tableHeight"></Table>
        </div>
        <Page :total="page.pageTotal" :current="page.pageNum" :page-size="page.pageSize" show-sizer show-total
            placement="top" @on-change="handlePage" @on-page-size-change='handlePageSize' show-elevator :style='pageStyle'></Page>
    </div>
    <div v-if="isSuperCalender">
        <superCalender v-bind="SCalender" v-on:listenToChildEvent="queryOneMonth"></superCalender>
    </div>
</div>
</template>
<script>
import Enum from '../../../../../static/Enum.json'
import superCalender from '../../../Common/SuperCalender.vue'
// import superCalender from '../../../Common/copySuperCalender.vue'
export default {
    components: {
        superCalender
    },
    data(){
        return{
            SCalender:{
                tasks:[]
            },
            conditions:{
                finished: null,
                name: null,
                startTime: null,
                endTime: null
            },
            patrolResult:[
                {id: 1, val: 1, key: '已完成'},
                {id: 2, val: 0, key: '进行中'}
            ],
            patrolTask:[
                // {id:1,planName: '7月巡检计划',taskPerson: '张三', startTime: 1529596800000,endTime: null,describe: '中旬计划，大家认真执行',patrolStatus: '进行中',},
                // {id:2,planName: '7月巡检计划',taskPerson: '张三', startTime: null,endTime: 1529596800000,describe: '中旬计划，大家认真执行',patrolStatus: '进行中',},
            ],
            page:{
                pageSize: 10,
                pageNum: 1,
                pageTotal: null
            },
            pageStyle: {
                position: 'absolute',
                bottom: '1vmin',
                right: '2.5vmin'
            },
            columns:[
                {
                    type: 'index',
                    width: window.innerWidth/100*80/100*5,
                    align: 'center'
                },
                {
                    title: '所属计划',
                    key: 'planName',
                    align: 'center'
                },
                {
                    title: '巡检人',
                    key: 'inspectManName',
                    align: 'center'
                },
                {
                    title: '任务进程',
                    key: 'processStatus',
                    align: 'center'
                },
                {
                    title: '巡检计划时间',
                    key: 'taskTime',
                    align: 'center',
                    render: (h,params) => {
                        let temp = params.row.taskTime
                        if(temp == null){
                            temp = ''
                        }else{
                            temp = new Date(params.row.taskTime).format('yyyy-MM-dd')
                        }
                        return h('div',
                            temp
                        )
                    }
                },
                {
                    title: '巡检开始时间',
                    key: 'startTime',
                    align: 'center',
                    render:(h,params) =>{
                        let temp = params.row.startTime
                        if(temp == null){
                            temp = ''
                        }else{
                            temp = new Date(params.row.startTime).format('yyyy-MM-dd hh:mm:s')
                        }
                        return h('div',
                            temp
                        )
                    }
                },
                {
                    title: '巡检结束时间',
                    key: 'endTime',
                    align: 'center',
                    render:(h,params) =>{
                        let temp = params.row.endTime
                        if(temp == null){
                            temp = ''
                        }else{
                            temp = new Date(params.row.endTime).format('yyyy-MM-dd hh:mm:s')
                        }
                        return h('div',
                            temp
                        )
                    }
                },
                {
                    title: '巡检描述',
                    key: 'describe',
                    align: 'center',
                    width: window.innerWidth/100*80/100*15,
                    render:(h,params)=>{
                        let temp = params.row.describe
                        if(temp!=null){
                            if(temp.length<=10){
                                temp = temp
                            }else{
                                temp = temp.substr(0,10)+'...'
                            }
                            return h('div',temp)
                        }
                    }
                },
                {
                    title:"操作",
                    key:"action",
                    align: 'center',
                    width:window.innerWidth/100*80/100*7,
                    align:'center',
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
                                        this.show(params.index)
                                    }
                                }
                            }, '查看')
                        ]);
                    }
                }
            ],
            tunnelId: null,
            tunnels:[],
            firstDay: null,
            lastDay: null,
            isTable: true,
            isSuperCalender: false,
            tableHeight: 400
        }
    },
    watch:{
        '$route': function () {
            //2. $route发生变化时再次赋值planId
            if(this.$route.params.id){
                this.tunnelId = this.$route.params.id;
                this.tunnels.forEach(a => { 
                    if (a.id == this.tunnelId) {
                    this.queryConditions();
                    this.isTable = true;
                    this.isSuperCalender = false;
                    }
                });
            }
            this.conditions.finished = this.$route.params.taskStatus
        },
    },
    mounted() {
        this.tableHeight = window.innerHeight/100*67
        if(this.$route.params.id){
            this.tunnelId = this.$route.params.id;
        }
        this.conditions.finished = this.$route.params.taskStatus
        // 从数据库读取select的option选项
        this.axios.get("/tunnels ").then(response => {
            let { code, data } = response.data;
            if (code == 200) {
                this.tunnels = data;
            }
        });
        this.queryConditions()
        this.queryOneMonth(null)
    },
    methods:{
        showTable(){
            this.isTable = true
            this.isSuperCalender = false
        },
        showSuperCalender(){
            this.isSuperCalender = true
            this.isTable = false
        },
        queryConditions(){
          if(new Date(this.conditions.startTime)>new Date(this.conditions.endTime)){
            this.$Message.error('开始时间必须小于结束时间！');
            return;
          }
                var info = {
                    pageNum: this.page.pageNum,
                    pageSize: this.page.pageSize,
                    startTime: this.conditions.startTime,
                    endTime: this.conditions.endTime,
                    finished: this.conditions.finished,
                    name: this.conditions.name,
                    tunnelId: this.$route.params.id,
                }
            this.axios.post('/inspection-tasks/all',(info)).then(response=>{
                let{code,data} = response.data
                if(code==200){
                    this.patrolTask = data.list
                    this.page.pageTotal = data.total
                }
            })
        },
        handlePage(value) {
            this.page.pageNum = value;
            this.queryConditions()
        },
        handlePageSize(value) {
            this.page.pageSize = value;
            this.queryConditions()
        },
        goToMoudle2: function(index, type) {
            this.$router.push({
                name: "添加巡检任务",
                params: {
                    id: this.patrolTask[index].id,
                    type: type
                }
            });
        },
        show(index){
            this.goToMoudle2(index,Enum.pageType.Read)
        },
        submit(index){
            this.goToMoudle2(index,Enum.pageType.Submit)
        },
        //传给子组件
        queryOneMonth(data){
            if(data){
                this.firstDay = data.firstDay
                this.lastDay = data.lastDay
            }else{
                var d = new Date()
                this.firstDay = new Date(d.getFullYear(),d.getMonth(),1)
                this.lastDay = new Date(d.getFullYear(),d.getMonth()+1,0)
            }
            var timeInfo = {
                startTime: this.firstDay,
                endTime: this.lastDay
            }
            this.axios.post('/inspection-tasks/one-month',(timeInfo)).then(response=>{
                let{code,data} = response.data
                if(code==200){
                    this.SCalender.tasks = []
                    data.forEach(a=>{
                        var temp = {
                            id : a.id,
                            taskTime : a.taskTime,
                            processStatus : a.processStatus,
                            inspectManName : a.inspectManName
                        }
                        this.SCalender.tasks.push(temp)
                    })
                }
            })
        },
    }
}
</script>
<style scoped>
.navigation{
    line-height: 35px;
    color: #fff;
}
.navigation div{
    display: inline;
    line-height: 35px;
    cursor: pointer;
    padding: 9px;
    font-size: 15px;
}
.navigation div:hover,.activeTable,.activeSuper{
    border-bottom: 2px solid #357aa1;
}
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
    .ivu-select,.ivu-select >>> .ivu-select-selection,.ivu-input-wrapper >>> .ivu-input,.ivu-date-picker >>> .ivu-input,
    .ivu-select.ivu-select-single >>> .ivu-select-selected-value,.ivu-select.ivu-select-single >>> .ivu-select-placeholder
    {
        height: 4vmin;
        line-height: 4vmin;
        font-size: 1.4vmin;
    }
    .navigation{
        line-height: 3.5vmin;
    }
    .navigation div{
        line-height: 3.5vmin;
        padding: 0.9vmin;
        font-size: 1.5vmin;
    }
    .navigation div:hover,.activeTable,.activeSuper{
        border-bottom: 0.2vmin solid #357aa1;
    }
}
</style>


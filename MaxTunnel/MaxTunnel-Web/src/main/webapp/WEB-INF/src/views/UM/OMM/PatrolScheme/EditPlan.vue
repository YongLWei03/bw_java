<template>
    <div>
        <Form :model="uploadPlan"  label-position="top" @submit.native.prevent>
            <h2 class="formTitle" style="color: #fff">修改巡检计划</h2>
            <Row>
            <Col span="12"> 
                <div class="planContainer leftContainer">   
                <FormItem label="计划编号：">
                    <Input v-model="uploadPlan.planId"></Input>
                </FormItem>
                <FormItem label="计划名称：">
                    <Input v-model="uploadPlan.name"></Input>
                </FormItem>
                <FormItem label="所属管廊：">
                    <Select v-model="uploadPlan.tunnelId" readonly> 
                    <Option v-for="item in tunnels" :value="item.id" :key="item.id">{{ item.name }}</Option>
                    </Select>
                </FormItem>
                <FormItem label="责任班组：">
                    <Select v-model="uploadPlan.groupId">
                    <Option v-for="item in groups" :value="item.id" :key="item.id">{{ item.name }}</Option>
                    </Select>
                </FormItem>
                <FormItem label="申请人：">
                    <Input v-model="uploadPlan.requestStaffId" readonly v-show="false"></Input>
                    <div class="inputStyle">{{requestStaffName}}</div>
                </FormItem>
                <FormItem label="审批人：">
                    <Input v-model="uploadPlan.approverId" readonly style="display: none"></Input>
                    <Input v-model="approver.name" readonly></Input>
                </FormItem>
                <FormItem label="计划描述：">
                    <Input v-model="uploadPlan.remark" type="textarea" :autosize="{minRows: 4,maxRows: 4}"
                        placeholder="请输入计划描述"></Input>
                </FormItem>
                </div>
            </Col>
            <Col span="12">
            <div class="planContainer rightContainer">  
                <FormItem label="巡检月份：">
                <DatePicker type="month" placeholder="请选择巡检月份" style="width: 100%" v-model="uploadPlan.inspectTime" @on-change="getChooseMonth()"></DatePicker>
                </FormItem>
                <FormItem label="巡检日期安排：">
                <Tabs value="name1">
                    <TabPane label="间隔模式" name="name1">
                        <div>
                            开始日期：
                            <input  v-model="intervalMode.startDay" type="number" min="1" max="31" value="1">
                            结束日期：<input  v-model="intervalMode.endDay" type="number" min="1" max="31" value="30">
                            间隔天数：
                            <input  v-model="intervalMode.interval" type="number" min="1" max="31" value="1">
                            <Button type="default" @click="getDay" class="tabBtn">确定</Button>
                            <Button type="default" @click="defaultBtn" class="tabBtn">重置</Button>
                        </div>
                    </TabPane>
                    <TabPane label="星期模式" name="name2">
                    <Checkbox v-for="(item, index) in weekDay" v-model="item.value" :value='item.value' :key='index' @on-change="getWeek">{{item.name}}</Checkbox>
                    </TabPane>
                    <TabPane label="自定义" name="name3" style="text-align: center">请选择您需要的时间</TabPane>
                </Tabs>
                <calender ref="calender" :currentMonth="currMonth"  :currentYear="currYear" v-on:childByValue="getActiveText" style="margin: 10px auto;margin-bottom: 0px;"></calender>
                </FormItem>
            </div>  
            </Col>
            </Row>
            <FormItem style="text-align: center;margin-bottom: 0px">
                <Button type="ghost"  style="margin-right: 8px"  @click="goBack()">返回</Button>
                <Button type="primary">更新</Button>
            </FormItem>
        </Form> 
    </div>
</template>  

<script>
import calender from "../../../Common/calender.vue";
import types from "../../../../../static/Enum.json";
import { TunnelService } from '../../../../services/tunnelService';
import { PatrolService } from '../../../../services/patrolService';
export default {
  name: "plans",
  components: {
    calender
  },
  data() {
    return {
        // 页面类型 1：查看 2：编辑 3：新增
        pageType: 1,
        pageTypes: types.pageType,
        currMonth: '',
        currYear: '',
        current: '',
        requestStaffName: '',
        approver:{},
        uploadPlan:{
            planId: new Date().getTime(),
            name: "",
            groupId: null,
            inspectTime: "",
            tasks:[],
            approverId: 1,
            tunnelId: null,
            requestStaffId: null,
            remark: '',

        },
        groups: [{
            "id":1,
            "name":"group1",
            "leaderId":1,
            "leaderName":"l1"
        }],
        selectedMode:"",
        tunnels: [{
            "id":1,
            "name":"管廊1",
        }],
        weekDay:[
            {
            name:"星期日",
            value: false
            },
            {
            name:"星期一",
            value: false
            },
            {
            name:"星期二",
            value: false
            },
            {
            name:"星期三",
            value: false
            },
            {
            name:"星期四",
            value: false
            },
            {
            name:"星期五",
            value: false
            },
            {
            name:"星期六",
            value: false
            }
        ],
        intervalMode:{
            startDay: 1,
            endDay: 31,
            interval: 3
        },
        inspectTimeContainer:[],
    };
  },
  watch: {
    '$route': function () {
        //2. $route发生变化时再次赋值planId
        this.uploadPlan.planId = this.$route.params.id;
    },
    'currMonth':function(curVal,oldVal){
        if(curVal){
            this.$refs.calender.cancelActive();
            var week = [];
            for (let index = 0; index < this.weekDay.length; index++) {
                if (this.weekDay[index].value){
                    this.weekDay[index].value=false
                }
            }
        }
    }
  },
  mounted() {
    this.uploadPlan.planId = this.$route.params.id;
    let _this = this
    //从数据库读取所属管廊select的option选项
    TunnelService.getTunnels().then(
        (result)=>{
            _this.tunnels = result;
        },
        (error)=>{
            _this.Log.info(error)
        }
    )
    //从数据库读取责任班组select的option选项
    PatrolService.getGroups().then(
        (result)=>{
            _this.groups = result;
        },
        (error)=>{
            _this.Log.info(error)
        }
    )
    this.getSessionUserName()
    this.axios.get('roles/users').then(res=>{
        let{ code,data } = res.data
        if(code==200){
          this.approver = data[0]
            this.uploadPlan.approverId = data[0].id
        }
    })
    this.EditPlan()
    // this.getChooseMonth()
  },
  methods: {
    getChooseMonth(){
        if(this.currMonth==undefined||this.currMonth==null||this.currMonth==''||this.currYear==undefined||this.currYear==null||this.currYear==''){
            this.currMonth=new Date().getMonth()+1
            this.currYear = new Date().getFullYear()
        }else{
            this.currMonth=this.uploadPlan.inspectTime.getMonth()+1
            this.currYear=this.uploadPlan.inspectTime.getFullYear()
        }
    },
    getDay() {
        this.$refs.calender.cancelActive();
        this.$refs.calender.interVal(this.intervalMode.startDay, this.intervalMode.endDay, this.intervalMode.interval);
        this.$refs.calender.outputHeighLight();
    },
    defaultBtn() {
        this.$refs.calender.cancelActive();
        this.$refs.calender.outputHeighLight();
    },
    getWeek(){
        this.$refs.calender.cancelActive();
        var week = [];
        for (let index = 0; index < this.weekDay.length; index++) {
            if (this.weekDay[index].value) week.push(index);
        }
        this.$refs.calender.chooseWeek(week);
        this.$refs.calender.outputHeighLight();
    },
    getActiveText(childValue){
        this.uploadPlan.tasks=[];
        for(var i=0;i<childValue.length;i++){
            this.uploadPlan.tasks.push({taskTime:childValue[i]})
        }
    },
    getSessionUserName:function () {
        if(sessionStorage.UMUerName!=null||sessionStorage.UMUerName!=undefined||sessionStorage.UMUerName!=''){
            this.uploadPlan.requestStaffId = sessionStorage.UMUerId
            this.requestStaffName = sessionStorage.UMUerName
        }
    },
    shwoDate(){
        this.$refs.calender.shwoActiveDate(this.inspectTimeContainer)
        this.$refs.calender.outputHeighLight();
    },
    EditPlan(){
        new Promise((resolve, reject) => {
            this.axios.get('inspection-plans/' + this.uploadPlan.planId).then(res => {
            let {code,data,msg} = res.data
            if (code == 200) {
                resolve(data)
            } 
            // else {
            //   reject(msg + '地址:inspection-plans/' + planId)
            // }
            })
        }).then((result) => {
            this.uploadPlan = result;
            this.uploadPlan.inspectTime = new Date(result.inspectTime).format('yyyy-MM')
            this.uploadPlan.tasks.forEach(a=>{
            this.inspectTimeContainer.push(new Date(a.taskTime).format('yyyy-MM-dd'))
            })
            this.currYear = this.uploadPlan.inspectTime.substr(0,4)
            this.currMonth = this.uploadPlan.inspectTime.substr(5,2)
            this.shwoDate()
        })
    },
    cancel(){
        this.EditPlan()
    },
    //返回
    goBack(){
        this.$router.back(-1);
    }
  }
}
</script>

<style  scoped>
input[type='number']{
    display: inline-block;
    height: 27px;
    width: 45px;
    line-height: 1.5;
    padding: 4px 7px;
    font-size: 12px;
    border: 1px solid #dddee1;
    border-radius: 4px;
    color: #495060;
    background-color: #fff;
    background-image: none;
    position: relative;
    cursor: text;
    transition: border .2s ease-in-out,background .2s ease-in-out,box-shadow .2s ease-in-out;
    margin-right: 5px;
}
.tabBtn{
  line-height: 1.3;
  padding: 4px 7px; 
}
.ivu-form.ivu-form-label-right{
    margin: 0px auto;
    background: #fff;
    padding: 10px 20px;
}
.planContainer{
  width: 570px;
  background: #fff;
  padding: 10px 20px;
  border-radius: 8px;
}
.leftContainer{
  float: right;
  margin: 10px  20px 10px;
}
.rightContainer{
  margin: 10px 20px 10px;
}
.inputStyle{
  display: inline-block;
    width: 100%;
    height: 32px;
    line-height: 1.5;
    padding: 4px 7px;
    font-size: 12px;
    border: 1px solid #dddee1;
    border-radius: 4px;
    color: #495060;
    background-color: #fff;
    background-image: none;
    position: relative;
    cursor: text;
    transition: border .2s ease-in-out,background .2s ease-in-out,box-shadow .2s ease-in-out;
}
.ivu-input[disabled]{
    background-color: #ffffff !important;
    opacity: 1;
    cursor: not-allowed;
    color: #495060 !important;
}
@media (min-width: 2200px){
      .inputStyle{
        height: 4vh;
        line-height: 4vh;
        font-size: 1.6vmin;
        border: 1px solid #dddee1;
    }
    .planContainer{
      width: 80%;
    }
    .ivu-form.ivu-form-label-right{
        width: 50%;
    }
    h2{
        font-size: 2.4vmin;
    }
    .ivu-form-item >>> .ivu-form-item-label{
        /* width: 15vmin !important; */
        line-height: 2.5vmin;
    }
    .ivu-form-item >>> .ivu-form-item-content{
        /* margin-left: 15vmin !important; */
        line-height: 4.5vmin;
    }
    .ivu-select,.ivu-select >>> .ivu-select-selection,.ivu-input-wrapper >>> .ivu-input,.ivu-date-picker >>> .ivu-input,
    .ivu-select.ivu-select-single >>> .ivu-select-selected-value,.ivu-select.ivu-select-single >>> .ivu-select-placeholder
    {
        height: 4vmin;
        line-height: 4vmin;
        font-size: 1.4vmin;
    }
    .ivu-form-item-content{
        line-height: 6.5vmin;
    }
    .btn{
        margin-left: 20% !important;
    }
    .ivu-input-number,.ivu-input-number >>> .ivu-input-number-input{
        height: 4vmin;
        line-height: 4vmin;
        font-size: 1.4vmin;
    }
    input[type='number']{
        height: 4vmin;
        width: 8vmin;
        font-size: 1.6vmin;
    }
    .ivu-date-picker-cells-month span, .ivu-date-picker-cells-year span {
        width: 4vmin !important;
        height: 2.8vmin !important;
        line-height: 2.8vmin !important;
        margin: 1vmin 1.5vmin !important;
        border-radius: 0.3vmin !important;
    }
    .ivu-date-picker-header {
        height: 3.2vmin !important;
        line-height: 3.2vmin !important;
    }
}
</style>

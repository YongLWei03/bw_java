<template>
    <div class="allDiv">
        <div class="conditions">
            <Row>
                <Col class="conditionTitle" span="4">
                    <span class="conditionTitle">入廊目的：</span>
                    <Select v-model="conditions.actionId"  style="width:60%">
                        <Option value=null>所有</Option>
                        <Option v-for="(item,index) in actions" :value="item.val" :key="index">{{ item.key }}</Option>
                    </Select>
                </Col>
                <Col class="conditionTitle" span="4">
                    <span class="conditionTitle">是否完成：</span>
                    <Select v-model="conditions.isFinished" style="width:60%">
                        <Option value=null>所有</Option>
                        <Option v-for="(item,index) in isFinished" :value="item.key" :key="index">{{ item.val }}</Option>
                    </Select>
                </Col>

                <Col class="conditionTitle" span="4">
                    <span class="conditionTitle">开始时间：</span>
                    <DatePicker type="datetime" placeholder="请选择开始时间" style="width: 60%" v-model="conditions.startTime"></DatePicker>
                </Col>
                <Col class="conditionTitle" span="4">
                    <span class="conditionTitle">结束时间：</span>
                    <DatePicker type="datetime" placeholder="请选择结束时间" style="width: 60%" v-model="conditions.endTime"></DatePicker>
                </Col>
                <Col span="4">
                    <Button type="primary" icon="ios-search" @click="queryRecords()">查询</Button>
                    <Button type="primary" icon="plus-round" @click="goToMoudle('/UM/enterGalleryApplication/add')">制定</Button>
                </Col>
            </Row>
        </div>
        <div class="list">
            <Table :columns="columns1" :data="applicationRecordList" :height="tableHeight"></Table>
            <Modal
                title="参观人员信息"
                v-model="modal10"
                class-name="vertical-center-modal"
                :width="modalWidth">
                <Table :columns="columns2" :data="visitorInfo"></Table>
                <div slot="footer">
                  <Button type="primary" @click="modal10=false">确定</Button>
                </div>
            </Modal>
            <Modal
                title="申请状态"
                v-model="modal1"
                class-name="vertical-center-modal"
                :width="modalWidth">
                <image-from-url :url="imageUrl"></image-from-url>
                <div slot="footer">
                  <Button type="primary" @click="modal1=false">确定</Button>
                </div>
            </Modal>
        </div>
        <Page :total="page.pageTotal" :current="page.pageNum" :page-size="page.pageSize" show-sizer show-total
                placement="top" @on-change="handlePage" @on-page-size-change='handlePageSize' show-elevator :style="pageStyle"></Page>
    </div>
</template>
<script>
import ImageFromUrl from "../../../../components/Common/ImageFromUrl";
import { TunnelService } from '../../../../services/tunnelService'
import { EnumsService } from '../../../../services/enumsService'
import { EnterGalleryService } from '../../../../services/enterGalleryService'

export default {
  components: {
    ImageFromUrl
  },
  data() {
    return {
      imageUrl: "",
      columns1: [
        {
          type: "index",
          align: "center",
          width: window.innerWidth/100*80/100*4
        },
        {
          title: "申请人",
          key: "staff",
          align: "center",
          render: (h, params) => {
            return h("div", params.row.staff.name);
          }
        },
        {
          title: "入廊目的",
          key: "actionName",
          align: "center"
        },
        {
          title: "管廊名称",
          key: "tunnel",
          align: "center",
          render: (h, params) => {
            return h("div", params.row.tunnel.name);
          }
        },
        {
          title: "计划入廊时间",
          key: "preTime",
          align: "center",
          width: window.innerWidth/100*80/100*12,
          render: (h, params) => {
            return h(
              "div",
              new Date(params.row.preTime).format("yyyy-MM-dd hh:mm:s")
            );
          }
        },
        {
          title: "流程状态",
          key: "processStatus",
          align: "center",
          // render: (h, params) => {
          //   let tmpStr = "";
          //   if (params.row.status == 3) {
          //     tmpStr = "拒绝";
          //   } else if (params.row.status == 2) {
          //     tmpStr = "通过";
          //   } else if(params.row.status == 1){
          //     tmpStr = "审核中";
          //   }else{
          //     tmpStr = "结束";
          //   }
          //   return h(
          //     "span",
          //     {
          //       style: {
          //         color:
          //           params.row.status == 3 ? "#ff6600"
          //             : params.row.status == 2 ? "#19be6b"
          //             : params.row.status == 1 ? "#2d8cf0" : "#a005fdb3"
          //       }
          //     },
          //     tmpStr
          //   );
          // }
        },
        {
          title: '是否完成',
          key: 'isFinished',
          align: 'center',
          render: (h,params) => {
            let temp = ''
            if(params.row.isFinished==true){
              temp = '是'
            }else if(params.row.isFinished==false){
              temp = '否'
            }
            return h(
              'span',temp
            )
          }
        },
        {
          title: "查看申请状态",
          align: "center",
          width: window.innerWidth/100*80/100*9,
          render: (h, params) => {
            return h("div", [
              h(
                "Button",
                {
                  props: {
                    type: "primary",
                    size: "small"
                  },
                  style: {
                    marginRight: "5px"
                  },
                  on: {
                    click: () => {
                      this.showPic(params.row.id);
                    }
                  }
                },
                "查看"
              )
            ]);
          }
        },
        // {
        //   title: "创建时间",
        //   key: "crtTime",
        //   align: "center",
        //   // width: 150,
        //   render: (h, params) => {
        //     return h(
        //       "div",
        //       new Date(params.row.crtTime).format("yyyy-MM-dd hh:mm:s")
        //     );
        //   }
        // },
        {
          title: "进入管廊时间",
          key: "enterTime",
          align: "center",
          width: window.innerWidth/100*80/100*12,
          render: (h, params) => {
            let temp = ''
            if(params.row.enterTime==null){
              temp = '无'
            }else{
              temp = new Date(params.row.enterTime).format("yyyy-MM-dd hh:mm:s")
            }
            return h(
              "div",temp
            );
          }
        },
        {
          title: "离开管廊时间",
          key: "exitTime",
          align: "center",
          width: window.innerWidth/100*80/100*12,
          render: (h, params) => {
            let temp = ''
            if(params.row.exitTime==null){
              temp = '无'
            }else{
              temp = new Date(params.row.exitTime).format("yyyy-MM-dd hh:mm:s")
            }
            return h(
              "div",temp
            );
          }
        },
        {
          title: "参观人数",
          key: "visitorNumber",
          align: "center"
        },
        {
          title: "所属公司",
          key: "company",
          align: "center",
          render: (h, params) => {
            return h("div", params.row.company.name);
          }
        },
        {
          title: "参观人员信息",
          width: window.innerWidth/100*80/100*5,
          align: "center",
          render: (h, params) => {
            return h("div", [
              h(
                "Button",
                {
                  props: {
                    type: "primary",
                    size: "small"
                  },
                  // style: {
                  //   marginRight: "5px"
                  // },
                  on: {
                    click: () => {
                      this.show(params.row.id);
                    }
                  }
                },
                "详情"
              )
            ]);
          }
        },
        {
          title: "操作",
          width: window.innerWidth/100*80/100*6,
          align: "center",
          render: (h, params) => {
            return h("div", [
              h(
                "Button",
                {
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
      applicationRecordList: [],
      modal10: false,
      modal1: false,
      visitorInfo: [],
      Pic: null,
      img: null,
      columns2: [
        {
          type: "index",
          align: "center",
          width: 30
        },
        {
          title: "姓名",
          key: "name",
          align: "center"
        },
        {
          title: "身份证",
          key: "identityNO",
          align: "center"
        },
        {
          title: "联系方式",
          key: "telphone",
          align: "center"
        }
      ],
      page: {
        pageNum: 1,
        pageSize: 10,
        pageTotal: 0
      },
      conditions: {
        isFinished: null,
        actionId: null,
        startTime: null,
        endTime: null
      },
      tunnels: [],
      actions: [],
      status: [],
      tunnelId: null,
      pageStyle: {
          position: 'absolute',
          bottom: '1vmin',
          right: '2.5vmin'
      },
      isFinished:[
        {key: 1, val: '是'},
        {key: 0, val: '否'}
      ],
      modalWidth: null,
      tableWidth: null,
      tableHeight: null
    };
  },
  watch: {
    $route: function() {
      //2. $route发生变化时再次赋值planId
      this.tunnelId = this.$route.params.id;
      this.tunnels.forEach(a => {
        if (a.id == this.tunnelId) {
          this.queryRecords();
        }
      });
    }
  },
  computed: {
    params() {
      let param = {
        pageNum: this.page.pageNum,
        pageSize: this.page.pageSize,
        tunnelId: this.tunnelId,
        action: this.conditions.actionId,
        startTime: new Date(this.conditions.startTime).getTime(),
        endTime: new Date(this.conditions.endTime).getTime(),
        status: this.conditions.statusId,
        isFinished: this.conditions.isFinished
      };
      return Object.assign({}, param);
    }
  },
  mounted() {
    this.tunnelId = this.$route.params.id;
    this.queryRecords()
    let _this = this
    TunnelService.getTunnels().then(
      (result)=>{
        _this.tunnels = result
      },
      (error)=>{
        _this.Log.info(error)
      })
    EnumsService.getEnterActionType().then(
      (result)=>{
        _this.actions = result
      },
      (error)=>{
        _this.Log.info(error)
      })
    this.getModalWidth()
  },
  methods: {
    queryRecords() {
      let _this = this
      if(new Date(_this.conditions.startTime)>new Date(_this.conditions.endTime)){
        _this.$Message.error('开始时间必须小于结束时间！');
        return;
      }
      EnterGalleryService.enterGalleryDatagrid(_this.params).then(
        (result)=>{
          _this.applicationRecordList = result.list;
          _this.page.pageTotal = result.total;
        },
        (error)=>{
          _this.Log.info(error)
        })
    },
    handlePage(value) {
      this.page.pageNum = value;
      this.queryRecords();
    },
    handlePageSize(value) {
      this.page.pageSize = value;
      this.queryRecords();
    },
    del(id) {
      this.$Modal.confirm({
        title: '入廊申请',
        width:"25vw",
        content: '<p>是否删除这条入廊申请</p>',
        onOk: () => {
          let _this = this
          EnterGalleryService.deleteEnterGallery(id).then(
            (result)=>{
              _this.applicationRecordList.splice(id, 1);
              _this.queryRecords();
            },
            (error)=>{
              _this.Log.info(error)
            })
        },
        onCancel: () => {

        }
      })
    },
    show(id) {
      let _this = this
      EnterGalleryService.getDetailsById(id).then(
        (result)=>{
          if(result != null){
            _this.visitorInfo=result.list
            }
        },
        (error)=>{
          _this.Log.info(error)
        })
      this.modal10 = true;
    },
    showPic(id) {
        this.imageUrl = "/req-historys/" + id + "/activiti-png";
        this.modal1 = true;
    },
    getModalWidth(){
      this.modalWidth = document.body.offsetWidth*0.4
      this.tableWidth = this.modalWidth - 100
      this.tableHeight = window.innerHeight/100*65
    },
    goToMoudle: function(path) {
        this.$router.push(path);
    }
  }
};
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
.ivu-table-wrapper>>>.ivu-table-tip{
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
    /* .ivu-modal{
      width: 50vw !important;
    } */
}
</style>

<template>
  <div>
    <h1 style="text-align:center;margin-bottom:20px;margin-top:10px">监测对象配置</h1>
    <Row style="marginLeft:25px;marginBottom:10px;">
      <Col span="6">
        <span>监测对象名称</span>
        <span>：</span>
        <Input v-model="researchInfo.name" placeholder="请输入监测对象名称" class="inputWidth"/>
      </Col>
      <Col span="6">
        <span>监测对象ID</span>
        <span>：</span>
        <Input v-model="researchInfo.id" placeholder="请输入监测对象ID" class="inputWidth"/>
      </Col>
      <Col span="6">
        <span>监测对象类型</span>
        <span>：</span>
        <Select
          v-model="objtypeIds"
          placeholder="请选择监测对象类型"
          class="inputWidth"
          multiple
          id="objtype"
        >
          <Option v-for="item in lists.objtypes" :value="item.val" :key="item.key">{{item.key}}</Option>
        </Select>
      </Col>
      <Col span="6">
        <Button type="primary" size="small" icon="ios-search" @click="resetAndSearch">查询</Button>
        <Button type="error" size="small" @click="add">新增监测对象</Button>
      </Col>
    </Row>
    <Row style="marginLeft:25px;marginBottom:10px;">
      <Col span="6">
        <span class="word64">所属管廊</span>
        <span>：</span>
        <Select v-model="researchInfo.tunnelId" placeholder="请选择所属管廊" class="inputWidth">
          <Option value="null">所有</Option>
          <Option v-for="item in lists.tunnels" :value="item.id" :key="item.id">{{item.name}}</Option>
        </Select>
      </Col>
      <Col span="6">
        <Poptip placement="bottom" width="1000">
          <span class="word65">所属管仓</span>
          <span>：</span>
          <Input v-model="researchInfo.storeName" placeholder="请选择所属管仓" id="store" style="width: 60%"/>
          <div class="pop" slot="content">
            <store-choose
              v-on:listenToStoreChoose="getStore"
              v-bind:tunnelId="researchInfo.tunnelId"
            ></store-choose>
          </div>
        </Poptip>
      </Col>
      <Col span="6">
        <Poptip placement="bottom" width="1000">
          <span class="word64">所属区域</span>
          <span>：</span>
          <Input v-model="researchInfo.areaName" placeholder="请选择所属区域" id="area" style="width: 60%"/>
          <div class="pop" slot="content">
            <area-choose v-on:listenToAreaChoose="getArea" v-bind:tunnelId="researchInfo.tunnelId"></area-choose>
          </div>
        </Poptip>
      </Col>
      <Col span="6">
        <Button type="info" size="small" @click="addMulti">批量新增监测对象</Button>
        <Button v-show="deleteShow" type="error" size="small" @click="alldelete()">批量删除</Button>
        <Button v-show="!deleteShow" disabled type="error" size="small">批量删除</Button>
      </Col>
    </Row>

    <div style="margin:20px;">
      <Table
        border
        stripe
        ref="selection"
        :columns="columns7"
        :data="data6"
        @on-selection-change="startdelete"
      ></Table>
      <Page
        :total="page.pageTotal"
        :current="page.pageNum"
        show-total
        placement="top"
        @on-change="handlePage"
        show-elevator
        class="pageStyle"
      ></Page>
    </div>
      <meas-obj-module ref="measObjModule" v-bind="measObjModule"  v-on:addMeasObj="addMeasObj" v-on:ListenUpdateMeasObj="updateMeasObj"></meas-obj-module>
      <meas-obj-multi-module v-bind="measObjMultiModule" v-on:saveMulti="saveMulti"></meas-obj-multi-module>
  </div>
</template>

<script>
import MeasObjModule from "../../CM/MeasObj/MeasObjModule.vue";
import MeasObjMultiModule from "../../CM/MeasObj/MeasObjMultiModule";
import { EnumsService } from "../../../services/enumsService";
import { TunnelService } from "../../../services/tunnelService";
import { MeasObjServer } from "../../../services/MeasObjectSerivers";
import storeChoose from "../../../components/CM/MAM/storeChoose";
import areaChoose from "../../../components/CM/MAM/areaChoose";
export default {
  name: "meas-obj",
  data() {
    return {
      lists: {
        objtypes: [],
        tunnels: [],
        areas: []
      },
      isFinishEnums: [{ val: 0, key: "否" }, { val: 1, key: "是" }],
      researchInfo: {
        name: null,
        id: null,
        objtypeIds: null,
        datatypeId: null,
        tunnelId: null,
        storeName: null,
        storeId: null,
        areaId: null,
        areaName: null
      },
      columns7: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          type: "index",
          width: 60,
          align: "center"
        },
        {
          title: "监测对象名称",
          key: "name",
          align: "center"
        },
        {
          title: "监测对象ID",
          key: "id",
          align: "center"
        },
        {
          title: "监测对象类型",
          key: "objtypeName",
          align: "center"
        },
        {
          title: "数据类型",
          key: "datatypeName",
          align: "center"
        },
        {
          title: '关联预案',
          key: 'plansName',
          align: 'center',
          render: (h, params) => {
            let temp = params.row.plansName
            if(temp.length==0){
              temp = null
            }
            return h('span',temp)
          }
        },
        {
          title: '关联视频',
          key: 'videosName',
          align: 'center',
          render: (h, params) => {
            let temp = params.row.videosName
            if(temp.length==0){
              temp = null
            }
            return h('span',temp)
          }
        },
        {
          title: "位置",
          key: "location",
          align: "center"
        },
        {
          title: "描述",
          key: "description",
          align: "center"
        },
        {
          title: "是否激活",
          key: "actived",
          align: "center",
          render: (h,params) => {
            let isActived = null
            if(params.row.actived==true){
              isActived = '是'
            }else{
              isActived = '否'
            }
            return h('div',isActived)
          }
        },
        {
          title: "操作",
          key: "action",
          width: 100,
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
                  style: {
                    marginLeft: "5px"
                  },
                  on: {
                    click: () => {
                      this.edit(params.row.id);
                    }
                  }
                },
                "修改"
              )
            ]);
          }
        }
      ],
      data6: [],
      page: {
        pageNum: 1,
        pageSize: 10,
        pageTotal: 0
      },
      deleteShow: false,
      deleteSelect: [],
      measObjModule: {
        show: { state: false },
        // editInfo: {},
        type: null,
        id: null
      },
      measObjMultiModule: {
        show: { state: false }
      },
      objtypeIds: []
    };
  },
  computed: {
    researches() {
      let param = {
        pageNum: this.page.pageNum,
        pageSize: this.page.pageSize,
        name: this.researchInfo.name,
        id: this.researchInfo.id,
        objtypeIds: this.objtypeIds.length === 0 ? null : this.objtypeIds,
        datatypeId: this.researchInfo.datatypeId,
        tunnelId: this.researchInfo.tunnelId,
        storeId: this.researchInfo.storeId,
        areaId: this.researchInfo.areaId
      };
      return Object.assign({}, param);
    }
  },
  mounted() {
    this.init();
    this.search();
    this.$nextTick(()=>{
      let width = document.getElementById("objtype").offsetWidth;
      document.getElementById("store").style.width = width + "px";
      document.getElementById("area").style.width = width + "px";
    })
    window.onresize = function() {
      let width = document.getElementById("objtype").offsetWidth;
      document.getElementById("store").style.width = width + "px";
      document.getElementById("area").style.width = width + "px";
    };
  },
  methods: {
    resetAndSearch(){
      this.page.pageNum = 1
      this.search()
    },
    search() {
      let _this = this;
      MeasObjServer.measObjDataGrid(this.researches).then(
        result => {
          _this.page.pageTotal = result.total;
          _this.data6 = [];
          _this.data6 = result.list;
          _this.data6.forEach(measobj => {
            if(measobj.section != null){
              measobj.location = measobj.section.store.tunnel.name + measobj.section.name;
            }
          });
        },
        error => {
          _this.Log.info(error);
        }
      );
    },
    init() {
      let _this = this;
      EnumsService.getDataType().then(
        result => {
          _this.lists.datatypes = result;
        },
        error => {
          _this.Log.info(error);
        }
      );
      EnumsService.getObjType().then(
        result => {
          _this.lists.objtypes = result;
        },
        error => {
          _this.Log.info(error);
        }
      );
      TunnelService.getTunnels().then(
        result => {
          _this.lists.tunnels = result;
        },
        error => {
          _this.Log.info(error);
        }
      );
    },
    handlePage(value) {
      this.page.pageNum = value;
      this.search();
    },
    getStore(store) {
      this.researchInfo.storeId = store.id;
      this.researchInfo.storeName = store.name;
    },
    getArea(area) {
      this.researchInfo.areaId = area.id;
      this.researchInfo.areaName = area.name;
    },
    add() {
      this.measObjModule.show.state = !this.measObjModule.show.state;
      this.measObjModule.type = 1;
    },
    edit(id) {
      this.measObjModule.show.state = !this.measObjModule.show.state;
      this.measObjModule.type = 2;
      this.measObjModule.id = id
      this.$refs.measObjModule.getMeasObjInfo(id)
    },
    addMulti() {
      this.measObjMultiModule.show.state = !this.measObjMultiModule.show.state;
      // this.measObjMultiModule.type = "addMulti";
    },
    addMeasObj() {
      this.measObjModule.show.state = !this.measObjModule.show.state;
      this.$Message.success('添加成功');
      this.resetAndSearch()
    },
    updateMeasObj(){
      this.measObjModule.show.state = !this.measObjModule.show.state;
      this.$Message.success('修改成功');
      this.resetAndSearch()
    },
    saveMulti(data) {
      console.log("save multi", data);
      let _this = this;
      data.forEach(element => {
        element.id = parseInt(element.id);
      });
      // 将data上传，接口measobjs/batch，http，有问题找后端
      MeasObjServer.batchPostMeasObjs(data).then(
        res => {
          _this.Log.info(res);
          _this.resetAndSearch()
        },
        error => {
          _this.Log.info(error);
        }
      );
    },
    startdelete(selection) {
      if (selection.length != 0) {
        this.deleteShow = true;
        this.deleteSelect = selection;
      } else {
        this.deleteShow = false;
      }
    },
    alldelete() {
      this.$Modal.confirm({
        title: "删除确认",
        content: "<p>确认要删除选中的信息吗？</p>",
        onOk: () => {
          let ids = this.deleteSelect[0].id;
          for (let i = 1; i < this.deleteSelect.length; i++) {
            ids += "," + this.deleteSelect[i].id;
          }
          let _this = this;
          MeasObjServer.batchDeleteMeasObjs(ids).then(
            result => {
              _this.$Message.info("已删除");
              _this.deleteShow = false;
              _this.resetAndSearch();
            },
            error => {
              _this.Log.info(error);
            }
          );
        },
        onCancel: () => {
          this.$Message.info("已取消操作");
          this.resetAndSearch();
        },
      });
    }
  },
  components: {
    MeasObjModule,
    MeasObjMultiModule,
    storeChoose,
    areaChoose
  }
};
</script>

<style scoped>
.inputWidth {
  width: 60%;
}
.pageStyle {
  text-align: right;
  margin-top: 60px;
  margin-right: 10px;
}
.word63 {
  letter-spacing: 1.5em;
  margin-right: -1.5em;
}
.word64 {
  letter-spacing: 0.67em;
  margin-right: -0.67em;
}
.word65 {
  letter-spacing: 0.30em;
  margin-right: -0.25em;
}
</style>


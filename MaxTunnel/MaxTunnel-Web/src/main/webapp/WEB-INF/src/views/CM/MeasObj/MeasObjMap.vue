<template>
    <div>
        <h1 style="text-align:center;margin-bottom:20px;margin-top:10px">监测对象映射配置</h1>
        <Row style="marginLeft:25px;marginBottom:10px;">
            <Col span="6">
                <span>监测对象Id</span><span>：</span>
                <Input v-model="condition.objectId" placeholder="请输入监测对象名称" class="inputWidth"/>
            </Col>
            <Col span="6">
                <span>MaxView监测对象</span><span>：</span>
                <Input v-model="condition.objectId2" placeholder="请输入监测对象名称" class="inputWidth"/>
            </Col>
            <Col span="6">
                <span>开始时间</span><span>：</span>
                <DatePicker type="datetime" placeholder="请选择开始时间" class="inputWidth" v-model="condition.startTime">
                </DatePicker>
            </Col>
            <Col span="6">
                <span>结束时间</span><span>：</span>
                <DatePicker type="datetime" placeholder="请选择开始时间" class="inputWidth" v-model="condition.endTime">
                </DatePicker>
            </Col> 
        </Row>
        <Row>
            <Col span="10" offset="14">
                <Button type="primary" size="small"  icon="ios-search" @click="resetPageSearch">查询</Button>
                <Button type="error" size="small" @click="add">新增监测对象映射</Button><Button type="primary" size="small" @click="showModal">批量新增监测对象映射</Button>
                <Button v-show="deleteShow" type="warning" size="small" @click="alldelete()">批量删除</Button> 
                <Button v-show="!deleteShow" disabled type="warning" size="small">批量删除</Button>
            </Col> 
        </Row>
        <div style="margin:20px;">
            <Table border ref="selection" :columns="columns7" :data="tableData" @on-selection-change="startdelete"></Table>
            <Page :total="page.pageTotal" :current="page.pageNum" show-total placement="top" 
            @on-change="handlePage" show-elevator class="pageStyle"></Page>
        </div>
        <div>
            <meas-obj-map-module v-bind="map" v-on:addOrEdit="save"></meas-obj-map-module>
        </div>
        <Modal v-model="batchAdd.isShow" title="批量添加" @on-ok="addMaps">
            <Form ref="form" :model="batchAdd.params" :label-width="120">
                <FormItem label="监测对象：">
                    <Select v-model="batchAdd.objtypeId" class="addWidth">
                        <Option v-for="item in batchAdd.list" :key="item.val" :value="item.val">{{ item.key }}</Option>
                    </Select>
                </FormItem>
                <FormItem label="开-输出值：">
                     <Select v-model="batchAdd.openValue" class="addWidth">
                        <Option v-for="item in valueOptions" :key="item.val" :value="item.val">{{ item.key }}</Option>
                    </Select>
                </FormItem>
                <FormItem label="开-输出点位：">
                    <Input v-model="batchAdd.openPosition" placeholder="请输入输出点位" class="addWidth"></Input>
                </FormItem>
                 <FormItem label="关-输出值：">
                    <Select v-model="batchAdd.closeValue" class="addWidth">
                        <Option v-for="item in valueOptions" :key="item.val" :value="item.val">{{ item.key }}</Option>
                    </Select>
                </FormItem>
                <FormItem label="关-输出点位：">
                    <Input v-model="batchAdd.closePosition" placeholder="请输入输出点位" class="addWidth"></Input>
                </FormItem>
            </Form>
        </Modal>
    </div>
</template>

<script>
import { MeasObjServer } from '../../../services/MeasObjectSerivers'
import { EnumsService } from '../../../services/enumsService'
import MeasObjMapModule from '../../CM/MeasObj/MeasObjMapModule'

export default {
    name: "MaxViewConfig",
    data(){
        return {
            condition: {
                startTime: null,
                endTime: null,
                objectId: null,
                objectId2: null
            },
            columns7:[
                {
                    type: 'selection',
                    width: 60,
                    align: 'center'
                },
                {
                    type: 'index',
                    width: 60,
                    align: 'center'
                },
                {
                    title: '监测对象ID',
                    key: 'objectId',
                    align: 'center'
                },
                {
                    title: '输入值',
                    key: 'inputValue',
                    align: 'center'
                },
                {
                    title: 'MaxView监测对象ID',
                    key: 'objectId2',
                    align: 'center'
                },
                {
                    title: '输出值',
                    key: 'outputValue',
                    align: 'center'
                },
                {
                    title: '创建时间',
                    key: 'crtTime',
                    align: 'center'
                },
                {
                    title: '操作',
                    key: 'action',
                    width: 100,
                    align: 'center',
                    render: (h, params) => {
                        return h('div', [
                            h('Button', {
                                props: {
                                    type: 'primary',
                                    size: 'small'
                                },
                                style: {
                                    marginLeft: '5px'
                                },
                                on: {
                                    click: () => {
                                        this.edit(params.row.id)
                                    }
                                }
                            }, '修改')
                        ]);
                    }
                }
            ],
            tableData:[],
            deleteShow: false,
            deleteSelect:[],
            page:{
                pageNum: 1,
                pageSize: 10,
                pageTotal: 0
            },
            map: {
                show: {
                    state: false
                },
                editInfo: null,
                type: null
            },
            batchAdd: {
                isShow: false,
                list: [],
                objtypeId: null,
                openValue: 0,
                openPosition: null,
                closeValue: 0,
                closePosition: null
            },
            valueOptions: [{
                key: '开',
                val: 1
            },{
                key: '关',
                val: 0
            }]
        }
    },
    computed:{
        searchParams(){
            let params = {
                pageNum: this.page.pageNum,
                pageSize: this.page.pageSize,
                objectId: this.condition.objectId,
                objectId2: this.condition.objectId2,
                startTime: this.condition.startTime,
                endTime: this.condition.endTime
            }
            return Object.assign({}, params)
        }
    },
    watch:{
        'batchAdd.isShow': function(){
            let nullVal = ['objtypeId','openPosition','closePosition']
            let zeoVal = ['openValue','closeValue']
            for(let item in this.batchAdd){
                if(nullVal.indexOf(item) > -1){
                    this.batchAdd[item] = null
                } else if(zeoVal.indexOf(item) > -1){
                    this.batchAdd[item] = 0
                }
            }
        }
    },
    mounted(){
        this.resetPageSearch()       
    },
    methods:{
        search(){
            let _this = this
            MeasObjServer.measObjMapDatagird(this.searchParams).then(
                result=>{
                    _this.tableData = result.list
                    _this.tableData.forEach(data=>{
                        data.crtTime = new Date(data.crtTime).format('yyyy-MM-dd hh:mm:s')
                        data.inputValue = data.inputValue ? '开' : '关'
                        data.outputValue = data.outputValue ? '开' : '关'
                    })
                    _this.page.pageTotal = result.total
                },
                error=>{
                    _this.Log.info(error)
                })
        },
        handlePage(value) {
            this.page.pageNum = value;
            this.search();
        },
        startdelete(selection){
            if(selection.length != 0){
                this.deleteShow = true;
                this.deleteSelect = selection;
            }else{
                this.deleteShow = false;
            }
        },
        add() {
            this.map.show.state = !this.map.show.state
            this.map.type = 'add'
        },
        save(data) {
            let _this = this
            if(this.map.type == 'add'){
                MeasObjServer.addMeasObjMap(data).then(
                result=>{
                    _this.$Message.success('添加成功！');
                    _this.map.show.state = !_this.map.show.state
                    _this.resetPageSearch()
                },
                error=>{
                    _this.Log.info(error)
                })
            } else {
                MeasObjServer.updateMeasObjMap(data).then(
                    result=>{
                        _this.$Message.success('更新成功！');
                        _this.map.show.state = !_this.map.show.state
                        _this.resetPageSearch()
                    },
                    error=>{
                        _this.Log.info(error)
                    })
            }
            
        },
        edit(id) {
            let _this = this
            MeasObjServer.getObjMapById(id).then(
                result=>{
                    _this.map.editInfo = []
                    _this.map.editInfo = result
                    _this.map.editInfo.objectId = _this.map.editInfo.objectId + ''
                    _this.map.editInfo.objectId2 = _this.map.editInfo.objectId2 + ''
                    _this.map.type = 'edit'
                    _this.map.show.state = !_this.map.show.state
                },
                error=>{
                    _this.Log.info(error)
                })
        },
        alldelete(){
            this.$Modal.confirm({
                title: '删除确认',
                content: '<p>确认要删除选中的信息吗？</p>',
                onOk: () => {
                    let ids=this.deleteSelect[0].id;
                    for(let i=1;i<this.deleteSelect.length;i++){
                        ids += "," + this.deleteSelect[i].id;
                    }
                    let _this = this
                    MeasObjServer.batchDeleteObjMap(ids).then(
                        result=>{
                            _this.$Message.info('已删除')
                            _this.deleteShow = false
                            _this.resetPageSearch()
                        },
                        error=>{
                            _this.Log.info(error)
                        })  
                },
                onCancel: () => {
                    this.$Message.info('已取消操作');
                    this.resetPageSearch();
                }
            });
        },
        showModal(){
            this.batchAdd.isShow = true
            let _this = this
            EnumsService.getSwitchObj().then(
                result=>{
                    _this.batchAdd.list = result
                },
                error=>{
                    _this.Log.info(error)
                })
        },
        addMaps(){
            let _this = this
            let si = [
                {
                    key: 1,
                    val: this.batchAdd.openValue,
                    count: parseInt(this.batchAdd.openPosition)
                },
                {
                    key: 0,
                    val: this.batchAdd.closeValue,
                    count: parseInt(this.batchAdd.closePosition)
                }
            ]
            let params = {
                objectTypeId: parseInt(this.batchAdd.objtypeId),
                si: si
            }
            MeasObjServer.batchAddMap(params).then(
                result=>{
                    _this.$Message.info('添加成功');
                    _this.resetPageSearch()
                },
                error=>{
                    _this.Log.info(error)
                })
        },
        resetPageSearch(){
            this.page.pageNum = 1;
            this.search();
        }
    },
    components:{
       MeasObjMapModule
    }
}
</script>

<style scoped>
.inputWidth{
    width: 60%;
}
.pageStyle{
    text-align: right;
    margin-top: 100px;
    margin-right: 10px;
}
.word63{
    letter-spacing: 1.5em;
    margin-right: -1.5em
}
.word64{
    letter-spacing: 0.67em;
    margin-right: -0.67em;
}
.word65{
    letter-spacing: 0.25em;
    margin-right: -0.25em;
}
.addWidth{
    width: 80%;
}
</style>



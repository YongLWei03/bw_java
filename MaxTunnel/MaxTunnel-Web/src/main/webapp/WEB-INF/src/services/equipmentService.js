import axios from "axios";
import { get,put,del,post } from "../utils/http";
const isRealData = require("../../static/serverconfig").isRealData;

var EquipmentService = {
    // 获取所有的供应商
    getVenders: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipment-venders").then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + ",地址:/venders");
                    }
                })
                .catch(error => {
                    reject(error.response.status + " " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    //获取设备状态
    getStatus() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipmentstatus-enums").then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipmentstatus-enums");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    // 获取所有设备型号
    getEquipmentModels: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipment-models").then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipment-models");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    //获取所有的设备类型
    getEquipmentTypes: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipment-types").then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipment-types");
                    }
                });
            } else {
                resolve({
                    id: 1,
                    name: "消防设备"
                }, {
                    id: 2,
                    name: "通讯设备"
                }, {
                    id: 3,
                    name: "万能表"
                }, {
                    id: 4,
                    name: "螺丝刀"
                }, {
                    id: 5,
                    name: "电脑"
                }, {
                    id: 6,
                    name: "有害气体检测器"
                });
            }
        });
    },
    // 添加设备
    addEquipment: function(params) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("/equipments", params).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                resolve({
                    id: 1,
                    name: "001"
                }, {
                    id: 2,
                    name: "002"
                }, {
                    id: 3,
                    name: "003"
                }, {
                    id: 4,
                    name: "004"
                });
            }
        });
    },
    // 设备信息分页查询
    equipmentDatagird: function(params) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("/equipments/datagrid", params).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments/datagrid");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    // 根据equipmentId获取该设备详细信息
    getEquDetailByEquId: function(equId) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipments/" + equId).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments/" + equId);
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    //修改设备信息
    updateEquipmentInfo: function(param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                put("/equipments", param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments/");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                //假数据
            }
        });
    },
    // 获取各设备类别个数
    getEquTypeAndCount: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("/equipments/type/count").then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments/type/count");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    // 删除设备
    deleteEquipment: function(equId) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                del("/equipments/" + equId).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/equipments/" + equId);
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    //删除备品备件
    deSpare: function(ids) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                del('spares/' + ids).then(res => {
                    let { code, data, msg} = res.data
                    if (code == 200) {
                        resolve(data)
                    } else {
                        reject(msg + "地址：/spares/" + ids)
                    }
                })
            }
        })
    },
    //备品备件分页
    backUpDatagrid: function(params) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("/spares/datagrid", params).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/spares/datagrid");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            } else {
                // 假数据
            }
        });
    },
    batchOutBound: function(ids, param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("/spare-outs/" + ids + "/equipments", param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/spare-outs/ids");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            }
        });
    },
    //备品历史统计--出库备品
    backUpHistory: function(param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("/spare-outs/datagrid", param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/spare-outs/datagrid");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            }
        });
    },
    //备品历史统计--设备类型出库排行榜
    getBackUpTypeHisList: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("spare-outs/type")
                    .then(res => {
                        let {
                            code,
                            data,
                            msg
                        } = res.data;
                        if (code == 200) {
                            resolve(data);
                        } else {
                            reject(msg + "地址：/spare-outs/type");
                        }
                    })
                    .catch(error => {
                        reject(error.response.status + "  " + error.response.data);
                    });
            }
        });
    },
    //备品历史统计--设备类型出库排行榜详情
    getBackUpTypeHisDetails: function(id) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("types/" + id + "/spare-outs")
                    .then(res => {
                        let {
                            code,
                            data,
                            msg
                        } = res.data;
                        if (code == 200) {
                            resolve(data);
                        } else {
                            reject(msg + "地址：/types/ + id + /spare-outs");
                        }
                    })
                    .catch(error => {
                        reject(error.response.status + "  " + error.response.data);
                    });
            }
        });
    },
    //备品历史统计--取用设备人排行
    getBackUpBorrowerHisList: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("spare-outs/staff").then(res => {
                        let { code, data, msg } = res.data;
                        if (code == 200) {
                            resolve(data);
                        } else {
                            reject(msg + "地址：/spare-outs/staff");
                        }
                    })
                    .catch(error => {
                        reject(error.response.status + "  " + error.response.data);
                    }
                );
            }
        });
    },
    //备品历史统计--取用设备人排行详情
    getBackUpBorrowerHisDetails: function(id) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("staffs/" + id + "spare-outs").then(res => {
                    let { code, data, msg} = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/staffs/+ id + spare-outs");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            }
        });
    },
    //备品查询--去向
    getWhither: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get("sparewhither-enums").then(res => {
                    let { code, data, msg} = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：sparewhithere-enums");
                    }
                })
                .catch(error => {
                    reject(error.response.status + "  " + error.response.data);
                });
            }
        });
    },
    //仪表工具--添加
    addTools: function(count, param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("instruments/" + count, param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：/instruments/'+count");
                    }
                });
            }
        });
    },
    //仪表工具--查询
    queryTools: function(param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("instruments/datagride", param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：instruments/datagride");
                    }
                });
            } else {
                let data = {
                    pagedList: [{
                        id: 1,
                        typeId: 1,
                        typeName: "安全设备",
                        modelId: 1,
                        modelName: "model-1",
                        useStatus: 1,
                        useStatusName: "在库",
                        status: 1,
                        venderId: 1,
                        venderName: "张三",
                        inTime: ""
                    }],
                    total: 1
                };
                resolve(data);
            }
        });
    },
    //仪表工具--历史记录
    queryHisRecord: function(param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("instrument-records/datagride", param).then(res => {
                    let { code, data, msg} = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：instrument-records/datagrid");
                    }
                });
            }
        });
    },
    //仪表工具--批量借出提交
    batchLend: function(ids, param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("instrument-records/" + ids, param).then(res => {
                    let { code, data, msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：instrument-records/+ids");
                    }
                });
            }
        });
    },
    //仪表工具--批量归还提交
    batchReturn: function(ids, usestatus, param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post("instrument-records/" + ids + "/usestatus/" + usestatus, param).then(res => {
                    let { code, data,  msg } = res.data;
                    if (code == 200) {
                        resolve(data);
                    } else {
                        reject(msg + "地址：instrument-records/+ids+time");
                    }
                });
            }
        });
    },
    // 各类型设备状态统计
    getEquipmentTypeAndStatusCount: function() {
        //   url: equipments/types-status/count
        return new Promise((resolve, reject) => {
            let res = [];
            let types = ["环境", "安防", "消防", "视频", "通信", "机电"];
            let status = ["运行", "故障", "停运", "其它"];
            for (let i = 0; i < types.length; i++) {
                let tmp = {
                    key: types[i],
                    val: []
                };
                for (let j = 0; j < status.length; j++) {
                    let min = 0;
                    let max = 100;
                    switch (j) {
                        case 0:
                            min = 200;
                            max = 300;
                            break;
                        case 1:
                            min = 30;
                            max = 50;
                            break;
                        case 2:
                            min = 10;
                            max = 30;
                            break;
                        case 3:
                            min = 20;
                            max = 50;
                            break;
                    }
                    tmp.val.push({
                        key: status[j],
                        val: Math.floor(min + Math.random() * (max - min))
                    });
                }
                res.push(tmp);
            }
            resolve(res);
        });
    },
    //获取关联监测对象
    getObj: function() {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                get('measobjs').then(res => {
                    let { code, data, msg } = res.data
                    if (code == 200) {
                        resolve(data)
                    } else {
                        reject(msg + '地址：measobjs')
                    }
                })
            }
        })
    },
    //获取监测对象类型
    getObjType: function(param) {
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post('measobjs/datagrid', param).then(res => {
                    let { code, data, msg } = res.data
                    if (code == 200) {
                        resolve(data.list)
                    } else {
                        reject(msg + "地址：measobjs/datagrid")
                    }
                })
            }
        })
    },
    //获取设备信息（不分页）
    getEquipments(params){
        return new Promise((resolve, reject) => {
            if (isRealData) {
                post('equipments/condition', params)
                .then(res => {
                    let { code, data, msg } = res.data
                    if (code == 200) {
                        resolve(data)
                    } else {
                        reject(msg + "地址：equipments/condition")
                    }
                })
                .catch(error=>{
                    reject(error.response.status + ' ' + error.response.code)
                })
            }
        })
    },
    //模糊查询objId
    changeObjId(objId){
        return new Promise((resolve, reject) => {
            get('measobjs/'+objId+"/condition").then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：")
                }
            })
        })
    },
    batchAdd(params){
        return new Promise((resolve, reject) => {
            post('equipments/batch', params).then(res=>{
                let{ code, data, msg } = res.data
                if(code==200){
                    resolve(data)
                }else{
                    reject(msg+"地址：equipments/batch")
                }
            })
        })
    },
    // 根据管廊id获取各管舱设备总数
    getEquiCount(tunnelId){
        return new Promise((resolve, reject) => {
			get('tunnels/'+tunnelId+'/stores/equipments/count')
				.then(res => {
					let { code,	data, msg } = res.data
					if (code == 200) {
						resolve(data)
					} else {
						reject(msg + ',地址:tunnels/'+tunnelId+'/stores/equipments/count')
					}
				})
				.catch(error => {
					reject(error.response.status + '  ' + error.response.data)
				})
		})
    },
    //获取最新一条仪表工具的出库时间
    getNewTime(id){
        return new Promise((resolve, reject) => {
            get('instrument-records/'+id+'/new').then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：instrument-records/"+id+"/new")
                }
            })
        })
    },
    //修改设备状态为故障
    updateEquipmentStatus(params){
        return new Promise((resolve, reject) => {
            put('objects/equipments', params).then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：objects/equipments")
                }
            })
        })
    },
    // 各类别设备个数
    getEquTypeCounts(){
        return new Promise((resolve, reject) => {
            get('/spares/equipments/instruments/counts/types').then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：/spares/equipments/instruments/counts/types")
                }
            })
        })
    },
    //三个出库统计
    getEquipmentCount(){
        return new Promise((resolve, reject) => {
            get("spares/count/status").then(res=>{
                let{ code,data,msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：spares/count/status")
                }
            })
        })
    },
    //三个总计
    getOutCount(){
        return new Promise((resolve, reject) => {
            get("spares/equipments/instruments").then(res=>{
                let{ code,data,msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：spares/equipments/instruments")
                }
            })
        })
    },
    //仪表工具书占比
    getToolsPrecent(){
        return new Promise((resolve, reject) => {
            get("instruments/num").then(res=>{
                let{ code,data,msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：instruments/num")
                }
            })
        })
    },
    //管廊设备数占比
    getSparePrecent(){
        return new Promise((resolve, reject) => {
            get("equipments/num").then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：equipments/num")
                }
            })
        })
    },
    //设备故障总数
    getBroken(){
        return new Promise((resolve, reject) => {
            get("equipments/instruments/broken-counts").then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：equipments/instruments/broken-counts")
                }
            })
        })
    },
    //最新一条设备故障信息
    getDefectEquipment(){
        return new Promise((resolve, reject) => {
            get("defects/new-one").then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：defects/new-one")
                }
            })
        })
    },
    //提交backUp
    submitBackUp(count, params){
        return new Promise((resolve, reject) => {
            post("spares/"+count, params).then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：spares/"+count)
                }
            })
        })
    },
    //获取取用人列表
    getStaffs(){
        return new Promise((resolve, reject) => {
            get("/staffs").then(res=>{
                let{ code, data, msg } = res.data
                if( code == 200 ){
                    resolve(data)
                }else{
                    reject(msg+"地址：staffs")
                }
            })
        })
    }
};

export {
    EquipmentService
};
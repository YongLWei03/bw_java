<template>
	<div style="margin: 10px">
		<Row>
			<Col span="24">
				<div class="top-div">
					<Row class="top">
						<Col span="6">
							<span>开始时间：</span>
							<DatePicker type="date" v-model="startTime" placeholder="选择时间" style="width: 60%"></DatePicker>
						</Col>
						<Col span="6">
							<span>结束时间：</span>
							<DatePicker type="date" v-model="endTime" placeholder="选择时间" style="width: 60%"></DatePicker>
						</Col>
						<Col span="6">
							<Button type="primary"  icon="ios-search"  @click="queryTable">查询</Button>
							<Button type="primary"  icon="ios-download-outline" @click="exportData" >导出</Button>
						</Col>
					</Row>
					<div>
						<Table  ref="table" border stripe   :height="tableHeight" :columns="columns" :data="tableData"></Table>
						<Page :total="page.pageTotal" @on-change="changePage" :page-size="page.pageSize"
								show-total show-elevator
								:current="page.curPageNum"
								show-total show-elevator show-sizer placement="top"
								style="float: right"></Page>
					</div>
				</div>
			</Col>
			<Col span="24">
				<div style="height: calc(42vh - 60px);">
					<div :id="line.Id" style="width: 100%; height: 100%" ref="lineChart"></div>
				</div>
			</Col>
		</Row>
	</div>
</template>

<script>
	import {TunnelService} from '../../../../services/tunnelService'
	import {EnergyConsumptionService} from '../../../../services/EnergyConsumptionService'

	export default {
		name: "energy-consumption-detail",
		data() {
			return {
				tableHeight:450,
				tunnelId: '',
				tunnelList: [],
				curName: "",
				tableData: [],
				columns: [
					{
						title: '管廊名称',
						key: 'tunnelName'
					},
					{
						title: '电表类型',
						key: 'objectTypeName'
					},
					{
						title: '耗电单价（元/千瓦时）',
						key: 'unitPrice'
					},
					{
						title: '耗电量（千瓦时）',
						key: 'value'
					},
					{
						title: '耗电成本（元）',
						key: 'costing'
					},
					{
						title: '时间',
						key: 'crtTime'
					}
				],
				startTime: '',
				endTime: '',
				line: {
					Id: 'singleLine',
					titleColor: "#000000",
					requestUrl: "tunnels/energies/time/condition",
				},
				requestUrl: '/tunnels/energies/datagrid',
				myChart: {},
				data: [],
				date: [],
				page: {
				pageSize: 10,
				pageTotal: 14,
				curPageNum: 1
				},
			}
		},
		watch: {
			'$route': function () {
				//2. $route发生变化时再次赋值planId
				this.tunnelId = this.$route.params.id;
				this.startTime="";
				this.endTime="";
				this.page={pageSize: 7, pageTotal: 14, curPageNum: 1};
				this.tunnelList.forEach(a => {
					if (a.id == this.tunnelId) {
						this.curName = a.name;
						this.init();
						this.queryTable();
					}
				});
			}
		},
		mounted() {
			this.tableHeight= window.innerHeight*0.42-60;
			this.tunnelId = this.$route.params.id;
			// 获取所有的管廊
			let _this = this
			TunnelService.getTunnels().then(
				(result) => {
				_this.tunnelList = result;
				_this.tunnelList.forEach(a => {
					if (a.id == _this.tunnelId) {
					_this.curName = a.name;
					_this.init();
					}
				});
				},
				(error) => {
					console.log(error)
				})
			this.queryTable();
			window.addEventListener("resize", this.myChart.resize);
			window.addEventListener("resize", this.init)
		},
		methods: {
			init() {
				this.drawLine(this.curName, this.line.titleColor);
				this.fetchData(this.line.requestUrl);
			},
			queryTable() {
				let _this = this;
				if(new Date(_this.startTime)>new Date(_this.endTime)){
					_this.$Message.error('开始时间必须小于结束时间！');
				return;
				}
				_this.tableData = [];
				let queryParams = {
					startTime: null,
					endTime: null,
					pageNum: _this.page.curPageNum,
					pageSize: _this.page.pageSize,
					tunnelId: _this.tunnelId
				};
				if (_this.startTime) {
					queryParams.startTime = _this.startTime.getTime();
				}
				if (_this.endTime) {
					queryParams.endTime = _this.endTime.getTime();
				}
				EnergyConsumptionService.getECDatagrid(queryParams).then(
				(result) => {
					_this.page.pageTotal = result.total;
					result.list.forEach(a => {
					let temp = a;
					temp.value = temp.value.toFixed(2);
					temp.unitPrice = temp.unitPrice.toFixed(2);
					temp.crtTime = new Date(a.crtTime).format("yyyy-MM-dd hh:mm:ss");
					temp.costing = (a.unitPrice * a.value).toFixed(2);
					_this.tableData.push(temp);
					})
				},
				(error) => {
					_this.$Message.error(error);
				})
				this.fetchData(this.line.requestUrl);
			},

			drawLine(titleName, titleColor) {
				let _this = this;
				_this.myChart = _this.$echarts.init(document.getElementById(_this.line.Id));
				_this.myChart.showLoading();
				let option = {
				title: {
					text: titleName + "能耗统计",
					trigger: 'axis',
					textStyle: {
						fontWeight: 'normal',
						color: titleColor,
						fontSize: _this.getFontSize('4%')
					}
				},
				tooltip: {
					trigger: 'axis',
					formatter: '{b0}<br />{a}:{c}(千瓦时)',
					position: function (pt) {
						return [pt[0], '10%'];
					}
				},
				xAxis: {
					type: 'category',
					boundaryGap: false,
					data: []
				},
				yAxis: {
					type: 'value',
					boundaryGap: [0, '100%']
				},
				dataZoom: [{
					type: 'inside',
					start: 0,
					end: 10
				}, {
					start: 0,
					end: 10,
					handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
					handleSize: '80%',
					handleStyle: {
					color: '#fff',
					shadowBlur: 3,
					shadowColor: 'rgba(0, 0, 0, 0.6)',
					shadowOffsetX: 2,
					shadowOffsetY: 2
					}
				}],
				series: [
					{
						name: titleName,
						type: 'line',
						smooth: true,
						symbol: 'none',
						sampling: 'average',
						itemStyle: {
							normal: {
								color: 'rgb(255, 70, 131)'
							}
						},
						areaStyle: {
							normal: {
							color: {
								colorStops: [{
								offset: 0,
								color: "rgb(255, 158, 68)" // 0% 处的颜色
								}, {
								offset: 1,
								color: "rgb(255, 70, 131)"// 100% 处的颜色
								}]
							}
							}
						},
						data: []
					}
				]
				};
				_this.myChart.hideLoading();
				_this.myChart.setOption(option);
			},

			//刷新图表
			fetchData(requestUrl) {
				let _this = this;
				let queryParams = {
				startTime: null,
				endTime: null,
				tunnelId: _this.tunnelId
				};
				if (_this.startTime) {
					queryParams.startTime = _this.startTime.getTime();
				}
				if (_this.endTime) {
					queryParams.endTime = _this.endTime.getTime();
				}
				EnergyConsumptionService.getECInfo(queryParams).then(
				(result) => {
					_this.data = [];
					_this.date = [];
					result.filter(item => {
						_this.data.push(item.value.toFixed(2));
						_this.date.push(new Date(item.crtTime).format("yyyy/MM/dd hh:mm:ss"))
					});
					if (_this.data && _this.date) {
					_this.myChart.setOption({
						series: [{
							data: _this.data
						}],
						xAxis: {
							type: 'category',
							boundaryGap: false,
							data: _this.date
						},
					})
					}
				},
				(error => {
					_this.Log.info(error)
				}))
			},
			getFontSize(val) {
				if (typeof (val) == 'number') return val;

				if (typeof (val) == 'string') {

					if (val.indexOf('%') > 0) {
						var tmp = parseFloat(val.replace('%', '')) / 100;
						let height = this.$refs.lineChart.offsetHeight;
						return Math.round(height * tmp);
					}
				}

				return 0;
			},
			//导出表数据
			exportData() {
				this.$refs.table.exportCsv({
					filename: 'Sorting and filtering data',
					original: false
				});
			},
			//切换页面
			changePage(index) {
				let _this = this;
				_this.page.curPageNum = index;
				_this.queryTable()
			}
		}
	}
</script>

<style scoped>
	.bottom-div {
		margin-top: 10px;
	}

	.top {
		padding-top: 8px;
		padding-left: 5px;
		height: 5vmin;
		background-color: #fff;
		margin-bottom: 10px;
	}
	.top span{
		font-size: 1.66vmin;
	}
	.top-div >>> .ivu-input{
		height: 3.2vmin;
		font-size: 1.2vmin;
	}
	.top-div >>> .ivu-picker-panel-body{
		font-size: 1.2vmin;
	}
	.top-div >>> .ivu-input{
		height: 3.2vmin;
		font-size: 1.2vmin;
  	}
	.top-div >>> .ivu-picker-panel-body{
		font-size: 1.2vmin;
	}
  	.ivu-page>>>.ivu-page-total, .ivu-page>>>.ivu-page-options-elevator{
		color: #fff;
	}
</style>

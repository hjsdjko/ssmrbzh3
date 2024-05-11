<template>
	<view class="content">
		<form class="app-update-pv">
			
									<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">计划标题</view>
				<input :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' :disabled="ro.jihuabiaoti" v-model="ruleForm.jihuabiaoti" placeholder="计划标题"></input>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"#ccc","margin":"0 0 20rpx 0","borderWidth":"0","borderStyle":"solid","height":"200rpx"}' class="cu-form-group" @tap="jihuatupianTap" :class='left == "left"?"":"active"'>
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">计划图片</view>
				<view class="right-input" :style='{textAlign:"left"}' style="padding:0">
					<image :style='{"width":"160rpx","boxShadow":"0 0 8rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"160rpx"}' class="avator" v-if="ruleForm.jihuatupian" :src="ruleForm.jihuatupian" mode="aspectFill"></image>
					<image :style='{"width":"160rpx","boxShadow":"0 0 8rpx rgba(0,0,0,.3)","borderRadius":"100%","textAlign":"left","height":"160rpx"}' class="avator" v-else src="../../static/gen/upload.png" mode="aspectFill"></image>
				</view>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">开始日期</view>
				<picker mode="date" :value="ruleForm.kaishiriqi" @change="kaishiriqiChange">
					<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' class="uni-input">{{ruleForm.kaishiriqi?ruleForm.kaishiriqi:"请选择开始日期"}}</view>
				</picker>
			</view>
																					<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">结束时间</view>
				<picker mode="date" :value="ruleForm.jieshushijian" @change="jieshushijianChange">
					<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' class="uni-input">{{ruleForm.jieshushijian?ruleForm.jieshushijian:"请选择结束时间"}}</view>
				</picker>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">计划天数</view>
				<input :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' :disabled="ro.jihuatianshu" v-model="ruleForm.jihuatianshu" placeholder="计划天数"></input>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group select">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">完成度</view>
				<picker @change="wanchengduChange" :value="wanchengduIndex" :range="wanchengduOptions">
					<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' class="uni-input">{{ruleForm.wanchengdu?ruleForm.wanchengdu:"请选择完成度"}}</view>
				</picker>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">账号</view>
				<input :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' :disabled="ro.zhanghao" v-model="ruleForm.zhanghao" placeholder="账号"></input>
			</view>
												<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0","borderWidth":"0 0 4rpx","borderStyle":"solid","height":"108rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">姓名</view>
				<input :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"80rpx"}' :disabled="ro.xingming" v-model="ruleForm.xingming" placeholder="姓名"></input>
			</view>
																		
			<!-- 否 -->
 
			
			          				          				          				          				<view :style='{"boxShadow":"0 0 0px rgba(0,0,0,.3)","backgroundColor":"rgba(1, 157, 214, 0.1)","borderColor":"rgba(245, 245, 245, 1)","margin":"0 0 0 0","borderWidth":"4rpx","borderStyle":"solid","height":"308rpx"}' class="cu-form-group">
				<view :style='{"width":"160rpx","fontSize":"28rpx","color":"rgba(51, 51, 51, 1)","textAlign":"center"}' class="title">计划内容</view>
				<textarea :style='{"boxShadow":"0 0 0px rgba(0,0,0,.6) inset","backgroundColor":"rgba(255, 255, 255, 0.1)","borderColor":"rgba(0,0,0,.6)","borderRadius":"0 20rpx","color":"rgba(51, 51, 51, 1)","textAlign":"left","borderWidth":"2rpx","fontSize":"26rpx","borderStyle":"solid","height":"100%"}' v-model="ruleForm.jihuaneirong" placeholder="计划内容"></textarea>
			</view>
						          				          				          				          				          				          							
			          				          				          				          				          				          				          				          				          				          							
			<view class="btn">
				<button :style='{"boxShadow":"0 0 0px rgba(0,0,0,0) inset","backgroundColor":"rgba(1, 157, 214, 1)","borderColor":"#409EFF","borderRadius":"0 0 20rpx 20rpx","color":"#fff","borderWidth":"0","width":"90%","fontSize":"28rpx","borderStyle":"solid","height":"80rpx"}' @tap="onSubmitTap" class="bg-red">提交</button>
			</view>
		</form>

																																													
	</view>
</template>

<script>
	import wPicker from "@/components/w-picker/w-picker.vue";

	export default {
		data() {
			return {
				ruleForm: {
												jihuabiaoti: '',
																jihuatupian: '',
																kaishiriqi: '',
																jihuaneirong: '',
																jieshushijian: '',
																jihuatianshu: '',
																wanchengdu: '',
																zhanghao: '',
																xingming: '',
																userid: '',
												},
																																																												wanchengduOptions: [],
				wanchengduIndex: 0,
																																				// 登陆用户信息
				user: {},
                                ro:{
                                   jihuabiaoti : false,
                                   jihuatupian : false,
                                   kaishiriqi : false,
                                   jihuaneirong : false,
                                   jieshushijian : false,
                                   jihuatianshu : false,
                                   wanchengdu : false,
                                   zhanghao : false,
                                   xingming : false,
                                   userid : false,
                                },
			}
		},
		components: {
			wPicker
		},
		computed: {
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					},
		async onLoad(options) {
    		        this.ruleForm.kaishiriqi = this.$utils.getCurDate();
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			
						// ss读取
																																																			this.ruleForm.zhanghao = this.user.zhanghao
												this.ruleForm.xingming = this.user.xingming
															
																																																// 自定义下拉框值
			this.wanchengduOptions = "未完成,完成".split(',')
																											
			// 如果有登陆，获取登陆后保存的userid
			this.ruleForm.userid = uni.getStorageSync("userid")
			if (options.refid) {
				// 如果上一级页面传递了refid，获取改refid数据信息
				this.ruleForm.refid = options.refid;
				this.ruleForm.nickname = uni.getStorageSync("nickname");
			}
			// 如果是更新操作
			if (options.id) {
				this.ruleForm.id = options.id;
				// 获取信息
				res = await this.$api.info(`xuexijihua`, this.ruleForm.id);
				this.ruleForm = res.data;
			}
			// 跨表
			if(options.cross){
				var obj = uni.getStorageSync('crossObj');
				for (var o in obj){
					if(o=='jihuabiaoti'){
					this.ruleForm.jihuabiaoti = obj[o];
					this.ro.jihuabiaoti = true;
					continue;
					}
					if(o=='jihuatupian'){
					this.ruleForm.jihuatupian = obj[o];
					this.ro.jihuatupian = true;
					continue;
					}
					if(o=='kaishiriqi'){
					this.ruleForm.kaishiriqi = obj[o];
					this.ro.kaishiriqi = true;
					continue;
					}
					if(o=='jihuaneirong'){
					this.ruleForm.jihuaneirong = obj[o];
					this.ro.jihuaneirong = true;
					continue;
					}
					if(o=='jieshushijian'){
					this.ruleForm.jieshushijian = obj[o];
					this.ro.jieshushijian = true;
					continue;
					}
					if(o=='jihuatianshu'){
					this.ruleForm.jihuatianshu = obj[o];
					this.ro.jihuatianshu = true;
					continue;
					}
					if(o=='wanchengdu'){
					this.ruleForm.wanchengdu = obj[o];
					this.ro.wanchengdu = true;
					continue;
					}
					if(o=='zhanghao'){
					this.ruleForm.zhanghao = obj[o];
					this.ro.zhanghao = true;
					continue;
					}
					if(o=='xingming'){
					this.ruleForm.xingming = obj[o];
					this.ro.xingming = true;
					continue;
					}
					if(o=='userid'){
					this.ruleForm.userid = obj[o];
					this.ro.userid = true;
					continue;
					}
				}
			}
			this.styleChange()
		},
		methods: {
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.app-update-pv .cu-form-group .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.addUpdateForm.input.content.backgroundColor
					// })
				})
			},
																																																																		
			// 多级联动参数
																																																																		
																					kaishiriqiChange(e) {
				this.ruleForm.kaishiriqi = e.target.value;
				this.$forceUpdate();
			},
																		jieshushijianChange(e) {
				this.ruleForm.jieshushijian = e.target.value;
				this.$forceUpdate();
			},
																																				
																																																															
																																													// 下拉变化
			wanchengduChange(e) {
				this.wanchengduIndex = e.target.value
				this.ruleForm.wanchengdu = this.wanchengduOptions[this.wanchengduIndex]
			},
																								
																		jihuatupianTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.jihuatupian = _this.$base.url + 'upload/' + res.file;
					_this.$forceUpdate();
					_this.$nextTick(()=>{
						_this.styleChange()
					})
				});
			},
																																																																																	
			getUUID () {
				return new Date().getTime();
			},
			async onSubmitTap() {
																																																																																																																																																																																																																																																																																																																																																																																																				if((!this.ruleForm.jihuabiaoti)){
					this.$utils.msg(`计划标题不能为空`);
					return
				}
																																																																																																																																																																																																																																																																																																																																																																												if(this.ruleForm.id){
					await this.$api.update(`xuexijihua`, this.ruleForm);
				}else{
					await this.$api.add(`xuexijihua`, this.ruleForm);
				}
				this.$utils.msgBack('提交成功');
			},
			optionsChange(e) {
				this.index = e.target.value
			},
			bindDateChange(e) {
				this.date = e.target.value
			},
			getDate(type) {
				const date = new Date();
				let year = date.getFullYear();
				let month = date.getMonth() + 1;
				let day = date.getDate();
				if (type === 'start') {
					year = year - 60;
				} else if (type === 'end') {
					year = year + 2;
				}
				month = month > 9 ? month : '0' + month;;
				day = day > 9 ? day : '0' + day;
				return `${year}-${month}-${day}`;
			},
			toggleTab(str) {
				this.$refs[str].show();
			}
		}
	}
</script>

<style lang="scss" scoped>
	.container {
		padding: 20upx;
	}
	
	.content:after {
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		content: '';
				background-attachment: fixed;
		background-size: cover;
		background-position: center;
	}

	textarea {
		border: 1upx solid #EEEEEE;
		border-radius: 20upx;
		padding: 20upx;
	}

	.title {
		width: 180upx;
	}

	.avator {
		width: 150upx;
		height: 60upx;
	}

	.right-input {
		flex: 1;
		text-align: left;
		padding: 0 24upx;
	}
	
	.cu-form-group.active {
		justify-content: space-between;
	}
	
	.btn {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-wrap: wrap;
	  padding: 20upx 0;
	}
	
	.cu-form-group {
		padding: 0 24upx;
		background-color: transparent;
		min-height: inherit;
	}
	
	.cu-form-group+.cu-form-group {
		border: 0;
	}
	
	.cu-form-group uni-input {
		padding: 0 30upx;
	}
	
	.uni-input {
		padding: 0 30upx;
	}
	
	.cu-form-group uni-textarea {
		padding: 30upx;
		margin: 0;
	}
	
	.cu-form-group uni-picker::after {
		line-height: 80rpx;
	}
	
	.select .uni-input {
		line-height: 80rpx;
	}
	
	.input .right-input {
		line-height: 80rpx;
	}
</style>

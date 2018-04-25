<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit">
		<title>提交订单—聚橙网</title>
		<meta name="keywords" content="聚橙网" />
		<meta name="description" content="聚橙网打造国内专业的票务和演出订票平台" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/all_product/css/base.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/all_product/css/cart.css">
		<link rel="stylesheet" href="<%=path%>/resource/all_product/css/base_1.css">

	</head>

	<body style="">

		<!-- Head头部 -->
		<div class="header " style="padding-bottom: 0;">
			<!-- top头部 -->
			<!--顶部广告位-->
			<div class="top-advert">

			</div>
			<style>
				.top-header .head .dropdown-tab .qr-code.language {
					height: auto;
					padding: 0;
					width: 95px
				}
				
				.s_language {
					width: 95px;
					text-align: center;
					color: #666;
				}
				
				.top-header .head .dropdown-tab .qr-code.language li {
					height: 40px;
					line-height: 40px;
					text-align: center;
					background: #f5f5f5;
					border-top: 1px solid #ebebeb;
				}
				
				.top-header .head .dropdown-tab .qr-code.language li a {
					display: block;
				}
				
				.top-header .head .dropdown-tab .qr-code.language li:hover a {
					color: #b2b2b2
				}
			</style>
			<!-- 顶部栏 -->
			<div class="new-navbar">
				<div class="w1200">
					<div class="slogan">文化青年，品质生活~</div>
					<div class="nav-top">
						<!-- 未登录 -->
						<div class="ds-inlineb hide" id="js-login-out">
							<div class="nav-items">
								<a href="../user/login.html" class="nav-link" id="js-login-top">登录</a>
							</div>
							<div class="nav-items">
								<a href="../user/register.html" class="nav-link">注册</a>
							</div>
						</div>
						<!-- 未登录 end -->
						<!-- 已登录 -->
						<div class="ds-inlineb hide" id="js-has-login">
							<div class="nav-items">
								<span class="c9">你好,</span>
								<a href="" target="_blank" class="nav-link no-border-left" id="js-get-username">用户名</a>
								<a href="../user/myjuooo.html"><span class="c9 vip-level" id="js-get-level" style="background-image: url('');"></span></a>
							</div>
							<div class="nav-items">
								<a href="" class="nav-link c9">退出</a>
							</div>
						</div>
						<!-- 已登录 end -->

						<div class="nav-items">
							<a href="../user/myorderlist.html" class="nav-link" target="_blank">我的订单</a>
						</div>
						<div class="nav-items hover-color js-net">
							<a href="javascript:;" class="nav-link">网站导航<i class="bg-icon net-nav-icon"></i></a>
							<ul class="net-list js-net-list">
								<li class="net-item">
									<div class="title">频道</div>
									<div class="channel">
										<a href="../run/activity.html" class="new-items" target="_blank" title="聚特惠">聚特惠</a>
										<a href="../run/Student-index.html" class="new-items" target="_blank" title="学生专区">学生专区</a>
										<a href="../run/card.html" class="new-items" target="_blank" title="欢聚橙卡">欢聚橙卡</a>
										<a href="../run/calendars.html" class="new-items" target="_blank" title="演出日历">演出日历</a>
										<a href="" class="new-items" target="_blank" title="明星库">明星库</a>
										<a href="" class="new-items" target="_blank" title="资讯库">资讯库</a>
										<a href="" class="new-items" target="_blank" title="剧目库">剧目库</a>
										<a href="" class="new-items" target="_blank" title="场馆库">场馆库</a>
										<a href="../run/scores.html" class="new-items" target="_blank" title="积分商城">积分商城</a>
										<a href="../run/zhuanti.html" class="new-items" target="_blank" title="精彩专题">精彩专题</a>
									</div>
								</li>
								<li class="net-item sline"></li>
								<li class="net-item">
									<div class="title">品类站</div>
									<div class="kind">
										<a href="../productSubCategories/popular.html" class="new-items" target="_blank">流行音乐</a>
										<a href="../productSubCategories/classical.html" class="new-items" target="_blank">古典音乐</a>
										<a href="../productSubCategories/drama.html" class="new-items" target="_blank">舞台剧</a>
										<a href="../productSubCategories/kids.html" class="new-items" target="_blank">儿童亲子</a>
										<a href="../productSubCategories/musical.html" class="new-items" target="_blank">音乐剧</a>
									</div>
								</li>
								<li class="net-item sline"></li>
								<li class="net-item">
									<div class="title">城市站</div>
									<div class="city">
										<a href="" class="new-items" target="_blank">深圳</a>
										<a href="" class="new-items" target="_blank">广州</a>
										<a href="" class="new-items" target="_blank">上海</a>
										<a href="" class="new-items" target="_blank">北京</a>
										<a href="" class="new-items" target="_blank">成都</a>
										<a href="" class="new-items" target="_blank">杭州</a>
										<a href="" class="new-items" target="_blank">重庆</a>
										<a href="" class="new-items" target="_blank">长沙</a>
										<a href="" class="new-items" target="_blank">武汉</a>
										<a href="" class="new-items" target="_blank">苏州</a>
										<a href="" class="new-items" target="_blank">南宁</a>
										<a href="" class="new-items" target="_blank">大连</a>
										<a href="" class="new-items" target="_blank">石家庄</a>
										<a href="" class="new-items" target="_blank">连云港</a>
										<a href="" class="new-items" target="_blank">宁波</a>
										<a href="" class="new-items" target="_blank">镇江</a>
										<a href="" class="new-items" target="_blank">天津</a>
										<a href="" class="new-items" target="_blank">西安</a>
										<a href="" class="new-items" target="_blank">昆明</a>
										<a href="" class="new-items" target="_blank">南京</a>
										<a href="" class="new-items" target="_blank">福州</a>
										<a href="" class="new-items" target="_blank">泉州</a>
										<a href="" class="new-items" target="_blank">厦门</a>
										<a href="" class="new-items" target="_blank">合肥</a>
										<a href="" class="new-items" target="_blank">沈阳</a>
										<a href="" class="new-items" target="_blank">无锡</a>
										<a href="" class="new-items" target="_blank">贵阳</a>
										<a href="" class="new-items" target="_blank">常州</a>
										<a href="" class="new-items" target="_blank">东莞</a>
										<a href="" class="new-items" target="_blank">福建</a>
										<a href="" class="new-items" target="_blank">哈尔滨</a>
										<a href="" class="new-items" target="_blank">宜昌</a>
										<a href="" class="new-items" target="_blank">清远</a>
										<a href="" class="new-items" target="_blank">河源</a>
										<a href="" class="new-items" target="_blank">盐城</a>
										<a href="" class="new-items" target="_blank">商丘</a>
										<a href="" class="new-items" target="_blank">安顺</a>
										<a href="" class="new-items" target="_blank">龙岩</a>
										<a href="" class="new-items" target="_blank">罗城</a>
										<a href="" class="new-items" target="_blank">乌兰浩特</a>
									</div>
								</li>
							</ul>
						</div>
						<div class="nav-items width94 js-phone">
							<a href="" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
							<div class="phone-code js-phone-code"><img src="<%=path%>/resource/all_product/images/mobile_2.png" alt=""></div>
						</div>
					</div>

				</div>
			</div>
			<!-- 顶部栏 end -->
			<!-- top头部 End-->

			<!--  header  -->
			<div class="pay-header">
				<div class="w1204">
					<div class="logo fl">
						<a class="juo" href="">
							<h1 class="text-hide">聚橙网——文化青年品质生活！</h1></a>
					</div>
					<div class="fast-step">
						<span class="t1 done">1.选择商品</span>
						<span class="t2 done">2.填写核对信息单</span>
						<span class="t3">3.成功提交订单</span>
					</div>
				</div>
			</div>
			<!--  header END  -->

			<div class="w1204">
				<div class="cart">
					<!-- 配送方式 -->
					<table class="cart-tb">
						<colgroup>
							<col class="handle-col">
							<col class="number-col">
						</colgroup>
						<thead>
							<tr>
								<th>配送方式 <span class="tips" style="font-size: 13px;"></span></th>
								<th class="th-number">商品清单</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="cart-ite tab-list" id="js-shipping-wrap">
										<div class="ship-list js-ship-list">
											<ul class="clearfix">
												<li class="active">
													<a data-toggle="tab-list" data-shippingid="1" data-target="tab-address" href="javascript:;">快递 <b class="selected"></b>
													</a>
												</li>
												<li class="">
													<a data-toggle="tab-list" data-shippingid="0" data-target="tab-ask" href="javascript:;">上门取票 <b class="selected"></b>
													</a>
												</li>
												<li class="">
													<a data-toggle="tab-list" data-shippingid="4" data-target="tab-spot" href="javascript:;">现场取票 <b class="selected"></b>
													</a>
												</li>
											</ul>
										</div>
										<!-- 配送方式信息start -->
										<div id="shippingWayInfo">

											<div class="address item active" id="tab-address">

												<div class="address-list hide">
													<ul class="lis" id="address-list">

													</ul>
													<!--<div class="op clearfix"><a href="#" class="switch">收起地址<span class="juofont">&#xe627;</span></a><a href="#" class="n">使用新地址</a></div>-->
													<div class="op clearfix">
														<a href="javascript:;" data-target="#address-list" class="switch">更多地址<span class="juofont js-address-icon"></span></a>
														<a href="javascript:;" class="n new-address js-new-address" data-target="#new-address">使用新地址</a>
													</div>
												</div>

												<form class="new-address show" id="new-address" action="#">
													<ul>
														<li>
															<label class="label"><span class="need">*</span> 收货人：</label>
															<input class="inputxt" name="name" type="text" data-type="*" data-edit="" maxlength="20" id="js-addname">
															<span class="validForm-checktip show">请填写收货人姓名</span>
														</li>
														<li>
															<label class="label"><span class="need">*</span> 所在地区：</label>
															<select class="inputxt selet required" id="province" name="city" data-type="*">
																<option value="">--省/直辖市--</option>

																<option value="2">北京</option>

																<option value="3">安徽</option>

																<option value="4">福建</option>

																<option value="5">甘肃</option>

																<option value="6">广东</option>

																<option value="7">广西</option>

																<option value="8">贵州</option>

																<option value="9">海南</option>

																<option value="10">河北</option>

																<option value="11">河南</option>

																<option value="12">黑龙江</option>

																<option value="13">湖北</option>

																<option value="14">湖南</option>

																<option value="15">吉林</option>

																<option value="16">江苏</option>

																<option value="17">江西</option>

																<option value="18">辽宁</option>

																<option value="19">内蒙古</option>

																<option value="20">宁夏</option>

																<option value="21">青海</option>

																<option value="22">山东</option>

																<option value="23">山西</option>

																<option value="24">陕西</option>

																<option value="25">上海</option>

																<option value="26">四川</option>

																<option value="27">天津</option>

																<option value="28">西藏</option>

																<option value="29">新疆</option>

																<option value="30">云南</option>

																<option value="31">浙江</option>

																<option value="32">重庆</option>

																<option value="33">香港</option>

																<option value="34">澳门</option>

																<option value="35">台湾</option>

																<option value="5461"></option>

															</select>
															<select class="inputxt selet required" id="city" name="city" data-type="*">
																<option value="">--市--</option>
															</select>
															<select class="inputxt selet required" id="district" name="city" data-type="*">
																<option value="">--区--</option>
															</select>
															<span class="validForm-checktip">请填写完整的地区信息</span>
														</li>
														<li>
															<label class="label"><span class="need">*</span> 详细地址：</label>
															<input class="inputxt input-long" id="address" name="address" type="text" data-type="*" maxlength="100">
															<span class="validForm-checktip">请填写收货人详细地址</span>
														</li>
														<li>
															<label class="label"><span class="need">*</span> 手机号码：</label>
															<input class="inputxt" name="mobile" type="text" data-errormsg="请填写正确的手机号" maxlength="15" onkeyup="value=value.replace(/\D/g,'')" onafterpaste="value=value.replace(/\D/g,'')">
															<span class="validForm-checktip">请填写收货人手机号</span>
														</li>
														<li>
															<label class="label">固定号码：</label>
															<input class="inputxt" name="tel" type="text" data-type="tel" data-errormsg="请填写正确的固定电话">
															<span class="validForm-checktip">请填写正确的固定电话</span>
														</li>
														<li>
															<label class="label"> </label>
															<a class="btn no-unl btn-bigger bg-fe5d36" id="submit-new-address">保存收货人信息</a>
														</li>
													</ul>
												</form>
											</div>

										</div>
										<!--end-->
									</div>
								</td>

								<td class="th-number">
									<div class="ft-ite">
										<div class="goods-item js-activity-wrap js-each-goods">

											<div class="ite clearfix">
												<div class="p-img">
													<a href="" target="_blank"><img src="<%=path%>/resource/all_product/images/raoknvohmhuaoxnnaadyxv9hqpe990.jpg" alt="谭咏麟银河岁月40载巡回演唱会2018·天津站"></a>
												</div>
												<div class="p-msg">
													<div class="name">
														<a href="" target="_blank">谭咏麟银河岁月40载巡回演唱会2018·天津站</a>
													</div>
													<p>时间：2018.06.09 19:30 <br>场馆：
														<a href="http://venue.juooo.com/show/1122#seckillD" target="_blank">天津津湾大剧院</a>
													</p>
													<div class="seat-num js-tips-wrap">
														<i class="ico-tip-integral js-ico-tip-integral" data-tip="积分40分可抵扣4.00元"></i>
														<div class="integral-tips popover arrbottom js-integral-tips">
															<div class="arrow"></div>积分40分可抵扣4.00元</div>
														<span class="em">¥80.00</span> x 1
														<!--div class="integral-tips popover arrbottom"><div class="arrow"></div>积分60分可抵扣6元</div-->
													</div>
												</div>
												<div class="seat"><i class="ico-tag-seat"></i></div>
											</div>

										</div>

									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- /配送方式 END -->
					<!--  身份验证-->
					<table class="cart-tb js-idnumber-input" style="display:none">
						<thead>
							<tr>
								<th>身份验证</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="address new-address cart-ite ">
										<ul>
											<li><label class="label"><span class="need">*</span>
								真实姓名:</label> <input class="inputxt w200" name="id_name" type="text" data-type="*"> <span class="validForm-checktip id_name_error">请填写您的姓名</span>
											</li>
											<li><label class="label"><span class="need">*</span>
								身份证号码:</label> <input class="inputxt w200" name="id_number" type="text" data-type="*"> <span class="validForm-checktip id_number_error">请填写您的身份证号码</span>
											</li>
										</ul>
									</div>
									<div class="code-right">
										<a class="btn btn-big bg-ff8226  js-input-bind" href="" data-submit=0>验证并绑定</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<!--  身份验证 END-->
					<!-- 支付方式 -->
					<table class="cart-tb pay-tb">
						<thead>
							<tr>
								<th>支付方式</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="cart-ite">
										<div class="ship-list tab-list">
											<ul class="clearfix js-cart-list">
												<li class="active js-pay-online js-tips-wrap" data-payid="666">
													<a href="">在线支付
														<span class="juofont js-ico-tip-integral" data-tip="提示：支持微信、支付宝、快钱及大多数银行借记卡和部分银行信用卡"></span>
														<b class="selected"></b>
													</a>
													<div class="integral-tips popover arrbottom js-integral-tips">
														<div class="arrow"></div>
														提示：支持微信、支付宝、快钱及大多数银行借记卡和部分银行信用卡
													</div>
												</li>
												<li class="js-COD hide" data-payid="2">
													<a href="">货到付款<b class="selected"></b></a>
												</li>

											</ul>
										</div>
										<div class="bank-discount" id="js-bank-discount">
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- /支付方式 END -->

					<!-- 使用优惠 -->
					<table class="cart-tb favo-tb">
						<colgroup>
							<col class="handle-col">
							<col class="number-col">
						</colgroup>
						<thead>
							<tr>
								<th>使用优惠支付</th>
								<th class="th-number">应付总价</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="discountPage " id="js-discount-page">
										<!-- 积分抵扣 -->
										<div class="js-discount-wrap">
											<div class="tt">
												<b class="b juofont js-fold js-unfold" data-target="#dp-jifen"></b>
												<span class="t">积分抵扣</span><span class="disTotal js-disTotal">（账户积分：<span class="em">30</span>分）
												</span>
											</div>
											<div class="fv-integral hide" id="dp-jifen">
												<input type="hidden" name="isScores" value="0" data-useable-scores="30" data-scoresmoney="4.00" data-scores="40">
												<p class="text-center js-jifen-used">
													您的可用积分<span class="em">30</span>分，本次可用<span class="em">40</span>分（最多抵用现金<span class="em">4.00</span>元）
												</p>
												<p class="text-center">（您的积分不足，无法使用）</p>
											</div>
										</div>
										<!-- 积分抵扣 END -->

										<!-- 橙卡抵扣 -->
										<div class="js-discount-wrap">
										</div>
										<!-- 橙卡抵扣 END -->

										<!-- 账户余额 -->
										<div class="js-discount-wrap">
											<input type="hidden" name="isUserMoeny" value="0" data-usermoney="0.00">
										</div>
										<!-- 账户余额抵扣 END -->

										<!-- 优惠券抵扣 -- START -->

										<!--官网优惠券-- START -->
										<div class="js-discount-wrap">
											<div class="tt">
												<b class="b juofont js-fold" data-target="#dp-coupon"></b> <span class="t">优惠券抵扣</span>
											</div>
											<div class="fv-ticket fv-wraps js-coupon-wraps hide" id="dp-coupon">
												<input type="hidden" name="isCoupon" value="">
												<ul class="lis clearfix js-coupon-list coupon-lis clearfix js-coupon-lis">

												</ul>

												<div class="new-address">
													<ul>
														<li class="text-center ">
															<label class="label">优惠券码：</label>
															<input class="inputxt" type="text" id="js-coupon-password">
															<button class="btn btn-small" id="js-exchange">兑换</button>
															<span class="error hide js-error must">密码错误</span>
														</li>

													</ul>
												</div>
											</div>

										</div>
										<!--官网优惠券-- END -->

										<!-- 文惠卡新增 2017/10/24 by wancui&chendanfeng(PHP)-- START ---->
										<div class="js-discount-wrap hide" id="other_coupon_big_div">
											<div class="tt">
												<b class="b juofont js-fold" data-target="#dp-coupon3"></b>
												<span class="t w120">第三方优惠券抵扣</span>
											</div>
											<div class="fv-wraps js-coupon-wraps hide" id="dp-coupon3">
												<ul class="coupon-lis clearfix js-coupon-lis" id="wenhui_coupon_info">

												</ul>
												<div class="coupon-input-boxes js-coupon-input-boxes">
													<span class="coupon-input-t">文惠卡通用券码:</span>
													<div class="coupon-input-wraps">
														<input type="text" maxlength="16" class="js-coupon-input" id="wenhui_coupon_input">
														<span class="coupon-ctext js-coupon-change" id="js_wenhui_exchange">兑换</span>
													</div>
													<span class="coupon-mes red hide js-coupon-mes">优惠券码不存在或已被使用</span>
												</div>
												<p class="coupon-mes coupon-info">应第三方要求，提交订单即会核销券码。订单支付失败券码不予返还。</p>
											</div>
										</div>
										<!-- 文惠卡新增 2017/10/24 by wancui&chendanfeng(PHP)-- END ---->

										<!-- 优惠券抵扣 -- END -->

										<!-- 订单备注 -->
										<div class="remark js-remark">
											<div class="remark-show js-remark-show">
												<span class="t">订单备注：</span>
												<input type="text" placeholder="可以填写您对商品的其他要求" class="inputxt input-long" maxlength="100" name="orderRemarks">
											</div>
										</div>
										<!-- 订单备注 END-->
									</div>
								</td>
								<td class="th-number">
									<div class="total">
										<ul>
											<li>商品合计：<span class="num">¥<span id="js-product-money">80.00</span></span>
											</li>
											<li>运费合计：<span class="num">¥<span id="js-delivery-money">10.00</span></span>
											</li>
											<li class="discount ">抵扣：<span class="num lose">-¥<span id="js-discount-all-money">10.00</span></span>
												<span class="trian js-click-show " data-target="#th-discount-info"></span>
												<div class="discount-info" id="th-discount-info">
													<p>积分抵扣：<span class="n">-¥<span id="js-jifen-money">20.00</span></span>
													</p>
													<p>橙卡抵扣：<span class="n">-¥<span id="js-juooocard-money">5.00</span></span>
													</p>
													<p>余额抵扣：<span class="n">-¥<span id="js-left-money">5.00</span></span>
													</p>
													<p>优惠券抵扣：<span class="n">-¥<span id="js-coupon-money">5.00</span></span>
													</p>
												</div>
											</li>
											<li>优惠：<span class="num lose">-¥<span id="js-discount-money">4.00</span></span>
											</li>
											<li class="last_total" style="display: none">电子票立减：<span class="num lose">-¥<span id="js-shippingid-money">5.00</span></span>
											</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- /使用优惠 END-->

					<!-- 提交订单栏 -->
					<div class="cart-toolbar">
						<input type="hidden" value="bfa299c365230359df86737f72e4a937" name="_k">
						<input type="hidden" value="1" name='orderType'>
						<input type="hidden" value="buyTicket" name='orderClass'>
						<input type="hidden" value="15" name='cityId'>
						<input type="hidden" value="458" name='venueId'>
						<input type="hidden" value="2" name='method'>
						<input type="hidden" value="0" name='eticket'>
						<input type="hidden" value="35" name='cateParentId'>
						<input type="hidden" value="780.00" name='orderAmount'>
						<input type="hidden" value="780.00" name='orderAmountAct'>
						<input type="hidden" value="780.00" name='actualAmount'>
						<input type="hidden" value="409790" name='ticketid_string'>
						<input type="hidden" value="0" name='scores'>
						<input type="hidden" value="0.00" name='scoresMoney'>
						<input type="hidden" value="1" name='sell_status'>
						<input type="hidden" value="0.00" name='shippingFree'>
						<input type="hidden" value="" name='shippingId'>
						<input type="hidden" value="85027" name='schedular_id'>
						<input type="hidden" value="0" name='userCertificationId'>
						<div class="serve">
							<div class="serve-box">
								<input type="checkbox" checked='checked' name="tiaokuang" class="js-tiao-kuang"> 我已阅读并同意
								<a class="link" href="" target="_blank" style="text-decoration:none">《服务条款》</a>
								<a class="link" href="" target="_blank" style="text-decoration:none">《服务条款》</a>
								<a class="link" href="" target="_blank" style="text-decoration:none">《退换货协定》</a>
							</div>
						</div>
						应付总额：<i class="yen">¥</i><strong class="f-constantia" id="js-need-money">41.00</strong>

						<a class="btn no-unl btn-large bg-fe5d36" href="payPage.html" id="submitOrder">提交订单</a>

					</div>
					<!-- 提交订单栏 END-->
				</div>
			</div>

			<!-- Loading效果 -->
			<div class="loading-page hide js-loading-page">
				<div class="loading-bg"></div>
				<div class="loading-wrap">
					正在提交，请稍后...
				</div>
			</div>
			<!-- Loading效果 END -->

			<!-- 底部 -->
			<div class="new-footer">
				<div class="wrap1">
					<div class="s1 w1200">
						<div class="con con1">
							<div class="title1">帮助中心</div>
							<div class="help-list">
								<a href="" class="help-items ml0" target="_blank">新手指南</a>
								<a href="" class="help-items" target="_blank">支付方式</a>
								<a href="" class="help-items" target="_blank">售后服务</a>
								<a href="" class="help-items ml0" target="_blank">购票指南</a>
								<a href="" class="help-items" target="_blank">配送方式</a>
							</div>
						</div>
						<div class="con line"></div>
						<div class="con con2">
							<div class="title1">400-185-8666</div>
							<div class="time">周一至周五： 08:30-20:00</div>
							<div class="time">周　　　末： 08:30-18:00</div>
						</div>
						<div class="con line"></div>
						<div class="con con3">
							<div class="box1">
								<div class="img-box">
									<img src="<%=path%>/resource/all_product/images/ticket_2.png" alt="">
								</div>
								<p class="code-text">聚橙票务</p>
							</div>
							<div class="box1">
								<div class="img-box">
									<img src="<%=path%>/resource/all_product/images/show_2.png" alt="">
								</div>
								<p class="code-text">聚橙演艺</p>
							</div>
						</div>
					</div>
				</div>
				<div class="wrap2">
					<div class="s2 w1200">
						<div class="h1">
							<p class="m-text">聚橙旗下子品牌：</p>
							<div class="brand-list">
								<a href="" class="brand-items" target="_blank">小橙堡</a>
								<a href="" class="brand-items" target="_blank">万有音乐系</a>
								<a href="" class="brand-items" target="_blank">聚橙音乐剧</a>
							</div>
						</div>
						<div class="h2">
							<div class="company art">
								<p class="s-title">高雅艺术 商业联盟</p>
								<a href="" class="c-items bg-icon yixin"></a>
								<a href="" class="c-items bg-icon logo1"></a>
								<a href="" class="c-items bg-icon zdf"></a>
								<a href="" class="c-items bg-icon cmtj"></a>
								<a href="" class="c-items bg-icon logo2"></a>
							</div>
							<!-- <div class="company c-line"></div> -->
							<div class="company trade">
								<p class="s-title">万有音乐商业联盟</p>
								<a href="" class="c-items bg-icon asus"></a>
								<a href="" class="c-items bg-icon xl"></a>
								<a href="" class="c-items bg-icon afu"></a>
								<!-- <a href="javascript:;" class="c-items bg-icon moi"></a> -->
							</div>
							<!-- <div class="company c-line"></div> -->
							<div class="company child">
								<p class="s-title">亲子演出商业联盟</p>
								<a href="" class="c-items bg-icon jili"></a>
								<a href="" class="c-items bg-icon oo"></a>
								<a href="" class="c-items bg-icon yy"></a>
								<a href="" class="c-items bg-icon vz"></a>
							</div>
						</div>
						<<div class="h3">
							<a class="tab-items" href="" target="_blank" title="关于我们">关于我们</a>
							<a class="tab-items" href="" target="_blank" title="联系我们">联系我们</a>
							<a class="tab-items" href="" target="_blank" title="加入我们">加入我们</a>
							<a class="tab-items" href="" target="_blank" title="服务条款">服务条款</a>
							<!-- <a href="javascript:;" class="tab-items" target="_blank">加盟聚橙</a> -->
							<a href="" class="tab-items" target="_blank">媒体报道</a>
							<a href="" class="tab-items" target="_blank">合作伙伴</a>
							<a href="" class="tab-items" target="_blank">友情链接</a>
							<a href="" class="tab-items" target="_blank">网站地图</a>

					</div>
					<div class="h4">
						<p class="tab-text">Copyright 2007-2018 © 深圳市聚橙演艺联盟票务有限公司 | 粤ICP备17063893号-2</p>
						<div class="text-box">
							<i class="bg-icon gongan"></i>
							<p class="tab-text">粤公网安备 44030502000578号</p>
						</div>
					</div>
					<div class="h5">
						<a class="safe-items bg-icon police" href="" target="_blank" title="深圳网络警察报警平台"></a>
						<a class="safe-items bg-icon watch" href="" target="_blank" title="公共信息安全网络监察"></a>
					</div>
				</div>
			</div>
		</div>
		<!--返回头部-->

		<div class="siderbar-right" id="js-head-logo">
			<!--美洽按钮-->
			<a id="juo-meiqia">
				<span class="sidebar-icon icon-tel-right"></span>
				<div class="sidebar-text tel-num"></div>
			</a>
			<a class="js-weixin-icon">
				<span class="sidebar-icon icon-weixin"></span>
				<div class="sidebar-text weixin-num"></div>
			</a>
			<a>
				<span class="sidebar-icon icon-phone-right"></span>
				<div class="sidebar-text phone-num"></div>
			</a>
			<!-- <a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzkzODA2ODc4Nl8yNjQwMjJfNDAwMTg1ODY2Nl8yXw" target="_blank">
        <span class="sidebar-icon icon-qq"></span>
        <div class="sidebar-text qq-contact"></div>
    </a> -->

			<a id="js-top">
				<span class="sidebar-icon icon-top"></span>
				<div class="sidebar-text back-to-top"></div>
			</a>

		</div>

		<div style="display:none">
			<!-- 百度站长平台 -->
			<!-- <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?43215f86e988d934ac6f0e6f63f2c0a8";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script> -->

			<!-- 推广平台 -->
			<!-- <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?214739940fca835e1b074f9d8be81ccb";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script> -->

			<!-- CNZZ平台： -->
			<script src='<%=path%>/resource/all_product/js/stat.js' language='JavaScript' charset='utf-8'></script>

			<!-- 品友 访客统计  新版-->
			<script type='text/javascript'>
				(function(w, d, s, l, a) {
					w._CommandName_ = l;
					w[l] = w[l] || function() {
						(w[l].q = w[l].q || []).push(arguments);
						w[l].track = function() {
							(w[l].q[w[l].q.length - 1].t = []).push(arguments)
						};
						return w[l]
					}, w[l].a = a, w[l].l = 1 * new Date();
					var c = d.createElement(s);
					c.async = 1;
					c.src = '//fm.ipinyou.com/j/a.js';
					var h = d.getElementsByTagName(s)[0];
					h.parentNode.insertBefore(c, h);
				})(window, document, 'script', 'py', 'wn84T..2SKw9KcG0NuT559gULJ5aX');
				py('event', 'viewPage');
			</script>

			<!-- AG网盟 -->
			<script>
				(function(a, b, c, d, e) {
					var s = b.createElement(c);
					s.async = 1;
					s.src = '//t.agrantsem.com/tg.js?ang_tj=true&c=' + d + '&t=' + e;
					var r = b.getElementsByTagName(c)[0];
					r.parentNode.insertBefore(s, r);
				})(window, document, 'script', 'AG_400767_XIVB', '1');
			</script>

			<script>
				var _jc = _jc || [];
				_jc.push(['_setAccount', 'juooo']);
				_jc.push(['_cid', '0']);
				_jc.push(['_ocn', '']);
				_jc.push(['_occid', '0']);
				_jc.push(['_ocpu', '0']);
				_jc.push(['_ocpn', '0']);
				(function() {
					var ma = document.createElement('script');
					ma.type = 'text/javascript';
					ma.async = true;
					ma.src = 'https://click.juooo.com/' + 'public/Home/web/<%=path%>/resource/all_product/js/ma.js';
					var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(ma, s);
				})();
			</script>
		</div>

		<!--返回头部-->
		<script type="text/javascript" src="<%=path%>/resource/all_product/js/sea.js" id="seajsnode"></script>
		<script type="text/javascript" src="<%=path%>/resource/all_product/js/modules-config.js"></script>

		<!--美洽插件-->
		<script type='text/javascript'>
			(function(m, ei, q, i, a, j, s) {
				m[i] = m[i] || function() {
					(m[i].a = m[i].a || []).push(arguments)
				};
				j = ei.createElement(q),
					s = ei.getElementsByTagName(q)[0];
				j.async = true;
				j.charset = 'UTF-8';
				j.src = 'https://static.meiqia.com/dist/meiqia.js?_=t';
				s.parentNode.insertBefore(j, s);
			})(window, document, 'script', '_MEIQIA');
			_MEIQIA('entId', 69958);
			_MEIQIA('withoutBtn'); //开启无按钮模式
			_MEIQIA('getPanelVisibility', function(visibility) {
				if(visibility === 'visible') {
					console.log('聊天窗口处于显示状态');
				} else {
					console.log('聊天窗口处于隐藏状态');
				}
			});
			_MEIQIA('init'); //初始化
		</script>

		<script>
			// $(function(){
			seajs.use(['jquery', 'swiperNew', 'mouseWheel', 'adaptivebg', 'title', 'juo'], function($) {
				/**
				 * mark:导航，头部，底部交互
				 * author：wancui
				 * modify：LiuWei
				 * time: 2017/8/4
				 */

				//网站导航
				$('.js-net').on('mouseenter', function() {
					$(this).addClass('active');
					$('.js-net-list').addClass('active');
				}).on('mouseleave', function() {
					$(this).removeClass('active');
					$('.js-net-list').removeClass('active');
				});

				//二维码显示
				$('.js-phone').on('mouseenter', function() {
					$(this).addClass('active');
					$('.js-phone-code').addClass('active');
				}).on('mouseleave', function() {
					$(this).removeClass('active');
					$('.js-phone-code').removeClass('active');
				});

				//关闭广告
				$('.js-nav-close').on('click', function(e) {
					e.preventDefault();
					$('.js-nav-banner').hide();
				});

				// 选择城市
				$('.js-choose-city').on('mouseenter', function() {
					$('.js-allcity-box').addClass('active');
				}).on('mouseleave', function() {
					$('.js-allcity-box').removeClass('active');
				});

				//选择城市“关闭”按钮
				$('.js-close-city').on('click', function() {
					$('.js-allcity-box').removeClass('active');
				});

				//搜索框(ie8)
				$('.js-search').on('input propertychange focus', function() {
					$('.js-search-result').addClass('active');
				}).on('blur', function() {
					$('.js-search-result').removeClass('active');
				});

				//自定义模块(非index页)
				$('.js-module-more').on('mouseenter', function() {
					$(this).addClass('active');
					$('.js-module-box').addClass('active');
				});
				$('.js-module-box').on('mouseleave', function() {
					$(this).removeClass('active');
					$('.js-module-more').removeClass('active');
				});

				//头部 侧边导航
				$('.js-kind-link').on('mouseenter', function() {
					$('.js-kind-link').removeClass('active');
					$(this).addClass('active');
					$('.js-right-detail').addClass('active');
					$('.js-kind-details').removeClass('active');
					$('.js-kind-details').eq($(this).index()).addClass('active');
				});
				$('.js-kind-list').on('mouseleave', function() {
					$('.js-right-detail,.js-kind-details,.js-kind-link').removeClass('active');
				});

				//头部侧边导航(非首页)
				$('.js-nav-item').on('mouseenter', function() {
					$(this).find('.js-nav-link').addClass('active');
					$(this).find('.js-kind-list').addClass('active');
				}).on('mouseleave', function() {
					$(this).find('.js-nav-link').removeClass('active');
					$(this).find('.js-kind-list').removeClass('active');
				});

				//banner轮播图
				var slideFlag = true;
				var bannerSwiper = new Swiper('.banner-container', {
					pagination: '.pagination',
					wrapperClass: 'banner-wrapper', //包裹层
					slideClass: 'banner-item', //滑块设置
					mode: 'horizontal',
					initialSlide: 0,
					loop: true,
					autoplay: 6000, //自动播放间隔时间
					speed: 800,
					grabCursor: true,
					paginationClickable: true,
					autoplayDisableOnInteraction: false,
					onSlideChangeStart: function(swiper) {
						var curSlide = swiper.activeSlide();
						var bgColor = $(curSlide).attr('data-bg-color');
						console.log(bgColor)
						$('.main-banner').css('background-color', bgColor);
						/*$(curSlide).siblings().each(function(){
						    $(this).find('img').attr('data-adaptive-background','');
						})

						$(curSlide).find('img').attr('data-adaptive-background','1');
						$.adaptiveBackground.run(
						    {
						        parent: '.main-banner'//父节点
						    }
						);*/

					},
					onSlideChangeEnd: function() {
						slideFlag = true;
					}
				});

				$('.banner-prev').on('click', function(e) {
					e.preventDefault();
					if(slideFlag) {
						bannerSwiper.swipePrev();
						slideFlag = false;
					}
				});

				$('.banner-next').on('click', function(e) {
					e.preventDefault();
					if(slideFlag) {
						bannerSwiper.swipeNext();
						slideFlag = false;
					}
				});

				//吸取均色
				/*if($('.main-banner').length > 0){
				    $.adaptiveBackground.run(
				        {
				            parent: '.main-banner'//父节点
				        }
				    );            
				}*/
				//初始时banner的背景
				if($('.main-banner').length > 0) {
					//var initBgColor = $('.main-banner .banner-item').eq(0).attr('data-bg-color');
					var initBgColor = $('.main-banner .banner-item.swiper-slide-active').attr('data-bg-color');
					console.log(initBgColor)
					$('.main-banner').css('background-color', initBgColor);
					if($('.main-banner .default-img').length > 0) {
						$('.main-banner').css('background-color', $('.main-banner .default-img').attr('data-bg-color'));
					}
				}
				/* 头部js end */

				//返回头部
				$('#js-top').on('click', function() {
					$('body,html').animate({
						scrollTop: 0
					});
				});
				//          美洽
				$('#juo-meiqia').on('click', function() {
					_MEIQIA('showPanel'); //打开美洽聊天窗
				});

				//获取顶部广告信息
				var cityId = "";
				var cateId = "";
				var scid = "";
				var topAdSymbol = "JAT";
				getSiteTopAdvertInfo(cateId, cityId, scid, topAdSymbol);

				//获取全站右侧浮标广告位
				var allSiteRightSymbol = 'JRF';
				getSiteRightAdvertInfo(allSiteRightSymbol);

				function getSiteTopAdvertInfo(cateId, cityId, scid, symbol) {
					$.ajax({
						type: 'POST',
						url: "https://m.juooo.com/Advert/getAdMap",
						dataType: 'jsonp',
						data: {
							cateId: cateId,
							cityId: cityId,
							scid: scid,
							symbol: symbol,
							ajax_type: 'jsonp',
						},
						jsonp: 'callback',
						async: false,
						success: function(result) {
							if(result.code == 1 && result.data) {
								var advertInfo = '';
								advertInfo += '<a target="_blank" style="text-align:center;display: block;"';
								advertInfo += 'href="' + result.data.url + '">';
								advertInfo += '<img style="width:1200px;heihgt:80px;"';
								advertInfo += 'src="<%=path%>/resource/all_product/images/44678602b1544d0ea931383d0c575caa.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
								advertInfo += '</a>';
								$(".top-advert").append(advertInfo);
							}
						}
					});
				}

				function getSiteRightAdvertInfo(symbol) {
					$.ajax({
						type: 'POST',
						url: "https://m.juooo.com/Advert/getAdMap",
						dataType: 'jsonp',
						data: {
							symbol: symbol,
							ajax_type: 'jsonp'
						},
						jsonp: 'callback',
						async: false,
						success: function(result) {
							if(result.code == 1 && result.data) {
								var html = '<a class="xjj"';
								html += 'href="' + result.data.url + '" target="_blank">';
								html += '<img src="<%=path%>/resource/all_product/images/44678602b1544d0ea931383d0c575caa.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
								html += '</a>';
								$('.js-weixin-icon').before(html);
							}
						}
					});
				}

				//热门明星
				var starSwiper = new Swiper('#star1', {
					pagination: '.sp1', //翻页器
					wrapperClass: 'star-wrapper', //包裹层
					slideClass: 'star-item', //滑块设置
					mode: 'horizontal',
					autoplay: 6000, //自动播放间隔时间
					loop: true,
					grabCursor: true,
					paginationClickable: true
				});

				var starSwiper2 = new Swiper('#star2', {
					pagination: '.sp2', //翻页器
					wrapperClass: 'star-wrapper', //包裹层
					slideClass: 'star-item', //滑块设置
					mode: 'horizontal',
					autoplay: 6000, //自动播放间隔时间
					loop: true,
					grabCursor: true,
					paginationClickable: true
				});

				//热门评论
				var reviewSwiper = new Swiper('#review1', {
					pagination: '.rp1', //翻页器
					wrapperClass: 'review-wrapper', //包裹层
					slideClass: 'review-item', //滑块设置
					mode: 'horizontal',
					autoplay: 6000, //自动播放间隔时间
					loop: true,
					grabCursor: true,
					paginationClickable: true
				});

				//其他城市悬停
				$('.oc-btn,.oc-wrap').on('mouseenter', function() {
					$('.oc-wrap').css('display', 'block');
				}).on('mouseleave', function() {
					$('.oc-wrap').css('display', 'none');
				})

				/**
				 * mark:判断浏览器的方法
				 * author: LiuWei
				 * time: 2017/8/2
				 */
				function browserType() {
					var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
					var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
					// var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
					var isIE = window.ActiveXObject || "ActiveXObject" in window
					// var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
					var isEdge = userAgent.indexOf("Edge") > -1; //判断是否IE的Edge浏览器
					var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
					var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器
					var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1 && !isEdge; //判断Chrome浏览器

					if(isIE) {
						var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
						reIE.test(userAgent);
						var fIEVersion = parseFloat(RegExp["$1"]);
						if(userAgent.indexOf('MSIE 6.0') != -1) {
							return "IE6";
						} else if(fIEVersion == 7) {
							return "IE7";
						} else if(fIEVersion == 8) {
							return "IE8";
						} else if(fIEVersion == 9) {
							return "IE9";
						} else if(fIEVersion == 10) {
							return "IE10";
						} else if(userAgent.toLowerCase().match(/rv:([\d.]+)\) like gecko/)) {
							return "IE11";
						} else {
							return "0"
						} //IE版本过低
					} //isIE end

					if(isFF) {
						return "FF";
					}
					if(isOpera) {
						return "Opera";
					}
					if(isSafari) {
						return "Safari";
					}
					if(isChrome) {
						return "Chrome";
					}
					if(isEdge) {
						return "Edge";
					}
				}

				//返回顶部
				$('.item-top').on('click', function() {
					$('body,html').animate({
						scrollTop: 0
					}, 600);
				})

				//悬浮到swiper的分页器上模拟点击事件
				/*		$('.swiper-pagination-switch').on('mouseenter',function(e){
				            $(this).trigger('click');
				        })*/

			});
		</script>

	</body>

</html>
<!-- 品乐 -->
<script>
	! function(w, d, e) {
		var b = location.href,
			c = d.referrer,
			f, s, g = d.cookie,
			h = g.match(/(^|;)\s*ipycookie=([^;]*)/),
			i = g.match(/(^|;)\s*ipysession=([^;]*)/);
		if(w.parent != w) {
			f = b;
			b = c;
			c = f;
		};
		u = '//stats.ipinyou.com/cvt?a=' + e('wn84T.0Mh.4fb-kQS5CkYcbdIDk--Y4_') + '&c=' + e(h ? h[2] : '') + '&s=' + e(i ? i[2].match(/jump\%3D(\d+)/)[1] : '') + '&u=' + e(b) + '&r=' + e(c) + '&rd=' + (new Date()).getTime() + '&e=';

		function _() {
			if(!d.body) {
				setTimeout(_(), 100);
			} else {
				s = d.createElement('script');
				s.src = u;
				d.body.insertBefore(s, d.body.firstChild);
			}
		}
		_();
	}(window, document, encodeURIComponent);
</script>
<!-- 底部-->
<script type="text/javascript">
	var ajaxUrl = 'http://buy.juooo.com/Index/ajax';
	var orderClass = 'buyTicket';
	var orderType = '1';
	var _k = 'bfa299c365230359df86737f72e4a937';
	var cardId = '';
	var isRealName = '0';
	var isStudent = '0';
	var deductNum = '0';
	var isYoungActivity = '0';
	var systemData = {
		method: 2,
		cardPayWay: 0,
	};

	//引入index
	seajs.use(['jquery', 'layer', 'Dialog', 'optionCookie', 'tabsCommon', 'juo', 'fastTicket'], function($, layer, Dialog, fastTicket) {
		/**
		 * @Author: huangjiajia
		 * @Description：支付页面js
		 * @Date:   2016/5/3
		 * @Last Modified by:   huangjiajia
		 */
		//define(function (require, exports, module) {
		// exports.init = function () {
		//   var $     = require('jquery'),
		//       layer = require('layer'),
		var $body = $('body'),
			LOCATION_URL = window.location.href.split('#')[0];

		//周边商品现场取货js
		$('#shippingWayInfo').on('focus', '.js-onsite-ticket-city,.js-onsite-ticket-time,.js-view-city', function() {
			$(this).removeClass('c9');
			if($(this).hasClass('js-onsite-ticket-time')) {
				var otherSec = $(this).parent().siblings('li').find('select');
				var otherValue = otherSec.find('option:checked').val();
				if(otherValue == 0) {
					otherSec.siblings('.validForm-checktip').addClass('active');
				} else {
					otherSec.siblings('.validForm-checktip').removeClass('active');
					$('.js-show-infos').removeClass('hide');
				}
			}
		}).on('blur', '.js-onsite-ticket-city,.js-onsite-ticket-time,.js-view-city', function() {
			if($(this).find('option:checked').val() == 0) {
				$(this).siblings('.validForm-checktip').addClass('active');
				$(this).addClass('c9');
			} else {
				$(this).siblings('.validForm-checktip').removeClass('active');
				$(this).removeClass('c9');
			}
			//配送方式为7时城市选择
		}).on('change', '#tab-show select.js-onsite-ticket-city', function() {
			var val = $(this).val();
			var json = '[]';
			var venueName = '';
			var venueAddress = '';
			var venueObj = $('#shippingWayInfo #tab-show').find('select.js-onsite-ticket-time');

			if(val != '') {
				json = $(this).find('option:selected').attr('data-venue') || '[]';
				venueName = venueObj.find('option:selected').attr('data-venue') || '';
				venueAddress = venueObj.find('option:selected').attr('data-address') || '';
			}
			json = $.parseJSON(json);
			var i, html = '<option value="">选择场次</option>';
			for(i in json) {
				html += '<option value="' + json[i].id + '" data-venue="' + json[i].venue_name + '"  data-address="' + json[i].venue_address + '">' + json[i].display + '</option>';
			}
			venueObj.html(html);

			$('#shippingWayInfo  #tab-show').find('.venue-name').text(venueName);
			$('#shippingWayInfo  #tab-show').find('.venue-address').text(venueAddress);
			//场馆选择处理
		}).on('change', '#tab-show select.js-onsite-ticket-time', function() {
			var venueName = $(this).find('option:selected').attr('data-venue') || '';
			var venueAddress = $(this).find('option:selected').attr('data-address') || '';
			$('#shippingWayInfo  #tab-show').find('.venue-name').text(venueName);
			$('#shippingWayInfo  #tab-show').find('.venue-address').text(venueAddress);
		})
		//周边商品现场取货js_end

		$(function() {
			var shippingObj = $('.ship-list .active');
			getShiipingInfo(shippingObj);
			//getBankActivityList();  //支付方式里获取银行活动列表--cui--2018.2.23--银行活动在支付方式里显示列表去除
			getSalePayInfo();
			if(isRealName == 1) {
				getUserIdNumber();
			}

			if(isStudent == 1) {
				getStudentCert();
			}

			/*
			 * 商品活动如果有会员活动，默认选中会员活动 - 5.1 / 9.23 /huangjiajia
			 * .js-each-goods -> .js-match-list -> .js-match-item -> .js-item-type text()
			 */
			$('.js-each-goods .js-match-list').each(function() {
				var $this = $(this),
					$matchItem = $this.find('.js-match-item');

				$matchItem.each(function() {
					var $itemThis = $(this),
						$itemType = $itemThis.find('.js-item-type'),
						itemTypeText = $.trim($itemType.text());

					if(itemTypeText == '会员' || itemTypeText == '折扣') {
						selectedGoodsActivity($itemThis);
					}
				});
			})

		});

		/*
		 * 初始化页面样式
		 * 1. 欢聚橙卡支付 -> 优惠支付列表置灰 .js-cart-list li.active -> .js-year-card -> .js-cart-list li click
		 * 2. 全额积分兑换 -> 默认使用积分兑换 orderClass = scoresTicket -> #js-discount-page #dp-jifen .
		 * 3. 如果配送费方式默认是电子票，显示电子票引导页
		 */
		if($body.find('.js-cart-list li.active').hasClass('js-year-card')) {
			var $discountPage = $('#js-discount-page');

			$discountPage.addClass('disabled');
		}

		//电子票配送方式立减优惠
		function checkEShippingDeduction() {
			if(systemData.method == 1 && (orderClass == 'buyTicket' || orderClass == 'seatTicket')) {
				if(systemData.cardPayWay != 0 && systemData.cardPayWay == 3) {
					$('.e-shipping-deduction-tag').show();
					$('.last_total').show()
					$('#js-shippingid-money').html('10.00');
				}

				if(systemData.cardPayWay == 0) {
					$('.e-shipping-deduction-tag').show();
					$('.last_total').show()
					$('#js-shippingid-money').html('10.00');
				}
			}
		}

		// 默认配送方式为电子票，显示电子票引导页
		if($body.find('.js-ship-list li.active a').attr('data-shippingid') == 2) {

			checkEShippingDeduction();

			if(!$.getCookie('isETicketFirst')) {
				// 设置cookie
				$.setCookie('isETicketFirst', 1, 36600);
				createETicketDOM($('.js-ship-list li.active'));
			} else {
				$.setCookie('isETicketFirst', $.getCookie('isETicketFirst') * 1 + 1, 36600)
			}
		}

		// 点击电子票旁边的那个小问号  出现电子票引导页 .js-leading-icon
		$body.on('click', '.js-leading-icon', function() {
			createETicketDOM($('.js-ship-list li.active'));
		});

		/**
		 * 创建电子票引导页 #js-leading-wrap
		 */
		function createETicketDOM(dom) {
			var html = '',
				$leadWrap;

			if(dom.find('#js-leading-wrap').length == 0) {
				html += '<div class="buy-bom" id="js-leading-wrap" style="display: block;">';
				html += '<div class="buy-bom-bg js-leading-bg" style=""></div>';
				html += '<div class="buy-bom-delete" id="js-leading-close"></div>';
				html += '<div class="buy-bom-box swiper-container">';
				html += '<div class="swiper-wrapper">';
				html += '<div class="swiper-slide act" id="leadingA"><img src="<%=path%>/resource/all_product/images/ticket-one-1.png" alt=""></div>';
				html += '<div class="swiper-slide" id="leadingB"><img src="<%=path%>/resource/all_product/images/ticket-two-1.png" alt=""></div>';
				html += '<div class="swiper-slide" id="leadingC"><img src="<%=path%>/resource/all_product/images/ticket-three-1.png" alt=""></div>';
				html += '</div>';
				html += '<a href="javascript:;" class="swiper-button-next js-leading-btn" data-target="#leadingA"></a>';
				html += '<a href="javascript:;" class="swiper-button-next js-leading-btn" data-target="#leadingB" style="display: none;"></a>';
				html += '<a href="javascript:;" class="swiper-button-next swiper-button-last js-leading-btn js-leading-last hide" data-target="#leadingC" style="display: none;"></a>';
				html += '<div class="swiper-pagination js-leading-pagination">';
				html += '<span class="list-swiper act" data-target="#leadingA"> </span>';
				html += '<span class="list-swiper" data-target="#leadingB"></span>';
				html += '<span class="list-swiper" data-target="#leadingC"></span>';
				html += '</div>';
				html += '</div>';
				html += '</div>';

				dom.append(html);
			} else {
				$leadWrap = dom.find('#js-leading-wrap');
				$leadWrap.css('display', 'block');
				$leadWrap.find('.list-swiper').eq(0).trigger('mouseenter');
			}

		}

		// 电子票引导页 -> 点击下一步按钮
		$body.on('click', '#js-leading-wrap .js-leading-btn', function(e) {
			e.stopPropagation(); // 阻止事件捕获

			var $this = $(this),
				index = $this.index(),
				selector = $this.data('target'),
				$leadingWrap = $body.find('#js-leading-wrap');

			$leadingWrap.find('.js-leading-pagination .list-swiper[data-target="' + selector + '"]').next().trigger('mouseenter');

			if(index < 2) {
				$leadingWrap.find('.js-leading-btn').addClass('hide');
				$leadingWrap.find('.js-leading-btn').eq(index + 1).removeClass('hide');
			}

		});

		// 电子票引导页 -> 下面小圆圈hover事件
		$body.on('mouseenter', '#js-leading-wrap .list-swiper', function() {
			var $this = $(this),
				selector = $this.data('target'),
				$target = $(selector),
				$leadingWrap = $body.find('#js-leading-wrap');

			$leadingWrap.find('[id^="leading"]').removeClass('act');
			$target.addClass('act');
			$leadingWrap.find('.js-leading-btn').css('display', 'none');
			$leadingWrap.find('.js-leading-btn[data-target="' + selector + '"]').css('display', 'block');

			$this.siblings('.list-swiper').removeClass('act');
			$this.addClass('act');

		});

		// 电子票引导页 -> 关闭引导页
		$body.on('click', '#js-leading-wrap .js-bg-leading,#js-leading-wrap .js-leading-last,#js-leading-close, #js-leading-wrap .js-leading-bg', function() {
			$body.find('#js-leading-wrap').css('display', 'none');
		});

		// *************************** 选择配送方式 ************************* /
		// 显示地址列表
		$body.on('click', '#shippingWayInfo .switch', function() {
			var $this = $(this),
				target = $this.data('target');

			if($this.hasClass('show')) {
				$(target).find('.itm').removeClass('block');
				$this.removeClass('show');
				$this.html('更多地址<span class="juofont">&#xe627;</span>');
			} else {
				$(target).find('.itm').addClass('block');
				$this.addClass('show');
				$this.html('收起地址<span class="juofont active">&#xe627;</span>');
			}
		});

		// 使用新地址
		$body.on('click', '#shippingWayInfo .js-new-address', function() {
			var $this = $(this),
				target = $this.data('target');

			$(target).removeClass('hide');
			$(target).find('input').val('');
			$('#submit-new-address').attr('data-addressid', 0);

			$('.validForm-checktip').hide();
		});

		// 修改地址
		$body.on('click', '#shippingWayInfo #address-list .js-edit', function(e) {
			//阻止冒泡
			e.stopPropagation();
			var $this = $(this),
				$parentAddr = $this.parent('li'),
				name = $parentAddr.find('.name').text(),
				mobile = $parentAddr.find('.mobile').data('mobile'),
				tel = $parentAddr.find('.mobile').data('tel'),
				provinceId = $parentAddr.find('.province').data('id'),
				cityId = $parentAddr.find('.city').data('id'),
				districtId = $parentAddr.find('.district').data('id'),
				address = $parentAddr.find('.address').text(),
				addressId = $this.data('addressid');

			var $target = $($this.attr('href'));
			$target.removeClass('hide');
			$target.find("input[name='name']").val(name).attr('data-edit', $parentAddr.index());
			$target.find("input[name='address']").val(address);
			$target.find("input[name='mobile']").val(mobile);
			$target.find("input[name='tel']").val(tel);

			var province = $('#province'),
				city = $('#city'),
				district = $("#district");

			// 地址三级联动
			province.val(provinceId);

			var cityList = getRegion(provinceId, 2);

			city.empty();
			city.append(cityList).val(cityId);

			var districtList = getRegion(cityId, 3);
			district.empty();
			district.append(districtList).val(districtId);

			$("#submit-new-address").attr('data-addressId', addressId);

			$('.validForm-checktip').hide();

		});

		// 表单验证
		function validateForm(dom) {
			var $input = dom.find('input'),
				$select = dom.find('select'),
				isCorrect = true,
				msg = '';

			$input.each(function() {
				isCorrect = checkInput($(this)) !isCorrect && (msg += 'false');
			});

			$select.each(function() {
				isCorrect = checkSelect($(this)) !isCorrect && (msg += 'false');
			});

			msg != '' && (isCorrect = false);
			return isCorrect;
		}

		// 单个input验证
		function checkInput(dom) {
			var $this = dom,
				inputType = $this.attr('data-type'),
				inputVal = $this.val(),
				$inputTips = $this.next('.validForm-checktip'),
				inputErrmsg = $this.attr('data-errormsg'),
				inputReg,
				inputReg1,
				isCorrect = true;

			switch(inputType) {
				case '*':
					if(inputVal == '' || inputVal.trim() == '') {
						$inputTips.show();
						isCorrect = false;
					}
					break;
				case 'number':
					//								inputReg = /^[1-9]\d{9}$/
					break;
				case 'mobile':
					inputReg = /^1[34578]\d{9}$/;
					inputReg1 = /^[69]\d{7}$/;
					if(inputVal == '' || inputVal.trim() == '') {
						$inputTips.show();
						isCorrect = false;
					}
					if(!inputReg.test(inputVal) && !inputReg1.test(inputVal)) {
						$inputTips.text(inputErrmsg).show();
						isCorrect = false;
					}
					break;
				case 'tel':
					inputReg = /^\d+-\d+(-\d+)$/;
					if(inputVal == '' || inputVal.trim() == '') {
						$inputTips.hide();
					} else if(!inputReg.test(inputVal)) {
						$inputTips.text(inputErrmsg).show();
						isCorrect = false;
					}
					break;
			}

			return isCorrect;
		}

		// 单个select验证
		function checkSelect(dom) {
			var $this = dom,
				selectVal = $this.find("option:selected").val(),
				$selectTips = $this.nextAll('.validForm-checktip').first(),
				isCorrect = true;

			if($this.hasClass('required') && (!selectVal || $this.find("option:selected").text() == '' || selectVal == 0)) {
				$selectTips.show();
				isCorrect = false;
			} else if($this.hasClass('required') && selectVal > 0 && $this.find("option:selected").text() != '') {
				$selectTips.hide();
			}
			return isCorrect;

		}

		$body.on('focus', 'input', function() {
			$(this).next('.validForm-checktip').hide();
		}).on('blur', 'input', function() {
			var $this = $(this);

			checkInput($(this));

			if($this.attr('id') == 'js-addname') {
				$(this).next('.validForm-checktip').removeClass('show');
			}

		});

		$body.on('change', 'select', function() {
			checkSelect($(this));
		});

		// 新增地址提交验证
		$body.on('click', '#shippingWayInfo #submit-new-address', function() {

			var $parentForm = $('#new-address'),
				name = $parentForm.find('input[name="name"]').val(),
				mobile = $parentForm.find('input[name="mobile"]').val(),
				tel = $parentForm.find('input[name="tel"]').val(),
				provinceId = $parentForm.find('#province').find('option:selected').val(),
				provinceName = $parentForm.find('#province').find('option:selected').text(),
				cityId = $parentForm.find('#city').find('option:selected').val(),
				cityName = $parentForm.find('#city').find('option:selected').text(),
				districtId = $parentForm.find('#district').find('option:selected').val(),
				districtName = $parentForm.find('#district').find('option:selected').text(),
				address = $parentForm.find('#address').val(),
				isCorrect = validateForm($parentForm);

			var method = $('input[name="method"]').val();
			var sell_status = $('input[name="sell_status"]').val();

			// 地址列表变量
			var $addressList = $('#address-list'),
				editIndex = $parentForm.find('input[name="name"]').attr('data-edit'),
				html = '';

			if(!isCorrect) return;

			// 验证地址
			if(provinceId == '' || provinceName == '' || cityId == '' || cityName == '' || districtId == '' || districtName == '') {
				$parentForm.find('#district').next('.validForm-checktip').show();
				return;
			}

			var addressId = $(this).attr('data-addressid');

			if(addressId != '0' && addressId) {
				type = 'edit';

			} else {
				type = 'add';
			}

			var data = {
				name: name,
				mobile: mobile,
				tel: tel,
				provinceId: provinceId,
				cityId: cityId,
				districtId: districtId,
				address: address,
				type: type,
				addressId: addressId,
				method: method,
				sell_status: sell_status
			};

			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=handleAddress',
				data: data,
				async: true,
				dataType: 'JSON',
				success: function(data) {
					if(data.code == 200) {

						html += '<li class="itm default">';
						html += '<span class="name">' + name + '</span>';
						html += '<span class="province" data-id="' + provinceId + '"></span>';
						html += '<span class="city" data-id="' + cityId + '"></span>';
						html += '<span class="district" data-id="' + districtId + '">' + provinceName + '  ' + cityName + '  ' + districtName + ' &nbsp;</span>';
						html += '<span class="address">' + address + '</span>，';
						html += '<span class="mobile" data-mobile="' + mobile + '" data-tel="' + tel + '">' + mobile + '</span>';
						html += '<a href="#new-address" class="amend js-edit"  data-addressId="' + data.data.address_id + '">修改</a>';
						html += ' </li>';

						// 更新地址列表 -> name data-edit -> #address-list -> index -> remove()
						if(editIndex) {
							$addressList.find('li').eq(editIndex).remove();
							$parentForm.find('input[name="name"]').attr('data-edit', '')
						}
						var shippingWayInfo = $('#shippingWayInfo');
						$addressList.find('li').removeClass('default').removeClass('block');
						$addressList.append(html);
						$parentForm.addClass('hide');
						$("#tab-address .address-list").removeClass('hide').addClass('show');
						shippingWayInfo.find('.switch').removeClass('hide').removeClass('show').html('更多地址<span class="juofont">&#xe627;</span>');
						getShippingFree(cityId);
					} else {
						Dialog.msg(data.msg);
						return;
					}
				}
			})

		});

		//点击收货地址列表
		$body.on('click', '#shippingWayInfo #address-list li', function() {
			var shippingWayInfo = $('#shippingWayInfo');
			if(!$(this).hasClass('default')) {
				var cityId = $(this).find('.city').attr('data-id');
				$(this).addClass('default');
				$(this).siblings().removeClass('block').removeClass('default');
				$("#new-address").addClass('hide');
				shippingWayInfo.find('.switch').removeClass('hide').removeClass('show').html('更多地址<span class="juofont">&#xe627;</span>');
				getShippingFree(cityId);
			} else {
				$(this).siblings().removeClass('block').removeClass('default');
				shippingWayInfo.find('.switch').removeClass('hide').removeClass('show').html('更多地址<span class="juofont">&#xe627;</span>');
			}
		});

		// 电子票老用户修改
		$('#shippingWayInfo').on('click', '.js-simple-form-edit', function() {
			var $this = $(this),
				userName = $this.siblings('.name').text(),
				userMobile = $this.siblings('.mobile').text(),

				// 修改信息面板变量
				$userList = $this.closest('.js-user-list'),
				$editPanel = $userList.next('.js-code-panel');

			$editPanel.removeClass('hide');
			$editPanel.find('input[name="name"]').val(userName).attr('data-edit', '1');
			$editPanel.find('input[name="mobile"]').val(userMobile);

			//
		});

		// 确认修改电子票
		$('#shippingWayInfo').on('click', '.js-submit-simple-from', function() {
			var $this = $(this),
				$codePanel = $this.closest('.js-code-panel'),
				name = $codePanel.find('input[name="name"]').val(),
				mobile = $codePanel.find('input[name="mobile"]').val(),
				$userList = $codePanel.prev('.js-user-list'),
				isCorrect = validateForm($codePanel);

			if(!isCorrect) return;

			$userList.find('.name').text(name);
			$userList.find('.mobile').text(mobile).attr('data-mobile', mobile);

			$codePanel.addClass('hide');
		});

		//配送方式ajax切换
		$(".js-ship-list ul li").on('click', function() {

			var $this = $(this),
				shippingid = $(this).find('a').attr('data-shippingid');

			if(shippingid == 2) {
				checkEShippingDeduction();
			} else {
				$('#js-shippingid-money').html('0.00');
			}

			if(!$this.hasClass('active')) {
				getShiipingInfo($this);
			}
		});

		//选择省份，显示城市列表
		$("#shippingWayInfo").on('change', '#province', function() {
			var province = $(this).val();
			var str = getRegion(province, 2);
			$("#city").empty();
			$("#city").append(str);
			$("#district").empty();
			$("#district").append("<option value='0'>--区--</option>");
		})

		//选择城市，显示区列表
		$("#shippingWayInfo").on('change', '#city', function() {
			var city = $(this).val();
			var str = getRegion(city, 3);
			$("#district").empty();
			$("#district").append(str);
		})

		//获取配送方式详情
		function getShiipingInfo(obj) {
			var $this = obj;
			$this.addClass('active').siblings().removeClass('active');
			var shippingId = $this.children('a:eq(0)').attr('data-shippingid');
			var cityId = $('input[name="cityId"]').val();
			var venueId = $('input[name="venueId"]').val();
			var orderAmount = $('input[name="actualAmount"]').val();
			var targetId = $this.children('a:eq(0)').attr('data-target');
			var targetObj = $("#" + targetId + "");
			var shippingWayInfo = $("#shippingWayInfo");
			var inputShippingFree = $('input[name="shippingFree"]');
			var inputShippingId = $('input[name="shippingId"]'),
				$js_shippingid = $('#js-shippingid-money').text(),
				$deliveryMoney = $('#js-delivery-money'),
				$needMoney = $('#js-need-money'),
				leftMoney = $needMoney.attr('data-left-money') * 1,
				prevDeliveryMoney = inputShippingFree.val() * 1;

			var method = $('input[name="method"]').val();
			var sell_status = $('input[name="sell_status"]').val();
			var schedular_id = $('input[name="schedular_id"]').val();
			if(targetObj.size() > 0 && shippingId != 1) {
				$('.js-cart-list .js-COD').addClass('hide');

				targetObj.addClass('active').siblings().removeClass('active');
				inputShippingFree.val(0.00);
				$deliveryMoney.text('0.00');
				inputShippingId.val(shippingId);

				// 更新应付金额

				leftMoney += -prevDeliveryMoney;

				var vafterDPMoney = leftMoney - $js_shippingid;
				vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
				$needMoney.text(parseFloat(vafterDPMoney).toFixed(2)).attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));

				renewDiscountMoney();
			} else {
				// 如果是秒杀 更新orderAmount
				if(orderClass == 'seckillTicket' || orderClass == 'tyingTicket' || orderClass == 'groupTicket') {
					orderAmount = $('input[name="orderAmountAct"]').val();
				}

				$.ajax({
					type: 'POST',
					url: ajaxUrl + '?action=getShppingWayInfo',
					data: 'shippingId=' + shippingId + '&cityId=' + cityId + '&venueId=' + venueId + '&orderClass=' + orderClass +
						'&orderAmount=' + orderAmount + '&cardId=' + cardId + '&method=' + method + '&sell_status=' + sell_status + '&schedular_id=' + schedular_id,
					dataType: 'json',
					async: true,
					success: function(data) {

						if(data.code == 200) {
							// 是否显示货到付款
							data.data.isCashOnDelivery ? $('.js-cart-list .js-COD').removeClass('hide') : $('.js-cart-list .js-COD').addClass('hide');

							if(shippingId == 1) {
								targetObj.remove();
							}
							shippingWayInfo.children().removeClass('active');
							shippingWayInfo.append(data.data.shippingHtml);
							var shippingFree = priceFormat(data.data.shippingFree);
							inputShippingFree.val(shippingFree);
							inputShippingId.val(shippingId);
							$deliveryMoney.text(shippingFree);

							// 更新应付金额
							leftMoney += shippingFree * 1 - prevDeliveryMoney;

							var vafterDPMoney = leftMoney - $js_shippingid;
							vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
							$needMoney.text(parseFloat(vafterDPMoney).toFixed(2)).attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));

							var addressList = $("#address-list");
							var addressListLength = addressList.children('li').length;
							var addressDefault = addressList.children('.default').length;

							if(shippingId == 1) {
								//如果地址列表为0
								if(addressListLength == 0) {
									$("#new-address").removeClass('hide').addClass('show');
									$("#tab-address .address-list").addClass('hide');
								}
								//如果有地址列表并且又没有默认地址
								if(addressListLength > 0 && addressDefault == 0) {
									shippingWayInfo.find('.switch').addClass('hide');
								}
							}
						} else {
							Dialog.msg(data.msg);
						}

						renewDiscountMoney();
					},
				})
			}

		}

		//收货地址  根据父级id获取区域列表
		function getRegion(pid, type) {
			var str = '';
			var tips = '';
			if(type == 2) {
				tips = '--市--';
			} else if(type == 3) {
				tips = '--区--';
			} else {
				tips = '--省/直辖市--';
			}

			str += '<option value="0">' + tips + '</option>';

			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=getRegionList',
				data: {
					pid: pid,
					type: type
				},
				async: false,
				dataType: 'JSON',
				success: function(json) {
					if(json.code == 200) {
						$.each(json.data, function(index, value) {
							str += '<option value="' + value.id + '">' + value.region_name + '</option>'
						})
					}

				}

			})
			return str;
		}

		//获取运费
		function getShippingFree(provinceId) {
			var shippingId = 1;
			var cityId = $('input[name="cityId"]').val();
			var orderAmount = $('input[name="actualAmount"]').val(),
				discountAllMoney = $body.find('#js-discount-all-money').text() * 1,
				$discountMoney = $body.find('#js-discount-money').text() * 1,
				$js_shippingid = $('#js-shippingid-money').text(),
				$needMoney = $body.find('#js-need-money');

			// 如果是秒杀 更新orderAmount
			if(orderClass == 'seckillTicket' || orderClass == 'tyingTicket' || orderClass == 'groupTicket') {
				orderAmount = $('input[name="orderAmountAct"]').val();
			}

			var method = $('input[name="method"]').val();
			var sell_status = $('input[name="sell_status"]').val();

			var data = {
				shippingId: shippingId,
				consigneeId: provinceId,
				cityId: cityId,
				orderClass: orderClass,
				orderAmount: orderAmount,
				method: method,
				sell_status: sell_status
			};

			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=getShippingFree',
				data: data,
				async: true,
				dataType: 'JSON',
				success: function(data) {
					if(data.code == 200) {

						// 是否显示货到付款
						data.data.isCashOnDelivery ? $('.js-cart-list .js-COD').removeClass('hide') : $('.js-cart-list .js-COD').addClass('hide');

						var shippingFree = priceFormat(data.data.shipping_free);
						var inputShippingFree = $('input[name="shippingFree"]'),
							prevDeliveryMoney = inputShippingFree.val() * 1;

						inputShippingFree.val(shippingFree);
						$body.find('#js-delivery-money').text(parseFloat(shippingFree).toFixed(2));

						var vafterDPMoney = $needMoney.text() * 1 + shippingFree * 1 - prevDeliveryMoney - $js_shippingid;
						vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
						$needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
							.attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));
						renewDiscountMoney();
					}
				}
			})
		}

		//获取学生证认证信息
		function getStudentCert() {
			var data = {};
			var html = '';
			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=getStudentCert',
				data: data,
				dataType: 'JSON',
				success: function(result) {
					if(result.code == 1) {
						html += '<table class="cart-tb"><thead><tr>';
						html += '<th>学生身份认证信息<span class="stu-id">（已通过认证）</span></th>';
						html += '</tr></thead><tbody><tr><td>';
						html += '<div class="address new-address cart-ite">';
						html += '<div class="stu-info">';
						html += '<p class="stu-name js-stu-name">' + result.data.id_name + '</p>';
						html += '<p class="stu-time">有效期至：' + result.data.cert_over_time + '</p>';
						html += '</div></div></td></tr></tbody></table>';

						$(".pay-tb").before(html);
					} else {
						Dialog.alert({
							title: '提示', // 如果不配置，默认显示提示
							content: '该项目需要学生证认证，请先进行认证！', // 弹框内部的内容
							okBtnText: '好的' // 确认按钮，如果不配置，默认'确认'
						});
					}
				}
			})
		}

		// *************************** 选择配送方式 END ************************* /

		// *************************** 选择支付方式 **********************/
		/*
		 * .js-pay-online    在线支付  选择在线支付时显示银行卡列表 其他情况时  隐藏列表
		 * .js-year-card     欢聚橙卡支付  选择欢聚橙卡支付时 优惠方式不能使用  置为灰色 其他可以使用
		 * #js-discount-page 优惠方式面板
		 */

		$('.js-cart-list li').on('click', function() {
			var $this = $(this),
				$cartList = $this.closest('.js-cart-list'),
				$bankDiscount = $('#js-bank-discount'),
				$discountPage = $('#js-discount-page'),
				$couponActiveBank = $('#dp-coupon').find('.js-coupon-item.active .js-bank-img').attr('alt');

			// 如果选择优惠券属于银行的，则不能选择货到付款
			if($couponActiveBank != 'juooo' && !$discountPage.hasClass('disabled') && $this.hasClass('js-COD')) {
				Dialog.msg('优惠券-中国银行不能和货到付款同时使用');
				return;
			}

			$cartList.find('li').removeClass('active');
			$this.addClass('active');

			// 在线支付
			$this.hasClass('js-pay-online') ? $bankDiscount.removeClass('hide') :
				$bankDiscount.addClass('hide');

			// 欢聚橙卡支付
			/*    $this.hasClass('js-year-card') ? $discountPage.addClass('disabled')
    	                : $discountPage.removeClass('disabled');
                    $this.hasClass('js-year-card') ? resetDiscountMoney(2,0) : renewDiscountMoney();*/

			if($this.hasClass('js-year-card')) {
				$discountPage.addClass('disabled');

				//重置优惠支付方式面板
				resetDiscountMoney(2, 0);
				resetDiscountPanel('disabled');

			} else if($this.hasClass('js-pay-online') && $('#js-bank-activity li.active').length == 0 || $this.hasClass('js-COD')) {
				$discountPage.removeClass('disabled');

				//重置优惠支付方式面板
				renewDiscountMoney();
				resetDiscountPanel();
			} else {
				$discountPage.addClass('disabled');

				//重置优惠支付方式面板
				renewDiscountMoney();
				resetDiscountPanel('disabled');
			}

			if($discountPage.hasClass('disabled')) {
				$discountPage.find('.js-unfold').trigger('click');
			}

			$discountPage.find('.js-discount-wrap.disabled').each(function() {
				$(this).find('.js-unfold').trigger('click');
			});

		});

		// 使用优惠方式支付折叠与展开
		$body.on('click', '.js-fold', function() {
			var $this = $(this),
				$parent = $this.parents('.discountPage'),
				$discountWrap = $this.closest('.js-discount-wrap'),
				$target = $($this.data('target')),
				$currentTarget;

			if(!$parent.hasClass('disabled') && !$discountWrap.hasClass('disabled')) {
				$parent.find('.js-unfold').each(function() {
					var $self = $(this),
						$selfParent = $self.closest('.js-discount-wrap');

					$currentTarget = $($(this).data('target'));
					$currentTarget.addClass('hide');
					$(this).removeClass('js-unfold').html('&#xe623;');

				});

				if(!$discountWrap.hasClass('disabled')) {
					$this.addClass('js-unfold').html('&#xe624;');
					$target.removeClass('hide');
				}

			}

		}).on('click', '.js-unfold', function() {
			var $this = $(this),
				$target = $($this.data('target'));
			$this.removeClass('js-unfold').html('&#xe623;');
			$target.addClass('hide');

		});

		/**
		 * 重置优惠支付方式面板
		 * type: disabled 优惠支付方式不可用，否则就恢复原样
		 */
		var resetDiscountPanel = function(type) {
			var $dpJuoooCard = $('#dp-judiscount').closest('.js-discount-wrap'),
				$dpLeftMoney = $('#dp-balance').closest('.js-discount-wrap'),
				$dpJifen = $('#dp-jifen').closest('.js-discount-wrap'),
				originalMoney = 0,
				discountMoney = 0,
				html = '';

			// 判断橙卡支付/余额支付/积分兑换
			if($dpJuoooCard.hasClass('js-used')) {
				if(type == 'disabled') {
					originalMoney = $dpJuoooCard.find('input[name="isCard"]').data('cardmoeny') * 1;
					html = '（可用余额：<span class="em">' + parseFloat(originalMoney).toFixed(2) + '</span>元）';
					$dpJuoooCard.find('.js-disTotal').html(html);
				} else {
					discountMoney = $dpJuoooCard.find('.js-dpmoney-reference').text() * 1;
					html = '（已抵扣：<span class="em js-dpmoney">' + parseFloat(discountMoney).toFixed(2) + '</span>元）';
					$dpJuoooCard.find('.js-disTotal').html(html);
				}
			}

			// 余额支付
			if($dpLeftMoney.hasClass('js-used')) {
				if(type == 'disabled') {
					originalMoney = $dpLeftMoney.find('input[name="isUserMoeny"]').attr('data-usermoney') * 1;
					html = '（账户余额：<span class="em">' + parseFloat(originalMoney).toFixed(2) + '</span>元）';
					$dpLeftMoney.find('.js-disTotal').html(html);
				} else {
					discountMoney = $dpLeftMoney.find('.js-dpmoney-reference').text() * 1;
					html = '（已抵扣：<span class="em js-dpmoney">' + parseFloat(discountMoney).toFixed(2) + '</span>元）';
					$dpLeftMoney.find('.js-disTotal').html(html);

				}

			}

			// 积分兑换
			if($dpJifen.hasClass('js-used')) {
				if(type == 'disabled') {
					originalMoney = $dpJifen.find('input[name="isScores"]').attr('data-useable-scores') * 1;
					html = '（账户积分：<span class="em">' + parseFloat(originalMoney).toFixed(2) + '</span>分）';
					$dpJifen.find('.js-disTotal').html(html);
				} else {
					discountMoney = $dpJifen.find('.js-dpmoney-reference').text() * 1;
					html = '（已抵扣：<span class="em js-dpmoney">' + parseFloat(discountMoney).toFixed(2) + '</span>元）';
					$dpJifen.find('.js-disTotal').html(html);
				}
			}

		};

		// **************************** 优惠方式使用 *****************************/
		/*
		 * #js-discount-all-money 总抵扣
		 * #js-jifen-money        积分抵扣
		 * #js-juooocard-money    橙卡抵扣
		 * #js-left-money         余额抵扣
		 * #js-coupon-money       优惠券抵扣
		 * #js-discount-money     优惠金额
		 * #js-need-money         需要支付金额
		 * #js-product-money      商品合计金额
		 * #js-delivery-money     运费
		 * .js-discount-wrap      每个优惠方式最外层的div
		 * .js-disTotal           优惠方式抬头提示
		 */
		// 使用积分兑换
		$body.on('click', '.js-use-jifen', function() {

			var $this = $(this),
				$jifenPanel = $body.find('#dp-jifen'),
				html = '',
				disMoney = $jifenPanel.find('[name="isScores"]').data('scoresmoney') * 1,
				jifenUseableAll = parseFloat($jifenPanel.find('[name="isScores"]').data('useable-scores') * 1).toFixed(2),
				jifenUseable = parseFloat($jifenPanel.find('[name="isScores"]').data('scores') * 1).toFixed(2),
				$discountWrap = $this.closest('.js-discount-wrap'),
				$disTotal = $discountWrap.find('.js-disTotal'),
				$jifenUsed = $jifenPanel.find('.js-jifen-used'),
				$dpCoupon = $body.find('#dp-coupon').closest('.js-discount-wrap'),
				$dpCoupon3 = $body.find('#dp-coupon3').closest('.js-discount-wrap'),
				$activityWrap = $body.find('.js-activity-wrap .js-match.js-used');

			// 积分兑换和商品活动不能同时使用 .js-activity-wrap -> .js-match.js-used
			if($activityWrap.length > 0 && orderClass != 'scoresTicket') {
				//						Dialog.msg('积分和商品活动不能同时使用！');
				//						return;
				$('.js-activity-wrap .js-match').removeClass('js-used');
				$('.js-activity-wrap .js-match').find('.js-item-take-li').removeClass('hide');
				$('.js-activity-wrap .js-match').find('.js-del-item-take').addClass('hide');
				$('#discount-list .js-match-item.selected').removeClass('selected');
			}

			// 如果已经使用了官网优惠券抵扣  则不能使用积分抵扣
			if($dpCoupon.hasClass('js-used')) {
				//                        Dialog.msg('积分抵扣和官网优惠券抵扣不能同时使用！');
				//                        return ;
				$dpCoupon.removeClass('js-used');
				$('#dp-coupon').find('.js-coupon-item').removeClass('active');
			}

			//文惠券新增  2017-11-7 by chendanfeng  -------START
			// 如果已经使用了第三方优惠券抵扣  则不能使用积分抵扣
			if($dpCoupon3.hasClass('js-used')) {
				//						Dialog.msg('积分抵扣和第三方优惠券抵扣不能同时使用！');
				//						return ;
				$dpCoupon3.removeClass('js-used');
				$('#dp-coupon3').find('.js-coupon-itm').removeClass('active');
			}
			//文惠券新增  2017-11-7 by chendanfeng  --------END

			if($discountWrap.hasClass('js-used')) {
				html = '您的可用积分<span class="em">' + jifenUseableAll + '</span>分，本次可用<span class="em">' + jifenUseable + '</span>' +
					'分（最多抵用现金<span class="em">' + parseFloat(disMoney).toFixed(2) + '</span>元） ' +
					'<button class="btn js-use-jifen ">使用</button>';
				$jifenUsed.html(html);
				$disTotal.html('');

				$discountWrap.removeClass('js-used');

				// 更新金额
				renewDiscountMoney();
			} else {
				html += '已抵扣：<span class="em js-dpmoney js-dpmoney-reference">' + parseFloat(disMoney).toFixed(2) + '</span>元 <a class="js-use-jifen" href="javascript:;">取消</a>';
				$jifenUsed.html(html);

				$disTotal.html('（已抵扣：<span class="em js-dpmoney">' + parseFloat(disMoney).toFixed(2) + '</span>元）');

				$discountWrap.addClass('js-used');

				// 更新金额
				renewDiscountMoney();
			}

		});

		/*
		 * 使用橙卡抵扣
		 * .js-use-wrap   li
		 * .js-use-option 使用
		 * .js-use-input  密码输入框
		 */
		$body.on('click', '.js-use-option', function() {
			var $this = $(this),
				$useWrap = $this.closest('.js-use-wrap'),
				$useInput = $this.prev('.js-use-input'),
				$discountWrap = $this.closest('.js-discount-wrap'),
				$disTotal = $discountWrap.find('.js-disTotal'),
				disMoney = $discountWrap.find('input[name="isCard"]').data('cardmoeny') * 1,
				leftMoney = $('#js-need-money').attr('data-left-money'),
				html = '',
				originalMoney = 0,
				juDiscount = $discountWrap.find('#dp-judiscount').length;

			// 判断是橙卡抵扣还是余额抵扣 修改抵扣金额 disMoney
			juDiscount == 0 ? disMoney = $discountWrap.find('input[name="isUserMoeny"]').data('usermoney') * 1 :
				disMoney;

			originalMoney = disMoney;

			// 判断可支付金额是否大于剩余金额 大于 -> 显示剩余金额  小于 -> 显示可支付金额
			disMoney > leftMoney ? disMoney = leftMoney : disMoney;

			// 判断当前是否已经使用橙卡支付
			if($discountWrap.hasClass('js-used')) {

				// 判断是不是第一次支付
				html += '<button class="btn js-use-option">使用</button>';
				if($discountWrap.find('#dp-balance').length == 0) { // 橙卡抵扣
					html += '<div class="new-calorie fr">';
					//							html += '<a href="#">绑定新橙卡 <span class="ff">>></span></a>';
					html += '</div>';
				}

				$useWrap.html(html);

				// 判断是橙卡抵扣还是余额抵扣 修改抵扣金额 disMoney
				if(juDiscount == 0) {
					$disTotal.html('（账户余额：<span class="em">' + parseFloat(originalMoney).toFixed(2) + '</span>元）');
				} else {
					$disTotal.html('（可用余额：<span class="em">' + parseFloat(originalMoney).toFixed(2) + '</span>元）');

				}
				$discountWrap.removeClass('js-used');

				// 金额联动 积分，橙卡，余额，优惠券，优惠
				renewDiscountMoney();
			} else {

				// 判断是否是第一次支付
				if($this.hasClass('js-first-cart')) {
					// 判断支付密码是否正确
					if(checkPayPass($useInput.val())) {
						html += '已抵扣：<span class="em c-f67919 js-dpmoney js-dpmoney-reference">' + parseFloat(disMoney).toFixed(2) + '</span>元 <a class="js-use-option" href="javascript:;">取消</a>';
						$useWrap.html(html);
						$disTotal.html('（已抵扣：<span class="em js-dpmoney">' + parseFloat(disMoney).toFixed(2) + '</span>元）')

						$discountWrap.addClass('js-used');

						// 金额联动 积分，橙卡，余额，优惠券，优惠
						renewDiscountMoney();
					} else {
						$this.next('.error').removeClass('hide');
					}
				} // END 第一次支付
				else {
					// 判断可支付金额是否大于剩余金额 大于 -> 显示剩余金额  小于 -> 显示可支付金额
					disMoney > leftMoney ? disMoney = leftMoney : disMoney;

					html += '已抵扣：<span class="em c-f67919 js-dpmoney js-dpmoney-reference">' + parseFloat(disMoney).toFixed(2) + '</span>元 <a class="js-use-option" href="javascript:;">取消</a>';
					$useWrap.html(html);
					$disTotal.html('（已抵扣：<span class="em js-dpmoney">' + parseFloat(disMoney).toFixed(2) + '</span>元）')

					$discountWrap.addClass('js-used');

					// 金额联动 积分，橙卡，余额，优惠券，优惠
					renewDiscountMoney();
				}

			}

		});

		// 密码输入框获得焦点时 密码错误提示信息隐藏
		$body.on('focus', '.js-use-input', function() {
			$(this).siblings('.error').addClass('hide');
		});

		// 使用官网优惠券 不能与积分抵扣、第三方优惠券同时使用 .js-coupon-item
		$body.on('click', '.js-coupon-item', function(e) {
			e.preventDefault();
			$('#discount-list .js-match-item.selected').removeClass('selected');
			var $this = $(this),
				$discountWrap = $this.closest('.js-discount-wrap'),
				$dpJifen = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpCoupon3 = $body.find('#dp-coupon3').closest('.js-discount-wrap'),
				$prevActive = $discountWrap.find('.js-coupon-item.active'),
				prevBankType = $prevActive.find('.js-bank-img').attr('alt'),
				bankType = $this.find('.js-bank-img').attr('alt'),
				discountMoney = $this.attr('data-saleprice');
			// 积分抵扣
			var $jifenPanel = $body.find('#dp-jifen'),
				disMoney = $jifenPanel.find('[name="isScores"]').data('scoresmoney') * 1,
				jifenUseableAll = parseFloat($jifenPanel.find('[name="isScores"]').data('useable-scores') * 1).toFixed(2),
				jifenUseable = parseFloat($jifenPanel.find('[name="isScores"]').data('scores') * 1).toFixed(2),
				$disTotal = $dpJifen.find('.js-disTotal'),
				$jifenUsed = $jifenPanel.find('.js-jifen-used');

			// 判断积分抵扣的使用，若已使用则取消
			if($dpJifen.hasClass('js-used')) {
				var html = '';
				html = '您的可用积分<span class="em">' + jifenUseableAll + '</span>分，本次可用<span class="em">' + jifenUseable + '</span>' +
					'分（最多抵用现金<span class="em">' + parseFloat(disMoney).toFixed(2) + '</span>元） ' +
					'<button class="btn js-use-jifen ">使用</button>';
				$jifenUsed.html(html);
				$disTotal.html('（账户积分：<span class="em">' + jifenUseableAll + '</span>分）');
				$dpJifen.removeClass('js-used');

			}

			//文惠券新增 2017-11-7  by chendanfeng  -------START
			//如果已经使用了第三方优惠券，则不能使用官网优惠券
			if($dpCoupon3.hasClass('js-used')) {
				$dpCoupon3.removeClass('js-used');
				$('#dp-coupon3').find('.js-coupon-itm').removeClass('active');
				//						Dialog.msg('第三方优惠券和官网优惠券抵扣不能同时使用！');
				//						return;
			}
			//文惠券新增 2017-11-7  by chendanfeng  -------END

			if($('.js-cart-list .js-COD').hasClass('active') && bankType != 'juooo') {
				Dialog.msg('优惠券-中国银行不能和货到付款同时使用');
				return;
			}

			// 如果使用商品活动，则不能选择优惠券 js-activity-wrap .js-used
			if($('.js-activity-wrap .js-used').length > 0) {
				$('.js-activity-wrap .js-match').removeClass('js-used');
				$('.js-activity-wrap .js-match').find('.js-item-take-li').removeClass('hide');
				$('.js-activity-wrap .js-match').find('.js-del-item-take').addClass('hide');
				//						Dialog.msg('优惠券和商品活动不能同时使用');
				//						return;
			}

			if($this.hasClass('active')) {
				$this.removeClass('active');

				$discountWrap.removeClass('js-used');

				// 金额联动 积分，橙卡，余额，优惠券，优惠
				bankType != 'juooo' ? resetNotBocCouponActivity() : renewDiscountMoney();
			} else {

				// 切换优惠券的情况下
				if($prevActive.length > 0) {
					$prevActive.removeClass('active');

					// 金额联动 积分，橙卡，余额，优惠券，优惠
					prevBankType != 'juooo' ? resetNotBocCouponActivity() : renewDiscountMoney();
				}
				$this.addClass('active');

				$discountWrap.addClass('js-used');

				// 判断当前优惠券的支付银行是否为中国银行  金额联动 积分，橙卡，余额，优惠券，优惠
				bankType != 'juooo' ? forbidDiscountActivity(discountMoney) : renewDiscountMoney();
			}
		});

		//文惠券新增 2017-11-7 by chendanfeng   -------------------------------START
		// 使用第三方优惠券不能与积分抵扣、第三方优惠券同时使用 .js-coupon-itm
		$body.on('click', '.js-coupon-itm', function(e) {
			e.preventDefault();

			var $this = $(this),
				$discountWrap = $this.closest('.js-discount-wrap'),
				$dpJifen = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpCoupon = $body.find('#dp-coupon').closest('.js-discount-wrap'),
				$dpCoupon3 = $body.find('#dp-coupon3').closest('.js-discount-wrap'),
				$prevActive = $discountWrap.find('.js-coupon-itm.active'),
				prevBankType = $prevActive.find('.js-bank-img').attr('alt'),
				bankType = $this.find('.js-bank-img').attr('alt'),
				discountMoney = $this.attr('data-saleprice');
			// 积分抵扣
			var $jifenPanel = $body.find('#dp-jifen'),
				disMoney = $jifenPanel.find('[name="isScores"]').data('scoresmoney') * 1,
				jifenUseableAll = parseFloat($jifenPanel.find('[name="isScores"]').data('useable-scores') * 1).toFixed(2),
				jifenUseable = parseFloat($jifenPanel.find('[name="isScores"]').data('scores') * 1).toFixed(2),
				$disTotal = $dpJifen.find('.js-disTotal'),
				$jifenUsed = $jifenPanel.find('.js-jifen-used');

			// 判断积分抵扣的使用，若已使用则取消
			if($dpJifen.hasClass('js-used')) {
				var html = '';
				html = '您的可用积分<span class="em">' + jifenUseableAll + '</span>分，本次可用<span class="em">' + jifenUseable + '</span>' +
					'分（最多抵用现金<span class="em">' + parseFloat(disMoney).toFixed(2) + '</span>元） ' +
					'<button class="btn js-use-jifen ">使用</button>';
				$jifenUsed.html(html);
				$disTotal.html('（账户积分：<span class="em">' + jifenUseableAll + '</span>分）');
				$dpJifen.removeClass('js-used');
			}

			//如果已经使用了第三方优惠券，则不能使用官网优惠券
			if($dpCoupon.hasClass('js-used')) {
				$dpCoupon.removeClass('js-used');
				$('#dp-coupon').find('.js-coupon-item').removeClass('active');
				//						Dialog.msg('第三方优惠券和官网优惠券抵扣不能同时使用！');
				//						return;
			}

			if($('.js-cart-list .js-COD').hasClass('active') && bankType != 'juooo') {
				Dialog.msg('优惠券-中国银行不能和货到付款同时使用');
				return;
			}

			// 如果使用商品活动，则不能选择优惠券 js-activity-wrap .js-used
			if($('.js-activity-wrap .js-used').length > 0) {
				$('.js-activity-wrap .js-match').removeClass('js-used');
				$('.js-activity-wrap .js-match').find('.js-item-take-li').removeClass('hide');
				$('.js-activity-wrap .js-match').find('.js-del-item-take').addClass('hide');
				//						Dialog.msg('优惠券和商品活动不能同时使用');
				//						return;
			}

			if(!$this.hasClass('dis')) {
				if($this.hasClass('active')) {
					$this.removeClass('active');

					$discountWrap.removeClass('js-used');

					// 金额联动 积分，橙卡，余额，优惠券，优惠
					renewDiscountMoney();
				} else {

					$this.addClass('active');
					$discountWrap.addClass('js-used');

					// 金额联动 积分，橙卡，余额，优惠券，优惠
					renewDiscountMoney();

					// 切换第三方优惠券的情况下
					if($prevActive.length > 0) {

						$prevActive.removeClass('active');

						// 金额联动 积分，橙卡，余额，优惠券，优惠
						prevBankType != 'juooo' ? resetNotBocCouponActivity() : renewDiscountMoney();

					}
				}
			}

		});
		//文惠券新增 2017-11-7  by chendanfeng  --------------------------------END

		//判断支付密码是否正确
		function checkPayPass(payPass) {
			var isPay = false;
			if(payPass != '') {
				var data = {
					payPass: payPass
				};
				$.ajax({
					type: 'post',
					url: ajaxUrl + '?action=handleUserPayPass',
					data: data,
					async: false,
					dataType: 'json',
					success: function(data) {
						if(data.code == 200) {
							isPay = true;
						}
					}
				})
			}
			return isPay;
		}

		// 选择银行活动 js-bank-activity 银行卡列表
		$body.on('click', '#js-bank-activity li', function() {
			var $this = $(this),
				bankListLi = $('#js-bank-activity').find('li'),
				$discountPage = $('#js-discount-page'),
				$bankDiscount = $('#js-bank-discount'),
				discountMoney = $this.data('saleprice') * 1;

			if($this.hasClass('active')) {
				$this.removeClass('active');

				$discountPage.removeClass('disabled');
				//重置优惠支付方式面板
				resetDiscountPanel();

				renewDiscountMoney();

				$bankDiscount.find('.js-bank-tips').addClass('hide');
			} else {
				bankListLi.removeClass('active');
				$this.addClass('active');

				// 银行卡活动和优惠支付方式不能同时使用
				$discountPage.addClass('disabled');

				//重置优惠支付方式面板
				resetDiscountPanel('disabled');

				if($discountPage.hasClass('disabled')) {
					$discountPage.find('.js-unfold').trigger('click');
				}
				resetDiscountMoney(1, discountMoney);

				$bankDiscount.find('.js-bank-tips').removeClass('hide');
				$bankDiscount.find('.js-bank-discount-money').text(parseFloat(discountMoney).toFixed(2));
				$bankDiscount.find('.js-bank-type').text($this.find('.js-bank-img').attr('alt'));
			}

		});

		/*
		 * 当选择不选择优惠券抵扣或者优惠券的支付银行不是中国银行时 把其他所有优惠方式显示 金额联动
		 * #dp-jifen .js-discount-wrap          : 积分抵扣
		 * #dp-judiscount .js-discount-wrap     : 橙卡抵扣
		 * #dp-balance .js-discount-wrap        : 余额抵扣
		 * #js-bank-discount                    ：银行活动
		 * .js-activity-wrap .match .match-list : 商品活动
		 */
		var resetNotBocCouponActivity = function() {

			// 显示其他所有优惠支付方式的活动
			var $dpJiFen = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpJuooocard = $body.find('#dp-judiscount').closest('.js-discount-wrap'),
				$dpLeftMoney = $body.find('#dp-balance').closest('.js-discount-wrap'),
				allMoney = $body.find('#js-product-money').text() * 1 + $body.find('#js-delivery-money').text() * 1,
				leftMoney = 0;

			// 显示优惠支付方式其他优惠支付
			$dpJiFen.removeClass('disabled');
			$dpJuooocard.removeClass('disabled');
			$dpLeftMoney.removeClass('disabled');

			// 显示银行卡支付方式 是否是在线支付 .js-cart-list -> .js-pay-online
			if($body.find('.js-cart-list li.active').hasClass('js-pay-online')) {
				$body.find('#js-bank-discount').removeClass('hide');
			}

			renewDiscountMoney();

		};

		/*
		 * 当选择优惠券抵扣且支付银行为中国银行时 把其他所有优惠方式禁掉 金额联动
		 * #dp-jifen .js-discount-wrap          : 积分抵扣
		 * #dp-judiscount .js-discount-wrap     : 橙卡抵扣
		 * #dp-balance .js-discount-wrap        : 余额抵扣
		 * #js-bank-discount                    ：银行活动
		 * .js-activity-wrap .match .match-list : 商品活动
		 */
		var forbidDiscountActivity = function(money) {

			// 隐藏其他所有优惠支付方式的活动
			var $dpJiFen = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpJuooocard = $body.find('#dp-judiscount').closest('.js-discount-wrap'),
				$dpLeftMoney = $body.find('#dp-balance').closest('.js-discount-wrap'),
				$productMoney = $body.find('#js-product-money'),
				$orderAmount = $body.find('input[name="orderAmountAct"]'),
				allMoney = $orderAmount.val() * 1 + $body.find('#js-delivery-money').text() * 1,
				leftMoney = 0;

			$dpJiFen.addClass('disabled');
			$dpJuooocard.addClass('disabled');
			$dpLeftMoney.addClass('disabled');

			$dpJiFen.hasClass('disabled') && ($dpJiFen.find('.js-unfold').trigger('click'));
			$dpJuooocard.hasClass('disabled') && ($dpJuooocard.find('.js-unfold').trigger('click'));
			$dpLeftMoney.hasClass('disabled') && ($dpLeftMoney.find('.js-unfold').trigger('click'));

			// 隐藏银行活动
			$body.find('#js-bank-discount').addClass('hide');

			// 隐藏商品活动
			$body.find('.js-activity-wrap .match-list').addClass('hide');
			$body.find('.js-activity-wrap .js-item-take-li').removeClass('hide');
			$body.find('.js-activity-wrap .js-del-item-take').addClass('hide');
			$body.find('.js-activity-wrap .js-item-take-li .js-show-match-list').addClass('hide');

			// 金额联动
			$body.find('#js-jifen-money').text('0.00');
			$body.find('#js-juooocard-money').text('0.00');
			$body.find('#js-left-money').text('0.00');
			$body.find('#js-coupon-money').text(parseFloat(money).toFixed(2));
			$body.find('#js-discount-all-money').text(parseFloat(money).toFixed(2));

			$body.find('#js-discount-money').text('0.00');
			$productMoney.text(parseFloat($orderAmount.val() * 1).toFixed(2));
			leftMoney = allMoney - money;
			$body.find('#js-need-money').text(parseFloat(leftMoney).toFixed(2)).attr('data-left-money', parseFloat(leftMoney).toFixed(2));
		};

		/*
		 * 重置抵扣金额 和 优惠支付面板
		 * #js-discount-all-money 总抵扣
		 * #js-jifen-money        积分抵扣
		 * #js-juooocard-money    橙卡抵扣
		 * #js-left-money         余额抵扣
		 * #js-coupon-money       优惠券抵扣
		 * #js-discount-money     优惠金额
		 * #js-need-money         需要支付金额
		 * #js-product-money      商品合计金额
		 * #js-delivery-money     运费
		 * .js-discount-wrap      每个优惠方式最外层的div
		 * .js-disTotal           优惠方式抬头提示
		 * type: 1 欢聚橙卡支付，重置所有，2银行卡支付，修改优惠  重置其他
		 */
		var resetDiscountMoney = function(type, money) {
			var $discountAllMoney = $body.find('#js-discount-all-money'),
				$jifenMoney = $body.find('#js-jifen-money'), // 积分抵扣
				$juooocardMoney = $body.find('#js-juooocard-money'), // 橙卡抵扣
				$leftMoney = $body.find('#js-left-money'), // 余额抵扣
				$couponMoney = $body.find('#js-coupon-money'), // 优惠券抵扣
				$discountMoney = $body.find('#js-discount-money'), // 优惠金额
				$needMoney = $body.find('#js-need-money'), // 需要支付金额
				$productMoney = $body.find('#js-product-money'), // 商品总金额
				$orderAmount = $body.find('input[name="orderAmountAct"]'),
				$deliveryMoney = $body.find('#js-delivery'), // 运费
				$deliveryAmount = $body.find('input[name="shippingFree"]'), // 运费
				$activitywrap = $body.find('.js-activity-wrap'),
				$js_shippingid = $body.find('#js-shippingid-money').html(),
				allMoney = $orderAmount.val() * 1 + $deliveryAmount.val() * 1;
			if(type == 1) {
				$discountMoney.text(parseFloat(money).toFixed(2));
				var vafterDPMoney = allMoney - money - $js_shippingid;
				vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
				$needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
					.attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));
				$activitywrap.find('.js-item-take-li .js-show-match-list').addClass('hide');
				$activitywrap.find('.js-item-take-li').removeClass('hide');
				$activitywrap.find('.js-del-item-take').addClass('hide');

			} else if(type == 2) {
				$discountMoney.text('0.00');
				var vafterDPMoney = allMoney - $js_shippingid;
				/*vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
                         $needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
								   .attr('data-left-money',parseFloat(vafterDPMoney).toFixed(2));*/
			}

			// 隐藏所有已经选择的商品活动面板
			$discountAllMoney.text('0.00');
			$jifenMoney.text('0.00');
			$juooocardMoney.text('0.00');
			$leftMoney.text('0.00');
			$couponMoney.text('0.00');
			$productMoney.text(parseFloat($orderAmount.val() * 1).toFixed(2));
			$deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2))

		};

		// 当优惠方式支付可选择的时候，恢复抵扣金额
		function renewDiscountMoney() {
			var $discountAllMoney = $body.find('#js-discount-all-money'),
				$jifenMoney = $body.find('#js-jifen-money'), // 积分抵扣
				$juooocardMoney = $body.find('#js-juooocard-money'), // 橙卡抵扣
				$leftMoney = $body.find('#js-left-money'), // 余额抵扣
				$couponMoney = $body.find('#js-coupon-money'), // 优惠券抵扣
				$discountMoney = $body.find('#js-discount-money'), // 优惠金额
				$needMoney = $body.find('#js-need-money'), // 需要支付金额
				$productMoney = $body.find('#js-product-money'), // 商品总金额
				$deliveryMoney = $body.find('#js-delivery-money'), // 运费
				$orderAmount = $body.find('input[name="orderAmountAct"]'),
				$deliveryAmount = $body.find('input[name="shippingFree"]'),
				allMoney = $orderAmount.val() * 1 + $deliveryAmount.val() * 1,
				$dpJifen = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpJuDiscount = $body.find('#dp-judiscount').closest('.js-discount-wrap'),
				$dpBalance = $body.find('#dp-balance').closest('.js-discount-wrap'),
				$dpCoupon = $body.find('#dp-coupon').closest('.js-discount-wrap'),
				$dpCoupon3 = $body.find("#other_coupon_big_div"),
				$bankActivity = $body.find('#js-bank-activity'), // 银行活动
				$js_shippingid = $body.find('#js-shippingid-money').text(),
				jifenMoney = 0,
				juooocardMoney = 0,
				leftMoney = 0,
				couponMoney = 0,
				discountMoney = 0,
				allDiscountMoney = 0,
				afterDPMoney = allMoney,
				exchangeMoney = 0;

			// 如果使用了积分抵扣
			if($dpJifen.hasClass('js-used')) {
				jifenMoney = $dpJifen.find('input[name="isScores"]').data('scoresmoney') * 1;

				// 更新抵扣后的金额
				afterDPMoney -= jifenMoney;
			}

			//如果使用优惠券
			if($dpCoupon.hasClass('js-used')) {
				couponMoney = $dpCoupon.find('.js-coupon-item.active').data('saleprice') * 1;

				// 更新抵扣后的金额
				afterDPMoney -= couponMoney;
			} else if($dpCoupon3.hasClass("js-used")) {
				couponMoney = $dpCoupon3.find('.js-coupon-itm.active').data('saleprice') * 1;

				// 更新抵扣后的金额
				afterDPMoney -= couponMoney;
			} else {
				couponMoney = 0;
			}

			// 显示已经选择的商品活动优惠 .js-activity-wrap .js-match.js-used -> .js-item-take-li hide && .js-del-item-take
			/*$body.find('.js-activity-wrap.active .js-match.js-used').each(function () {
						var $usedThis = $(this);
						// 更新金额
						discountMoney += $usedThis.find('.js-favo-amount').text() * 1;

						$usedThis.find('.js-item-take-li').addClass('hide');
						$usedThis.find('.js-del-item-take').removeClass('hide');

						/!*if(orderClass == 'seckillTicket' || orderClass == 'tyingTicket') {
							exchangeMoney += $usedThis.find('.js-favo-amount').attr('data-exchange-price') * 1;
						}*!/

						// 如果是换购 data-exchange-price
						if($usedThis.hasClass('js-item-sale-give')) {
//								exchangeMoney += $usedThis.find('.js-favo-amount').text() * 1;
							exchangeMoney += $usedThis.find('.js-favo-amount').attr('data-exchange-price') * 1;
						}
					});*/

			//促销合为1个
			var $usedDiscount = $body.find('.js-order-activity .js-match.js-used');
			if($usedDiscount.length > 0) {
				discountMoney = $usedDiscount.find('.js-favo-amount').eq(0).text() * 1;
			}

			//$usedDiscount.find('.js-item-take-li').addClass('hide');
			//$usedDiscount.find('.js-del-item-take').removeClass('hide');

			if(orderClass == 'seckillTicket' || orderClass == 'tyingTicket') {
				//exchangeMoney += $usedDiscount.find('.js-favo-amount').attr('data-exchange-price') * 1;
				//exchangeMoney = 0;
			}

			if($usedDiscount.hasClass('js-item-sale-give')) {
				//								exchangeMoney += $usedThis.find('.js-favo-amount').text() * 1;
				exchangeMoney += $usedDiscount.find('.js-favo-amount').attr('data-exchange-price') * 1;
			}

			// 把积分抵扣/优惠之后的余额和橙卡可用金额比较
			afterDPMoney += exchangeMoney;

			if(afterDPMoney <= discountMoney) {
				discountMoney = afterDPMoney;
				afterDPMoney = 0;
			} else {
				afterDPMoney -= discountMoney;
			}

			// 如果使用橙卡抵扣
			if($dpJuDiscount.hasClass('js-used')) {
				juooocardMoney = $dpJuDiscount.find('input[name="isCard"]').data('cardmoeny') * 1;

				// 把积分抵扣/优惠券抵扣之后的余额和橙卡可用金额比较
				if(afterDPMoney <= juooocardMoney) {
					juooocardMoney = afterDPMoney;
					afterDPMoney = 0;
				} else {
					afterDPMoney -= juooocardMoney;
				}
				$dpJuDiscount.find('.js-dpmoney').text(parseFloat(juooocardMoney).toFixed(2));
			}

			// 如果使用余额支付
			if($dpBalance.hasClass('js-used')) {

				leftMoney = $dpBalance.find('input[name="isUserMoeny"]').data('usermoney') * 1;

				// 把积分抵扣/优惠券抵扣之后的余额和橙卡可用金额比较
				if(afterDPMoney <= leftMoney) {
					leftMoney = afterDPMoney;
					afterDPMoney = 0;
					leftMoney = leftMoney - $js_shippingid;
					leftMoney < 0 ? leftMoney = 0 : leftMoney;
				} else {
					afterDPMoney -= leftMoney;
				}

				$dpBalance.find('.js-dpmoney').text(parseFloat(leftMoney).toFixed(2));
			}

			// 如果选择银行活动
			//                    if($bankActivity.find('.js-bank-item.active').length > 0 && $('.js-cart-list li.active').hasClass('js-pay-online')) {
			//
			//                        discountMoney = $bankActivity.find('.js-bank-item.active').data('saleprice') * 1;
			//                        afterDPMoney  = allMoney - discountMoney;
			//
			//                        // 重置抵扣金额 type,money
			//                        resetDiscountMoney(1, discountMoney)
			//                    }
			//                    else {
			//
			//						$body.find('.js-activity-wrap .js-item-take-li .js-show-match-list').removeClass('hide');
			//
			//                        $jifenMoney.text(parseFloat(jifenMoney).toFixed(2));
			//                        $juooocardMoney.text(parseFloat(juooocardMoney).toFixed(2));
			//
			//                        $leftMoney.text(parseFloat(leftMoney).toFixed(2));
			//                        $couponMoney.text(parseFloat(couponMoney).toFixed(2));
			//                        $discountMoney.text(parseFloat(discountMoney).toFixed(2));
			//
			//						$productMoney.text(parseFloat($orderAmount.val() * 1 + exchangeMoney).toFixed(2));
			//						$deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2));
			//
			//                        allDiscountMoney = jifenMoney + juooocardMoney + leftMoney + couponMoney + discountMoney;
			//                        $discountAllMoney.text(parseFloat(allDiscountMoney - discountMoney).toFixed(2));
			//
			//                         var vafterDPMoney = afterDPMoney - $js_shippingid;
			//                         vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
			//                        $needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
			//								  .attr('data-left-money',parseFloat(vafterDPMoney).toFixed(2));
			//
			//                    }

			// 如果使用官网优惠券抵扣
			/*if($dpCoupon.hasClass('js-used')) {

			    //使用优惠券抵扣更新金额
			    $jifenMoney.text(parseFloat(jifenMoney).toFixed(2));
			    $juooocardMoney.text(parseFloat(juooocardMoney).toFixed(2));

			    $leftMoney.text(parseFloat(leftMoney).toFixed(2));
			    $couponMoney.text(parseFloat(couponMoney).toFixed(2));
			    $discountMoney.text(parseFloat(discountMoney).toFixed(2));

			    $productMoney.text(parseFloat($orderAmount.val() * 1 + exchangeMoney).toFixed(2));
			    $deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2));

			    allDiscountMoney = jifenMoney + juooocardMoney + leftMoney + couponMoney + discountMoney;
			    $discountAllMoney.text(parseFloat(allDiscountMoney - discountMoney).toFixed(2));

			    var vafterDPMoney = afterDPMoney - $js_shippingid;
			    vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
			    $needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
			        .attr('data-left-money',parseFloat(vafterDPMoney).toFixed(2));
			    return;
			}
			//文惠券新增  2017-11-7 by chendanfeng  ----------START
			//如果使用第三方优惠券 目前仅支持文惠券 抵扣
			else if($dpCoupon3.hasClass("js-used")) {
			    couponMoney = $dpCoupon3.find('.js-coupon-itm.active').data('saleprice') * 1;

			    // 更新抵扣后的金额
			    afterDPMoney -= couponMoney;
			}*/
			//文惠券新增  2017-11-7 by chendanfeng  ---------- END

			// 选择data-pay-id不为-1的优惠时
			var $discountSelectedItem = $('#discount-list .js-match-item.selected');
			var dataPayId = $discountSelectedItem.attr('data-pay-id');
			if(dataPayId) {
				if(dataPayId != -1) {
					if($discountSelectedItem.length > 0) {
						discountMoney = $discountSelectedItem.attr('data-activity-sale') * 1;
					}
					afterDPMoney = allMoney - discountMoney;
					// 重置抵扣金额 type,money
					resetDiscountMoney(2, discountMoney);
					$body.find('.js-activity-wrap .js-item-take-li .js-show-match-list').removeClass('hide');
					$jifenMoney.text('0.00');
					$juooocardMoney.text('0.00');
					$leftMoney.text('0.00');
					$couponMoney.text('0.00');
					$discountMoney.text(parseFloat(discountMoney).toFixed(2));
					$productMoney.text(parseFloat($orderAmount.val() * 1 + exchangeMoney).toFixed(2));
					$deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2));

					allDiscountMoney = jifenMoney + juooocardMoney + leftMoney + couponMoney + discountMoney;
					$discountAllMoney.text('0.00');

					var vafterDPMoney = afterDPMoney - $js_shippingid;
					vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
					$needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
						.attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));
				} else {
					$body.find('.js-activity-wrap .js-item-take-li .js-show-match-list').removeClass('hide');
					$jifenMoney.text(parseFloat(jifenMoney).toFixed(2));
					$juooocardMoney.text(parseFloat(juooocardMoney).toFixed(2));

					$leftMoney.text(parseFloat(leftMoney).toFixed(2));
					$couponMoney.text(parseFloat(couponMoney).toFixed(2));
					$discountMoney.text(parseFloat(discountMoney).toFixed(2));
					$productMoney.text(parseFloat($orderAmount.val() * 1 + exchangeMoney).toFixed(2));
					$deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2));
					allDiscountMoney = jifenMoney + juooocardMoney + leftMoney + couponMoney + discountMoney;

					$discountAllMoney.text(parseFloat(allDiscountMoney - discountMoney).toFixed(2));

					var vafterDPMoney = afterDPMoney - $js_shippingid;
					vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
					$needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
						.attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));
				}
			} else {
				//使用优惠券抵扣更新金额
				$jifenMoney.text(parseFloat(jifenMoney).toFixed(2));
				$juooocardMoney.text(parseFloat(juooocardMoney).toFixed(2));

				$leftMoney.text(parseFloat(leftMoney).toFixed(2));
				$couponMoney.text(parseFloat(couponMoney).toFixed(2));
				$discountMoney.text(parseFloat(discountMoney).toFixed(2));
				$productMoney.text(parseFloat($orderAmount.val() * 1 + exchangeMoney).toFixed(2));
				$deliveryMoney.text(parseFloat($deliveryAmount.val() * 1).toFixed(2));

				allDiscountMoney = jifenMoney + juooocardMoney + leftMoney + couponMoney + discountMoney;
				$discountAllMoney.text(parseFloat(allDiscountMoney - discountMoney).toFixed(2));

				var vafterDPMoney = afterDPMoney - $js_shippingid;
				vafterDPMoney < 0 ? vafterDPMoney = 0 : vafterDPMoney;
				$needMoney.text(parseFloat(vafterDPMoney).toFixed(2))
					.attr('data-left-money', parseFloat(vafterDPMoney).toFixed(2));
			}

		};

		// *************************** 优惠方式 END ********************************/

		// *************************** 选择支付方式 END ***************************/

		// *************************** 右边优惠换购、满减部分 **********************/

		/*
		 * 显示满减列表
		 * .js-show-match-list 三角形
		 * .js-match-list      隐藏的活动列表
		 * .js-match           活动列表最外层div
		 */
		$body.on('click', '.js-show-match-list', function() {
			var $this = $(this),
				$match = $this.closest('.js-match'),
				$matchList = $match.find('.js-match-list');

			//                    $matchList.hasClass('hide') ? $matchList.removeClass('hide') : $matchList.addClass('hide');
			if($matchList.hasClass('hide')) {
				$('.js-match-list').addClass('hide');
				$matchList.removeClass('hide')
			} else {
				$matchList.addClass('hide')
			}
		});

		/*
		 * 点击活动列表.js-match-item -> 更新优惠套餐 显示优惠金额 金额联动
		 * 1. 当时兑换和满赠的情况下  会出现弹框  选择之后更新数据
		 * 2. 当为满减的情况下  双击直接更新数据
		 */

		/*活动列表 默认选中活动  2018.2.23 WangCui*/
		if($('.js-order-activity').length > 0) {
			selectedDis();
		}

		function selectedDis() {
			var maxDom = '';
			var maxDis = 0.00;
			var $matchList = $('.js-activity-wrap .js-match-list');
			$matchList.find('.js-match-item').each(function() {
				if(parseFloat($(this).attr('data-activity-sale')) > maxDis) {
					maxDis = parseFloat($(this).attr('data-activity-sale'));
					maxDom = $(this);
				}
			})
			console.log(maxDom);
			try {
				selectedGoodsActivity(maxDom);
			} catch(error) {

			}
		}
		/* 默认选中 */

		$body.on('click', '.js-match-item', function(e) {
			e.preventDefault();

			selectedGoodsActivity($(this));
		});

		// 选择商品活动
		function selectedGoodsActivity($dom) {
			var $this = $dom,
				$itemTakeNow = $this.find('.js-item-take-now'),
				itemType = '', // .js-item-type
				itemText = '',
				$activityInput = $this.find('input[name="ticket_activity_id"]'),
				activityId = $activityInput.val(),
				salePrice = $activityInput.data('saleprice'),
				$match = $this.closest('.js-match'), // 活动列表最外层div
				$matchList = $this.closest('.js-match-list'),
				$itemTakeLi = $match.find('.js-item-take-li'),
				$delItemTake = $match.find('.js-del-item-take'), // 兑换后显示部分
				$itemTakeMoney = $delItemTake.find('.js-item-take-money'),
				$itemTakeName = $delItemTake.find('.js-item-take-name'),
				$itemTakeNum = $delItemTake.find('.js-item-take-num'),
				$activityType = $this.closest('.js-each-goods'),
				$favoAmount = $delItemTake.find('.js-favo-amount'),
				$activityWrap = $this.closest('.js-activity-wrap');
			// 积分抵扣
			var $discountWrap = $('#dp-jifen').closest('.js-discount-wrap'),
				$jifenPanel = $body.find('#dp-jifen'),
				disMoney = $jifenPanel.find('[name="isScores"]').data('scoresmoney') * 1,
				jifenUseableAll = parseFloat($jifenPanel.find('[name="isScores"]').data('useable-scores') * 1).toFixed(2),
				jifenUseable = parseFloat($jifenPanel.find('[name="isScores"]').data('scores') * 1).toFixed(2),
				$disTotal = $discountWrap.find('.js-disTotal'),
				$jifenUsed = $jifenPanel.find('.js-jifen-used');

			//如果活动限制了支付方式，提示只能用限制的支付方式
			var pay_id = $this.data('pay-id'),
				pay_name = $this.data('pay-name');
			var $discountPage = $('#js-discount-page');
			if(pay_id != '-1') {
				Dialog.msg('活动限定' + pay_name + '支付！');
				//置灰优惠支付
				$discountPage.addClass('disabled');
				//重置优惠支付方式面板
				resetDiscountPanel('disabled');
				if($discountPage.hasClass('disabled')) {
					$discountPage.find('.js-unfold').trigger('click');
				}
				//resetDiscountMoney(1,discountMoney);
				//renewDiscountMoney();
			} else {
				$discountPage.removeClass('disabled');
				//重置优惠支付方式面板
				resetDiscountPanel();

				//renewDiscountMoney();

			}

			// 如果使用了积分抵扣 则提示 积分抵扣和商品抵扣不能同时使用
			if($discountWrap.hasClass('js-used') && orderClass != 'scoresTicket') {
				//						Dialog.msg('积分抵扣和商品活动不能同时使用！');
				//						return;
				var html = '';
				html = '您的可用积分<span class="em">' + jifenUseableAll + '</span>分，本次可用<span class="em">' + jifenUseable + '</span>' +
					'分（最多抵用现金<span class="em">' + parseFloat(disMoney).toFixed(2) + '</span>元） ' +
					'<button class="btn js-use-jifen ">使用</button>';
				$jifenUsed.html(html);
				$disTotal.html('');
				$discountWrap.removeClass('js-used');
			}

			// 如果选择了欢聚橙卡支付.js-year-card 或者银行活动#js-bank-activity -> .js-bank-item.active  则不允许在选择商品活动
			if($body.find('.js-year-card').hasClass('active')) {
				Dialog.msg('欢聚橙卡支付不支持商品优惠活动！');
				$matchList.addClass('hide');
				return;
			}

			if($body.find('#js-bank-activity .js-bank-item.active').length != 0) {
				Dialog.msg('银行卡活动不支持商品优惠活动!');
				$matchList.addClass('hide');
				return;
			}

			// 优惠券和商品活动不能同时使用 js-activity-wrap .js-used || js-discount-wrap js-used
			if($('#dp-coupon').closest('.js-discount-wrap').hasClass('js-used')) {
				$('#dp-coupon').closest('.js-discount-wrap').removeClass('js-used');
				$('#dp-coupon').find('.js-coupon-item').removeClass('active');
				//						Dialog.msg('官网优惠券和商品活动不能同时使用');
				//						return;
			}

			//文惠券新增  2017-11-7 by chendanfeng  ---------- START
			//优惠券和商品活动不能同时使用
			if($('#dp-coupon3').closest('.js-discount-wrap').hasClass('js-used')) {
				$('#dp-coupon3').closest('.js-discount-wrap').removeClass('js-used');
				$('#dp-coupon3').find('.js-coupon-itm').removeClass('active');
				//						Dialog.msg('第三方优惠券和商品活动不能同时使用');
				//						return;
			}
			//文惠券新增  2017-11-7 by chendanfeng  ---------- END

			if($itemTakeNow.length == 0) { // 满减
				$match.removeClass('js-item-sale-give');

				itemType = $this.find('.js-item-type').text();
				itemText = $this.find('.js-item-text').text();

				// 显示兑换后的面板
				$delItemTake.find('.js-item-type').text(itemType);
				$itemTakeName.text(itemText);
				$itemTakeMoney.text(salePrice);
				$favoAmount.text(salePrice);

				$this.addClass('selected').siblings().removeClass('selected');
				var discountNum = $this.attr('data-activity-sale');
				$delItemTake.removeClass('hide');
				$delItemTake.find('.js-favo-amount').text(discountNum);
				$itemTakeLi.addClass('hide');
				$matchList.addClass('hide');
				$match.addClass('js-used');

				// 如果是订单活动
				/*$activityInput.length == 0 && ($activityInput = $this.find('input[name="order_activity_id"]'));

						$delItemTake.removeClass('hide').attr('data-activityId',$activityInput.val());
						$delItemTake.find('.js-item-take-money').text($activityInput.attr('data-saleprice'));
						$delItemTake.find('.js-favo-amount').text($activityInput.attr('data-saleprice'))
								.attr('data-exchange-price', $activityInput.attr('data-saleprice'));
						//$itemTakeLi.addClass('hide');
						$matchList.addClass('hide');

						//$delItemTake.find('.js-del-discount-num').addClass('hide');

						// 重置各种提交信息
						$delItemTake.find('.js-item-take-num')
								.attr('data-activity-id',$activityInput.val())
								.attr('data-ticket-id','').attr('data-is-sale-give','');

						/!* 判断是单个商品的活动.js-each-goods 还是订单活动.js-order-activity 两个活动不能同时选择
						 * 单个商品活动 .js-order-activity -> .js-item-take-li show && .js-del-item-take hide
						 * 订单活动  .js-each-goods -> .js-item-take-li show && .js-del-item-take hide
						 *!/
						$activityType.length == 0 ? $activityType = $body.find('.js-each-goods') : $activityType = $body.find('.js-order-activity');
						$activityType.find('.js-item-take-li').removeClass('hide');
						$activityType.find('.js-del-item-take').addClass('hide');
						$activityType.removeClass('active');

						$match.addClass('js-used');

						$this.closest('.js-activity-wrap').addClass('active');
*/
				// 更新订单总金额 input[name="actualAmount"] = 订单票价 - 商品活动的钱
				$('input[name="actualAmount"]').val($('input[name="orderAmountAct"]').val() * 1 - $delItemTake.find('.js-favo-amount').text() * 1);
				if($('.js-ship-list li.active a').attr('data-shippingid') == 1) {

					getShippingFree($('#address-list .itm.default .city').attr('data-id'));
				}

				updateGoodsDiscountMoney($this.closest('.js-activity-wrap').find('.js-match .js-favo-amount'));
			}

		};

		// 选择商品优惠方式时更新金额
		function updateGoodsDiscountMoney($dom) {
			var $needMoney = $body.find('#js-need-money'),
				$discountMoney = $body.find('#js-discount-money'),
				$productMoney = $body.find('#js-product-money'),
				discountAllMoney = $body.find('#js-discount-all-money').text() * 1,
				productMoney = $body.find('input[name="orderAmountAct"]').val() * 1, // 商品总金额
				deliveryMoney = $body.find('#js-delivery-money').text() * 1, // 运费
				leftMoney = 0,
				dpMoney = 0,
				exchangeMoney = 0;

			// 获取商品总金额

			// 更新优惠金额
			/*$dom.each(function () {
                        var $itemThis = $(this);
                        dpMoney += $itemThis.text() * 1;

						// 判断是否是换购 原价data-exchange-price
						if($itemThis.closest('.js-match').hasClass('js-item-sale-give')) {
//							exchangeMoney += $itemThis.text() * 1;
							exchangeMoney += $itemThis.attr('data-exchange-price') * 1;
						}
                    });*/
			dpMoney += $dom.text() * 1;
			if($dom.closest('.js-match').hasClass('js-item-sale-give')) {
				//							exchangeMoney += $itemThis.text() * 1;
				exchangeMoney += $dom.attr('data-exchange-price') * 1;
			}

			exchangeMoney > 0 && (productMoney = productMoney + exchangeMoney);
			leftMoney = productMoney + deliveryMoney - dpMoney - discountAllMoney;
			$productMoney.text(parseFloat(productMoney).toFixed(2));
			$discountMoney.text(parseFloat(dpMoney).toFixed(2));
			$needMoney.text(parseFloat(leftMoney).toFixed(2)).attr('data-left-money', parseFloat(leftMoney).toFixed(2));
			renewDiscountMoney();
		};

		// 优惠方式选择增加和减少数量
		$('.edit-num').on('click', '.sub', function() {
			var $this = $(this),
				$num = $this.next('.num'),
				number = $num.text() * 1;

			number == 1 ? $num.text(1) : $num.text(number - 1);

		}).on('click', '.add', function() {
			var $this = $(this),
				$num = $this.prev('.num'),
				number = $num.text() * 1,
				maxNumber = $this.closest('.js-item-list').find('[name^="is_sale_give"]').attr('data-limitnum');

			number == maxNumber ? $num.text(maxNumber) : $num.text(number + 1);
		});

		/**
		 * 点击兑换按钮关闭兑换商品列表
		 * .js-item-list          每个兑换列表
		 * .js-item-title         兑换名称
		 * .js-item-discount      兑换票价
		 * .js-item-take-li       商品列表每个立即换购的li
		 * .js-item-take-now-wrap 立即换购
		 * .js-del-item-take      删除换购
		 * .js-item-take-name     删除换购 名称
		 * .js-item-take-money    删除换购 单价
		 * .js-item-take-num      删除换购 数量
		 * .js-favo-amount        删除换购 优惠金额
		 */
		$('.js-item-take').on('click', function() {
			var $this = $(this),
				$eachItem = $this.closest('.js-item-list'),
				$eachDiscount = $eachItem.find('.js-item-discount'),
				eachTitle = $eachItem.find('.js-item-title').text(),
				eachDiscount = $eachDiscount.text() * 1,
				eachNumber = $eachItem.find('.edit-num .num').text() * 1,
				$popover = $this.closest('.popover'),
				$match = $this.closest('.js-match'),
				$matchList = $match.find('.js-match-list'),
				$delItemTake = $match.find('.js-del-item-take'),
				$matchItem = $this.closest('.js-match-item'),
				$itemType = $matchItem.find('.js-item-type'),
				$activityType = $this.closest('.js-each-goods'),
				$itemTakeLi = $match.find('.js-item-take-li'),
				$activityInput = $matchItem.find('input[name="order_activity_id"]');

			// 如果使用了积分抵扣 则提示 积分抵扣和商品抵扣不能同时使用
			if($body.find('#dp-jifen').closest('.js-discount-wrap').hasClass('js-used') && orderClass != 'scoresTicket') {
				Dialog.msg('积分抵扣和商品活动不能同时使用！');
				return;
			}

			// 如果选择了欢聚橙卡支付.js-year-card 或者银行活动#js-bank-activity -> .js-bank-item.active  则不允许在选择商品活动
			if($body.find('.js-year-card').hasClass('active')) {
				Dialog.msg('欢聚橙卡支付不支持商品优惠活动！');
				return;
			}

			if($body.find('#js-bank-activity .js-bank-item.active').length != 0) {
				Dialog.msg('银行卡活动不支持商品优惠活动!');
				return;
			}

			// 优惠券和商品活动不能同时使用 js-activity-wrap .js-used || js-discount-wrap js-used
			if($('#dp-coupon').closest('.js-discount-wrap').hasClass('js-used')) {
				Dialog.msg('官网优惠券和商品活动不能同时使用');
				return;
			}

			//文惠券新增  2017-11-7 by chendanfeng  ---------- START
			// 第三方优惠券和商品活动不能同时使用 js-activity-wrap .js-used || js-discount-wrap js-used
			if($('#dp-coupon3').closest('.js-discount-wrap').hasClass('js-used')) {
				Dialog.msg('第三方优惠券和商品活动不能同时使用');
				return;
			}
			//文惠券新增  2017-11-7 by chendanfeng  ---------- END

			// 如果是票品活动 $activityInput.length = 0
			$activityInput.length == 0 && ($activityInput = $matchItem.find('input[name="ticket_activity_id"]'));

			// 显示删除换购li并修改内容
			$delItemTake.find('.js-item-type').text($itemType.text());
			$delItemTake.find('.js-item-take-name').text(eachTitle);
			$delItemTake.find('.js-item-take-money').text(parseFloat(eachDiscount).toFixed(2));

			$delItemTake.find('.js-item-take-num').text(eachNumber)
				.attr('data-activity-id', $activityInput.val()) // 活动id
				.attr('data-ticket-id', $activityInput.data('ticketid')) // 票id
				.attr('data-is-sale-give', $eachItem.find('input').val()); // 被换或赠的票id

			$delItemTake.find('.js-favo-amount').text(parseFloat(eachDiscount * eachNumber).toFixed(2))
				.attr('data-exchange-price', parseFloat(eachDiscount * eachNumber).toFixed(2));
			$delItemTake.find('.js-del-discount-num').removeClass('hide');

			// 更新订单总金额 input[name="actualAmount"] = 订单票价 - 商品活动的钱
			$('input[name="actualAmount"]').val($('input[name="orderAmountAct"]').val() * 1);

			$delItemTake.removeClass('hide');
			$itemTakeLi.addClass('hide');
			$matchList.addClass('hide');

			$popover.addClass('hide');

			/* 判断是单个商品的活动 .js-each-goods 还是订单活动.js-order-activity 两个活动不能同时选择
			 * 单个商品活动 .js-order-activity -> .js-item-take-li show && .js-del-item-take hide
			 * 订单活动  .js-each-goods -> .js-item-take-li show && .js-del-item-take hide
			 */
			$activityType.length == 0 ? $activityType = $body.find('.js-each-goods') : $activityType = $body.find('.js-order-activity');
			$activityType.find('.js-item-take-li').removeClass('hide');
			$activityType.find('.js-del-item-take').addClass('hide');
			$activityType.removeClass('active');

			$match.addClass('js-used').addClass('js-item-sale-give');
			$this.closest('.js-activity-wrap').addClass('active');

			// 判断是否是换购 .js-exchange 原价.js-item-price
			if($eachDiscount.hasClass('js-exchange')) {
				$match.addClass('js-exchange');

				// 更新订单总金额 input[name="actualAmount"] = 订单票价 - 商品活动的钱
				$('input[name="actualAmount"]').val($('input[name="orderAmountAct"]').val() * 1 + eachDiscount * eachNumber);

				eachDiscount = $eachItem.find('.js-item-price').text() * 1 - eachDiscount;
				$delItemTake.find('.js-favo-amount').text(parseFloat(eachDiscount * eachNumber).toFixed(2))
					.attr('data-exchange-price', $eachItem.find('.js-item-price').text() * 1 * eachNumber);
			}

			if($('.js-ship-list li.active a').attr('data-shippingid') == 1) {

				getShippingFree($('#address-list .itm.default .city').attr('data-id'));
			}

			// 更新金额
			updateGoodsDiscountMoney($this.closest('.js-activity-wrap').find('.js-match.js-used .js-favo-amount'));

		});

		// 删除满减等优惠
		$('.js-del-item-take-icon').on('click', function() {
			var $this = $(this),
				$match = $this.closest('.js-match'),
				$itemTakeLi = $match.find('.js-item-take-li'),
				$delItemTake = $this.closest('.js-del-item-take'),
				$itemTakeNowWrap = $itemTakeLi.find('.js-item-take-now-wrap'),
				$actualAmount = $('input[name="actualAmount"]'),
				$favoAmount = $delItemTake.find('.js-favo-amount'),
				discountMoney = $favoAmount.text() * 1;

			// 更新订单总金额 input[name="actualAmount"] (判断是否是换购 js-match js-used js-item-sale-give js-exchange)
			if($match.hasClass('js-item-sale-give')) {
				if($match.hasClass('js-exchange')) {
					discountMoney = $favoAmount.attr('data-exchange-price') * 1 - $favoAmount.text() * 1;
					$actualAmount.val($actualAmount.val() * 1 - discountMoney)
				}
			} else {
				$actualAmount.val($actualAmount.val() * 1 + discountMoney);
			}

			// 隐藏删除换购li  显示立即换购
			$delItemTake.addClass('hide');
			$itemTakeLi.removeClass('hide');
			$match.removeClass('js-used').removeClass('js-item-sale-give');
			$match.find('.js-match-item.selected').removeClass('selected');
			if($('.js-ship-list li.active a').attr('data-shippingid') == 1) {

				getShippingFree($('#address-list .itm.default .city').attr('data-id'));
			}

			// 更新金额
			updateGoodsDiscountMoney($this.closest('.js-activity-wrap').find('.js-match.js-used .js-favo-amount'));
			$('#js-discount-page').removeClass('disabled');

		});

		// 点击立即换购，显示对应的兑换列表
		$('.js-item-take-now').on('click', function() {
			var $this = $(this),
				parentLi = $this.closest('.js-item-take-li'),
				selector,
				$target;

			parentLi.length == 0 && (parentLi = $this.closest('.js-match-item'));
			selector = parentLi.data('target') || parentLi.attr('href');
			$target = $(selector);

			if($target.is(':hidden')) {
				$('.popover').addClass('hide');
				$target.removeClass('hide');
			} else {
				$target.addClass('hide')
			}
			//					!$target.is(':hidden') && ();
			//					$target.is(':hidden') ? $target.removeClass('hide') : $target.addClass('hide');

		});

		// 隐藏兑换列表
		$('.js-hide').on('click', function() {
			$(this).closest('.popover').addClass('hide');

		});

		//请求银行优惠列表---cui--2018.2.23--支付方式里显示银行活动列表的去除
		//    	        function getBankActivityList()
		//    	        {
		//    	        	var data = {orderClass:orderClass,_k:_k,orderType:orderType};
		//    	    		$.ajax({
		//    	    			type:'post',
		//						url:ajaxUrl+'?action=getBankActivityList',
		//						data : data,
		//						async: true,
		//						dataType : 'JSON',
		//						success:function(data){
		//							if(data.code==200)
		//							{
		//								$("#js-bank-discount").html(data.data.bank_acivity_list_html);
		//							}
		//						}
		//    	    		})
		//    	        }

		// *************************** 右边优惠换购、满减部分 END **********************/

		// *************************** 支付部分点击活动按钮显示活动详情以及popover弹框创建 **********************/

		//获取优惠支付方式
		function getSalePayInfo() {
			var scoresMoney = $('input[name="scoresMoney"]').val();
			var scores = $('input[name="scores"]').val();
			var cityId = $('input[name="cityId"]').val();
			var method = $('input[name="method"]').val();
			var cateParentId = $('input[name="cateParentId"]').val();
			var data = {
				orderClass: orderClass,
				orderType: orderType,
				scoresMoney: scoresMoney,
				scores: scores,
				_k: _k,
				cityId: cityId,
				method: method,
				cateParentId: cateParentId,
				isYoungActivity: isYoungActivity
			};
			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=getSalePayInfo',
				data: data,
				async: true,
				dataType: 'JSON',
				success: function(data) {
					if(data.code == 200) {
						$("#js-discount-page").html(data.data.salePayHtml);
						var $coupon = $('#dp-coupon3'),
							cityId = "15",
							arr = [5, 10089];
						if($.inArray(parseInt(cityId), arr) == -1) {
							$coupon.closest('.js-discount-wrap').addClass('hide');
							//									 $tip.removeClass('hide').text("该文惠券仅限演出城市为北京使用！");
						}
						if(orderClass == 'scoresTicket') {
							$body.find('#dp-jifen').find('.js-use-jifen').trigger('click');
							$body.find('#dp-jifen').find('.js-use-jifen').text('');
						}
					}
				}
			})
		}

		function getUserIdNumber() {
			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=getUserIdNumber',
				async: true,
				dataType: 'JSON',
				beforeSend: function() {

				},
				success: function(data) {
					if(data.code == 200) {
						$(".id_name").html(data.data[0].id_name);
						$(".id_number").html(data.data[0].id_number);
						$('input[name="userCertificationId"]').val(data.data[0].user_certification_id);
						$(".js-idnumber-ok").show();
					} else {
						$(".js-idnumber-input").show();
					}
				},
				complete: function() {

				}
			})
		}

		$body.on('click', '.js-input-bind', function(e) {
			var id_name = $('input[name="id_name"]').val();
			var id_number = $('input[name="id_number"]').val();
			var obj = $(this);
			var is_submit = obj.attr('data-submit');
			if(id_name == '') {
				$('.id_name_error').html('请填写您的姓名').show();
				return false;
			}

			if(id_number == '') {
				$('.id_number_error').html('请填写您的身份证号码').show();
				return false;
			}

			if(!(id_number.length == 18 || id_number.length == 15)) {
				$('.id_number_error').html('请填写您正确的身份证号码').show();
				return false;
			}

			if(is_submit == 1) {
				Dialog.msg('验证中，请不要重复提交！');
				return false;
			}

			var data = {
				id_name: id_name,
				id_number: id_number
			};
			$.ajax({
				type: 'post',
				url: ajaxUrl + '?action=addUserIdNumber',
				data: data,
				async: true,
				dataType: 'JSON',
				beforeSend: function() {
					obj.attr('data-submit', 1);
					obj.html('验证中...');
				},
				success: function(data) {
					if(data.code == 200) {
						$(".id_name").html(data.data.id_name);
						$(".id_number").html(data.data.id_number);
						$('input[name="userCertificationId"]').val(data.data.user_certification_id);
						$(".js-idnumber-ok").show();
						$(".js-idnumber-input").hide();
					} else {
						$('.id_name_error').html(data.msg).show();
					}
				},
				complete: function() {
					obj.attr('data-submit', 0);
					obj.html('验证并绑定');
				}
			})

		});

		// 点击活动显示弹框
		$body.on('click', '.js-show-activity', function(e) {
			e.stopPropagation();

			var $this = $(this),
				$activityItem = $this.closest('.js-activity-item'),
				activityType = $activityItem.data('activityid') || $activityItem.data('couponid'),
				discountMoney = $activityItem.data('saleprice'),
				postUrl = '',
				activityTitle = '',
				html = '',
				postParam = {};

			// 判断是银行活动还是优惠券  是否含有.js-bank-item 银行活动列表
			if($activityItem.hasClass('js-bank-item')) {
				postUrl = 'getBankActivityInfo';
				activityTitle = '活动'
				postParam = {
					'activityType': activityType
				}
			} else {
				postUrl = 'getOrderCouponInfo';
				activityTitle = '优惠券';
				postParam = {
					'couponId': activityType
				}
			}

			// 把其他弹出层都关闭
			$body.find('.popover').remove();

			$.ajax({
				type: 'POST',
				url: ajaxUrl + '?action=' + postUrl,
				dataType: 'JSON',
				data: postParam,
				success: function(data) {
					/*
					 * 银行卡活动列表参数 data.activityInfo
					 * .activity_name   活动名称
					 * .pay_name        支付方式
					 * .time            活动期限
					 * .referer         下单来源
					 * 适用范围 .range
					 * .limit_category  演出品类
					 * .limit_city      参与城市
					 * .referer         合作方式
					 * 促销方式 .rule
					 * discountMoney    优惠金额
					 * .discount        折扣
					 * .limit_num       限制张数
					 * .limit_order     限制单数
					 * .limit_price     限制票价
					 * .min_limit_money 最低限额
					 * .one_discount    首张优惠
					 */
					html += '<div class="activity">';
					html += '<ul>';

					// 如果是优惠券
					if(!$activityItem.hasClass('js-bank-item')) {
						html += '<li>';
						html += '<label class="label">活动名称：</label>';
						html += '<span>' + data.data.activityInfo.activity_name + '</span>';
						html += '</li>';
						html += '<li>';
						html += '<label class="label">' + activityTitle + '名称：</label>';
						html += '<span>' + data.data.activityInfo.coupon_name + '</span>';
						html += '<!--a href="#" class="link">查看活动</a-->';
						html += '</li>';
					} else {
						html += '<li>';
						html += '<label class="label">' + activityTitle + '名称：</label>';
						html += '<span>' + data.data.activityInfo.activity_name + '</span>';
						html += '</li>';
					}

					html += '<li>';
					html += '<label class="label">' + activityTitle + '有效期：</label>';
					html += '<span>' + data.data.activityInfo.time + '</span>';
					html += '</li>';
					html += '<li>';
					html += '<label class="label">下单来源：</label>';
					html += '<span>' + data.data.activityInfo.referer + '</span>';
					html += '</li>';
					html += '<li>';
					html += '<label class="label">支付方式：</label>';
					html += '<span>' + data.data.activityInfo.pay_name + '</span>';
					html += '</li>';
					html += '<li>';
					html += '<label class="label">适用范围：</label>';
					html += '<div class="muti-right">';
					html += '<p><span class="active-tips">（需同时满足以下条件）</span></p>';
					html += '<p><span>参与城市：</span><span>' + data.data.activityInfo.range.limit_city + '</span></p>';
					html += '<p><span>合作方式：</span><span>' + data.data.activityInfo.range.referer + '</span></p>';
					html += '<p><span>演出品类：</span><span>' + data.data.activityInfo.range.limit_category + '</span></p>';
					html += '</div>';
					html += '</li>';
					html += '<li>';
					html += '<label class="label">促销方式：</label>';
					html += '<div class="muti-right">';
					html += '<p><span class="active-tips"><br></span></p>';
					discountMoney != '' && (html += '<p><span>优惠金额：</span><span>' + discountMoney + '元</span></p>');
					data.data.activityInfo.rule.discount in data.data.activityInfo && (html += '<p><span>折扣：</span><span>' + data.data.activityInfo.rule.discount * 10 + '折</span></p>');
					data.data.activityInfo.rule.one_discount in data.data.activityInfo && (html += '<p><span>首张优惠：</span><span>' + data.data.activityInfo.rule.one_discount * 10 + '折</span></p>');
					data.data.activityInfo.rule.limit_num in data.data.activityInfo && (html += '<p><span>限制张数：</span><span>' + data.data.activityInfo.rule.limit_num + '张</span></p>');
					data.data.activityInfo.rule.limit_order in data.data.activityInfo && (html += '<p><span>限制单数：</span><span>' + data.data.activityInfo.rule.limit_order + '单</span></p>');
					data.data.activityInfo.rule.limit_price in data.data.activityInfo && (html += '<p><span>限制票价：</span><span>' + data.data.activityInfo.rule.limit_price + '</span></p>');
					data.data.activityInfo.rule.min_limit_money in data.data.activityInfo && (html += '<p><span>订单总价：</span><span>最低限额 ≥ ' + data.data.activityInfo.rule.min_limit_money + '元</span></p>');
					html += '</div>';
					html += '</li>';
					html += '</ul>';
					html += '</div>';

					// 初始化popover setPopover(dom,type,str,title)
					setPopover($this, 1, html, activityTitle + '说明');
				}
			});
		});

		function setPopover(dom, type, str, title) {
			var popoverLocation = 'popover-location';

			switch(type) {
				case 1:
					popoverLocation = 'popover-location';
					break;
				default:
					popoverLocation = 'popover-location';
					break;
			}

			var offsetTop = dom.offset().top + dom.height() + 5,
				offsetLeft = dom.offset().left + dom.width() + 5,
				html = '';

			html += '<div class="popover ' + popoverLocation + '" style="top: ' + offsetTop + 'px; left: ' + offsetLeft + 'px;">';
			html += '<div class="popover-title">' + title;
			html += '<a class="js-close close">X</a>';
			html += '</div>';
			html += '<div class="popover-inner">';
			html += str;
			html += '</div>';
			html += '</div>';

			$('body').append(html)

		}

		$body.on('click', '.js-close', function() {
			var $this = $(this),
				$popover = $this.closest('.popover');

			$popover.remove();

		});

		// 点击popover其他地方关闭popover
		/*	$body.on('click', function (e) {
				var $target = $(e.target);

				if(!$target.hasClass('popover') || $target.parents('.popover').length == 0) {
					// 把其他弹出层都关闭
					$body.find('.popover').remove();
				}
			});*/

		// *************************** 支付部分点击活动按钮显示活动详情以及popover弹框创建 END ************************* /

		// *************************** 其他 ************************* /
		// 帮助信息显示
		var tipLayer;
		$body.on('mouseenter', '.js-tips', function() {
			var $this = $(this),
				tip = $(this).data('tip');
			tipLayer = layer.tips(tip, $this, {
				tips: 3,
				skin: 'layer-ext-myskin',
				time: 0
			});
		}).on('mouseleave', '.js-tips', function() {
			layer.close(tipLayer);
		});

		// 帮助信息
		$body.on('mouseenter', '.js-ico-tip-integral', function() {
			var $this = $(this);
			$this.closest('.js-tips-wrap').find('.js-integral-tips').show();
		}).on('mouseleave', '.js-ico-tip-integral', function() {
			var $this = $(this);

			var hideTips = function() {
				$this.closest('.js-tips-wrap').find('.js-integral-tips').hide()
			};

			setTimeout(hideTips, 1500)

		});

		$body.on('mouseenter', '.js-tips-wrap .js-integral-tips', function() {
			var $this = $(this);
			$this.show();
		}).on('mouseleave', '.js-tips-wrap .js-integral-tips', function() {
			var $this = $(this);
			$this.hide()

		});

		// 单击隐藏/展开
		$body.on('click', '.js-click-show', function() {
			var $this = $(this),
				$target = $($this.data('target'));

			if($target.is(':hidden')) {
				$target.css('display', 'block');
			} else {
				$target.css('display', 'none');
			}
		});

		$body.on('change', '.js-tiao-kuang', function() {
			$('#submitOrder').attr('class', '')
			if($(this).is(':checked')) {

				$('#submitOrder').addClass('btn no-unl btn-large bg-fe5d36');
			} else {
				$('#submitOrder').addClass('btn bg-fe5d36 no-unl btn-ban btn-large');
			}
		})

		// *************************** 其他 END ************************* /
		function priceFormat(price) {
			return parseFloat(price).toFixed(2);
		}

		//}

		/**
		 * 优惠券兑换
		 * 按钮：  #js-exchange
		 * input: #js-coupon-password
		 * 优惠券：#dp-coupon .js-coupon-item
		 * 提示信息：.js-error
		 */
		$body.on('click', '#js-exchange', function() {
			var $this = $(this),
				$couponInput = $('#js-coupon-password'),
				couponInput = $couponInput.val(),
				$coupon = $('#dp-coupon'),
				$tip = $this.next(),
				postUrl = 'http://buy.juooo.com/Index/handleCouponCode',
				data = {},
				couponHtml = '';

			data.orderClass = orderClass;
			data.orderType = orderType;
			data.couponCode = couponInput;
			data._k = _k;
			//young票不支持兑换码
			if(isYoungActivity == 1) {
				$tip.removeClass('hide').text('Young票不支持兑换优惠券');
				return;
			}
			if(couponInput == '') {
				$tip.removeClass('hide').text('请输入兑换码');
			} else {
				$.ajax({
					type: 'POST',
					url: postUrl,
					dataType: 'JSON',
					data: data,
					success: function(data) {
						/*
						 * activity_name 优惠券名称
						 * begin_valid_time 开始时间
						 * coupon_code
						 * coupon_id
						 * coupon_price
						 * end_valid_time
						 * icon
						 * imgUrl
						 * limit_low_price
						 */
						if(data.code == 200) {

							if($('.js-coupon-list li').hasClass('coupon_' + data.data.coupon_code + '')) {
								$tip.removeClass('hide').text('已兑换此券');
								return false;
							}

							couponHtml += '<li class="coupon-itm js-coupon-item js-activity-item coupon_' + data.data.coupon_code + '" data-couponId="' + data.data.coupon_id + '" data-couponCode="' + data.data.coupon_code + '"data-saleprice="' + data.data.coupon_price + '" >';
							couponHtml += '<div class="fv-bank" style="display: none">';
							couponHtml += '<img class="js-bank-img" src="' + data.data.imgUrl + '" alt="' + data.data.icon + '">';
							couponHtml += '</div>';
							couponHtml += '<div class="coupon-price">';
							couponHtml += '<span class="coupon-sym">¥</span>';
							couponHtml += '<span class="coupon-p">' + parseInt(data.data.coupon_price) + '</span>';
							couponHtml += '<span class="coupon-c">（满' + data.data.limit_low_price + '可用）</span>';
							couponHtml += '</div>';
							couponHtml += '<div class="coupon-cont">';
							couponHtml += '<p class="coupon-cont-t">' + data.data.activity_name + '</p>';
							couponHtml += '<p class="coupon-cont-t">有效期：' + data.data.begin_valid_time + ' 至 ' + data.data.end_valid_time + '</p>';
							couponHtml += '</div>';
							couponHtml += '</li>';

							// 添加到第一个
							if($coupon.find('.js-coupon-item').length > 0) {
								$coupon.find('.js-coupon-item').eq(0).before(couponHtml);
							} else {
								$coupon.find('.js-coupon-list').append(couponHtml);
							}

							$coupon.find('.js-coupon-item').eq(0).trigger('click');

							$couponInput.val('');
						} else {
							$tip.removeClass('hide').text(data.msg);
						}

					},
					error: function() {

					}
				})
			}
		});
		//文惠券新增  2017-11-7 by chendanfeng  ---------- START
		/**
		 * 第三方优惠券兑换
		 * 按钮：  #js_wenhui_exchange
		 * input: #wenhui_coupon_input
		 * 第三方优惠券：#dp-coupon3 .js-coupon-itm
		 * 提示信息：.js-error
		 */

		$body.on('click', '#js_wenhui_exchange', function() {
			var $this = $(this),
				$couponInput = $('#wenhui_coupon_input'),
				couponInput = $couponInput.val(),
				goodsPrice = $("#js-product-money").text(),
				$coupon = $('#dp-coupon3'),
				$tip = $this.parent().next(),
				postUrl = 'http://buy.juooo.com/Index/handleWenhuiConpon',
				data = {},
				couponHtml = '',
				cityId = "15";
			// 积分抵扣
			var $discountWrap = $('#dp-jifen').closest('.js-discount-wrap'),
				$jifenPanel = $body.find('#dp-jifen'),
				disMoney = $jifenPanel.find('[name="isScores"]').data('scoresmoney') * 1,
				jifenUseableAll = parseFloat($jifenPanel.find('[name="isScores"]').data('useable-scores') * 1).toFixed(2),
				jifenUseable = parseFloat($jifenPanel.find('[name="isScores"]').data('scores') * 1).toFixed(2),
				$disTotal = $discountWrap.find('.js-disTotal'),
				$jifenUsed = $jifenPanel.find('.js-jifen-used');

			data.orderClass = orderClass;
			data.orderType = orderType;
			data.couponCode = couponInput;
			data.goodsPrice = goodsPrice;
			data._k = _k;

			if(couponInput == '') {
				$tip.removeClass('hide').text('请输入兑换码');
			} else if(numL(couponInput) && NumABC(couponInput)) {
				$.ajax({
					type: 'POST',
					url: postUrl,
					dataType: 'JSON',
					data: data,
					success: function(data) {

						if(data.code == 1 && data.data.IsSuccess) {

							var startTime = getStrTime(data.data.StartTime);
							var endTime = getStrTime(data.data.ExpireTime);
							var productMoney = $("#js-product-money").text();
							var timestamp = parseInt(new Date().getTime() / 1000);

							var arr = [5, 10089];
							if($.inArray(parseInt(cityId), arr) == -1) {
								$tip.removeClass('hide').text("该文惠券仅限演出城市为北京使用！");
							} else {
								//文惠券优惠类型为满减
								if(data.data.Amount !== false && data.data.MinConsume !== false) {
									var lowValidPrice = data.data.MinConsume;
									//若文惠券不适用于本订单（订单金额未达到使用下限或使用期限不在有效期）：优惠券置灰，不可选中 .dis  chendanfeng
									if(timestamp <= data.data.StartTime || timestamp >= data.data.ExpireTime || lowValidPrice > productMoney) {
										couponHtml += '<li class="coupon-itm js-coupon-itm dis" data-couponcode="' + '4_' + data.data.Code + '" data-saleprice="' + data.data.Amount + '" data-low-valid-price="' + data.data.MinConsume + '" >';
									} else {
										$coupon.closest('.js-discount-wrap').addClass('js-used');
										$coupon.find('.js-coupon-itm').removeClass('active'); // 其余卡取消选中
										couponHtml += '<li class="coupon-itm js-coupon-itm active " data-couponcode="' + '4_' + data.data.Code + '" data-saleprice="' + data.data.Amount + '" data-low-valid-price="' + data.data.MinConsume + '" >';
									}
									couponHtml += '<div class="coupon-price">';
									couponHtml += '<span class="coupon-sym">¥</span>';
									couponHtml += '<span class="coupon-p">' + parseInt(data.data.Amount) + '</span>';
									couponHtml += '<span class="coupon-c">（满 ' + data.data.MinConsume + ' 可用）</span>';
									couponHtml += '</div>';
									couponHtml += '<div class="coupon-cont" data-start-valid-time="' + data.data.StartTime + '" data-end-valid-time="' + data.data.ExpireTime + '">';
									couponHtml += '<p class="coupon-cont-t">文惠卡通用券满￥' + data.data.MinConsume + ' 减 ' + data.data.Amount + '</p>';
									couponHtml += '<p class="coupon-cont-t">有效期：' + startTime + ' - ' + endTime + '</p>';
									couponHtml += '</div>';
									couponHtml += '</li>';
									$("#wenhui_coupon_info").html('');
									$("#wenhui_coupon_info").prepend(couponHtml);

									// 如果使用商品活动，则不能选择优惠券 js-activity-wrap .js-used
									if($('.js-activity-wrap .js-used').length > 0) {
										$('.js-activity-wrap .js-match').removeClass('js-used');
										$('.js-activity-wrap .js-match').find('.js-item-take-li').removeClass('hide');
										$('.js-activity-wrap .js-match').find('.js-del-item-take').addClass('hide');
									}

									// 判断积分抵扣的使用，若已使用则取消
									if($discountWrap.hasClass('js-used')) {
										var html = '';
										html = '您的可用积分<span class="em">' + jifenUseableAll + '</span>分，本次可用<span class="em">' + jifenUseable + '</span>' +
											'分（最多抵用现金<span class="em">' + parseFloat(disMoney).toFixed(2) + '</span>元） ' +
											'<button class="btn js-use-jifen ">使用</button>';
										$jifenUsed.html(html);
										$disTotal.html('（账户积分：<span class="em">' + jifenUseableAll + '</span>分）');
										$discountWrap.removeClass('js-used');
									}

									// 官网优惠券取消使用
									if($('#dp-coupon').closest('.js-discount-wrap').hasClass('js-used')) {
										$('#dp-coupon').closest('.js-discount-wrap').removeClass('js-used');
										$('#dp-coupon').find('.js-coupon-item').removeClass('active');
									}
									// 金额联动 积分，橙卡，余额，优惠券，优惠
									renewDiscountMoney();
								} else {
									$tip.removeClass('hide').text(data.msg);
								}
								$couponInput.val('');
							}
						} else {
							$tip.removeClass('hide').text(data.msg);
						}
					},
					error: function() {

					}
				})
			} else {
				$(this).parent().siblings('.js-coupon-mes').removeClass('hide').html('请输入正确的16位兑换码');
			}
		});

		// 验证字母和数字
		function NumABC(string) {
			var reg = /^[A-Za-z0-9]+$/;
			if(reg.test(string)) {
				return true;
			} else {
				return false;
			}
		}

		// 验证16位
		function numL(string) {
			if(string.split("").length == 16) {
				return true;
			} else {
				return false;
			}
		}

		// 文惠券兑换 input 获得焦点时隐藏提示语
		$body.on('focus', '#wenhui_coupon_input', function() {
			var $this = $(this),
				$tip = $this.parent(".coupon-input-wraps").next();

			$tip.addClass('hide');
		});
		//文惠券新增  2017-11-7 by chendanfeng  ---------- END

		// 优惠券兑换 input 获得焦点时隐藏提示语
		$body.on('focus', '#js-coupon-password', function() {
			var $this = $(this),
				$tip = $this.nextAll('.js-error');

			$tip.addClass('hide');
		});

		//提交订单
		$("#submitOrder").on('click', function() {
			var createOrderUrl = 'http://buy.juooo.com/Index/createOrder',
				$shippingType = $('.js-ship-list li.active [data-toggle="tab-list"]'),
				$shippingTarget = $('#' + $shippingType.attr('data-target')),
				shippingId = $shippingType.attr('data-shippingid'), // 配送方式
				addressId = $('#address-list li.default .js-edit').attr('data-addressid'), // 如果是快递则是 收货地址ID 否则为0
				$userName = $shippingTarget.find('input[name="user_name"]'),
				userName = $userName.val(),
				$userMobile = $shippingTarget.find('input[name="mobile"]'),
				mobile = $userMobile.val(),
				orderRemarks = $body.find('input[name="orderRemarks"]').val(); // 订单备注

			var isScore = 0, // 是否进行积分兑换 0：不抵扣 1：抵扣
				isCoupon = '', // 如果为优惠券抵扣：优惠券编码 不使用：为空
				isUserMoney = 0, // 是否使用余额抵扣 0：不抵扣 1：抵扣
				isCard = 0, // 是否橙卡抵扣 0：不抵扣 1：抵扣
				ticketActivityId = '', // 票价的活动  票ID_活动ID^票ID_活动ID 会有多个情况  跟票品下拉选择  每个票品只有一个
				orderActivityId = '', // 订单活动ID  下拉订单选择的id 只有一个
				bankActivityId = '', // 银行活动ID
				activityType = 1, // 活动类型 1：银行活动 2 普通活动
				is_sale_give = '', // 换赠 如果是买赠可能会出现多个：票ID_被赠送票ID_张数  换购：被换购的票ID_张数
				$cartType = $body.find('.js-cart-list li.active'),
				payId = $cartType.attr('data-payid'), // 支付方式id
				$bankActivityItem = $body.find('#js-bank-activity').find('.js-activity-item.active'),
				$dpJifenWrap = $body.find('#dp-jifen').closest('.js-discount-wrap'),
				$dpCouponWrap = $body.find('#dp-coupon').closest('.js-discount-wrap'),
				$dpCoupon3Wrap = $body.find('#dp-coupon3').closest('.js-discount-wrap'),
				$dpLeftWrap = $body.find('#dp-balance').closest('.js-discount-wrap'),
				$dpJuoooWrap = $body.find('#dp-judiscount').closest('.js-discount-wrap'),
				$goodActivityWrap = $body.find(".js-activity-wrap.active"),
				ajaxCount = 0, // 用于记录当是在线选座的时候，提交订单循环发送请求锁定座位号的次数 <= 10
				ajaxTimeThread = null,
				yearCardDialog = null,
				regMobile = /^1[34578]\d{9}$/, // 用于记录欢聚橙卡提示框
				goodsDeduction = '', //订单商品抵扣，票ID_抵扣途径^票ID_抵扣途径
				shippingScheduleId = null;
			clientCityId = 0;

			if(shippingId == 7) {
				userName = $('#shippingWayInfo').find('.onsite-ticket').find('input[name="user_name"]').val();
				mobile = $('#shippingWayInfo').find('.onsite-ticket').find('input[name="mobile"]').val();
				shippingScheduleId = $('#shippingWayInfo').find('select.js-onsite-ticket-time').find('option:selected').val();
			}

			//设置提交订单所需的活动参数
			var promotionObj = $('#discount-list .js-match-item.selected');
			var currentIsType = promotionObj.attr('data-is-type');
			isCard = $("#js-deductible-card").hasClass('icon-checkbox-selected') ? 1 : 0;
			isUserMoney = $("#js-user-money-deductible").hasClass('icon-checkbox-selected') ? 1 : 0;
			switch(currentIsType) {
				case '2':
					//跟订单走
					isCoupon = 0;
					bankActivityId = '';
					ticketActivityId = '';
					orderActivityId = promotionObj.attr('data-activity-id');
					break;
				default:
					//跟票走
					isCoupon = 0;
					bankActivityId = '';
					orderActivityId = '';
					ticketActivityId = promotionObj.attr('data-activity-id');
					break;
			}

			// 如果配送方式不是快递的话，用户名和手机号不能为空  #js-shipping-wrap
			if(shippingId != 1) {
				//电子票配送方式，改为不需要填写姓名
				if(shippingId != 2 && !userName) {
					window.location.href = LOCATION_URL + '#js-shipping-wrap';
					$userName.trigger('blur');
					return;
				}

				if(!mobile) {
					window.location.href = LOCATION_URL + '#js-shipping-wrap';
					$userMobile.trigger('blur');
					return;
				}

				if(!regMobile.test(mobile)) {
					window.location.href = LOCATION_URL + '#js-shipping-wrap';
					$userMobile.trigger('blur');
					return;
				}
			} else {
				//快递
				if(!addressId) {
					Dialog.msg('请填写收货地址');
					if(personName == '') {
						window.location.href = LOCATION_URL + '#js-shipping-wrap';
						$personName.trigger('blur');
						return;
					}
					if(!mobile || !regMobile.test(mobile)) {
						window.location.href = LOCATION_URL + '#js-shipping-wrap';
						$userMobile.trigger('blur');
						return;
					}
					if(!address) {
						window.location.href = LOCATION_URL + '#js-shipping-wrap';
						$address.trigger('blur');
						return;
					}
				}
			}

			if(shippingId == 8) {
				var $viewCity = $shippingTarget.find('#viewCity');
				clientCityId = $viewCity.find('option:selected').val();
				if(!checkSelect($viewCity)) {
					return;
				}
			}

			if(shippingId == 7 && !shippingScheduleId) {
				window.location.href = LOCATION_URL + '#js-shipping-wrap';
				$('#shippingWayInfo').find('select.js-onsite-ticket-time').trigger('blur');
				return;
			}

			if(!$('.js-tiao-kuang').is(':checked')) {
				return false;
			}

			/*
			 * 1. 欢聚橙卡支付 积分兑换、优惠券抵扣、余额抵扣、橙卡抵扣都为0，票价活动、银行活动、换赠为空
			 * 2. 银行活动 积分兑换、优惠券抵扣、余额抵扣、橙卡抵扣都为0，票价活动、换赠都为空
			 * 3. 积分兑换、优惠券抵扣、余额抵扣、橙卡抵扣通过.js-used取值，票价活动、换赠通过.active取值
			 */
			if($cartType.hasClass('js-year-card')) { // 如果是欢聚橙卡支付

				isScore = 0;
				isCard = 0;
				isCoupon = 0;
				isUserMoney = 0;
				ticketActivityId = '';
				bankActivityId = '';
				activityType = 2;
				is_sale_give = '';
			} else if($cartType.hasClass('js-pay-online') && $bankActivityItem.length != 0) { // 选择银行活动支付
				isScore = 0;
				isCard = 0;
				isCoupon = 0;
				isUserMoney = 0;
				ticketActivityId = '';
				bankActivityId = $bankActivityItem.data('activityid');
				activityType = 1;
				is_sale_give = '';
			} else { // 其他情况

				$dpJifenWrap.hasClass('js-used') ? isScore = 1 : isScore = 0; // 积分抵扣
				$dpJuoooWrap.hasClass('js-used') ? isCard = 1 : isCard = 0; // 橙卡抵扣
				$dpLeftWrap.hasClass('js-used') ? isUserMoney = 1 : isUserMoney = 0; // 余额抵扣

				if($dpCouponWrap.hasClass('js-used')) {
					var isCoupon = $dpCouponWrap.find('.js-coupon-item.active').data('couponcode');
					ticketActivityId = '';
					bankActivityId = '';
				} else if($dpCoupon3Wrap.hasClass('js-used')) {
					var isCoupon = $dpCoupon3Wrap.find('.js-coupon-itm.active').data('couponcode');
					ticketActivityId = '';
					bankActivityId = '';
				} else {
					var isCoupon = 0;
				}

				// 选择商品活动 .js-activity-wrap.active  -> .js-match.js-used -> .js-item-take-num && data-activity-id (判断选择商品活动的类型)
				//				if($goodActivityWrap.hasClass('js-each-goods')) {
				//
				//					$goodActivityWrap.find('.js-match.js-used').each(function (i) {
				//						var $itemThis    = $(this),
				//                            $itemTakeNum = $itemThis.find('.js-item-take-num');
				//
				////						if($itemTakeNum.attr('data-is-sale-give')) {
				////							is_sale_give == '' ? is_sale_give += $itemTakeNum.data('ticket-id') + '_' + $itemTakeNum.data('is-sale-give') + '_' + $itemTakeNum.text()
				////									           : is_sale_give += '^' + $itemTakeNum.data('ticket-id') + '_' + $itemTakeNum.data('is-sale-give') + '_' + $itemTakeNum.text();
				////						}
				//
				//                        if ($itemTakeNum.data('activity-id').indexOf('js_is_deduction_') === 0)
				//                        {
				//                            var item = $itemTakeNum.data('activity-id').replace('js_is_deduction_','');
				//                            goodsDeduction == '' ? goodsDeduction += item : goodsDeduction += '^' + item;
				//                        }
				//                        else
				//                        {
				//                            ticketActivityId == '' ? ticketActivityId += $itemTakeNum.data('activity-id') : ticketActivityId += '^' + $itemTakeNum.data('activity-id');
				//                        }
				//					});
				//					orderActivityId = '';
				//				}
				//				else { // 选择订单活动
				//					var $itemTakeNum = $goodActivityWrap.find('.js-match.js-used').find('.js-item-take-num');
				//
				//					orderActivityId  = $itemTakeNum.data('activity-id');
				//					is_sale_give     = $itemTakeNum.data('is-sale-give') + '_' + $itemTakeNum.text();
				//					ticketActivityId = '';
				//				}

				activityType = 2;
				if($.inArray(orderClass, ['seckillTicket', 'tyingTicket', 'groupTicket']) == -1 && promotionObj.data('activity-id') && promotionObj.data('activity-id').indexOf('js_is_deduction_') === 0) {
					var item = promotionObj.data('activity-id').replace(/js_is_deduction_/g, '');
					goodsDeduction = item;
					orderActivityId = '';
					ticketActivityId = '';
					isCoupon = 0;
					bankActivityId = '';
				}
			}

			var userCertificationId = $('input[name="userCertificationId"]').val();
			var data = {
				_k: _k,
				type: orderType,
				isClass: orderClass,
				shippingId: shippingId,
				addressId: addressId,
				userName: userName,
				mobile: mobile,
				payId: payId,
				isScore: isScore,
				isCard: isCard,
				isCoupon: isCoupon,
				isUserMoney: isUserMoney,
				is_sale_give: is_sale_give,
				orderActivityId: orderActivityId,
				ticketActivityId: ticketActivityId,
				goods_deduction: goodsDeduction,
				bankActivityId: bankActivityId,
				activityType: activityType,
				orderRemarks: orderRemarks,
				userCertificationId: userCertificationId,
				shippingScheduleId: shippingScheduleId,
				clientCityId: clientCityId
			};
			var ajaxFun = function() {
				$.ajax({
					type: 'post',
					url: createOrderUrl,
					data: data,
					async: true,
					dataType: 'JSON',
					success: function(data) {
						if(data.code == 200) {
							var returnPayUrl = data.data.returnPayUrl;
							window.location.href = returnPayUrl;
						} else {
							// 隐藏loading
							$body.find('.js-loading-page').addClass('hide');
							Dialog.msg(data.msg);
							return;
						}

						// 如果返回值为空，提示系统繁忙
						if(data.code == '') {
							// 隐藏loading
							$body.find('.js-loading-page').addClass('hide');
							// 异常
							Dialog.msg('系统繁忙，请稍后再试...');
						}

					}
				})
			};

			var ajaxSubmitFun = function() {

				// 显示loading
				$body.find('.js-loading-page').removeClass('hide');
				// 判断是在线选座还是立即购买
				if(orderClass == 'seatTicket') { // 在线选座

					ajaxTimeThread = setInterval(function() {
						if(ajaxCount >= 11) {
							clearInterval(ajaxTimeThread);
							return;
						}

						$.ajax({
							type: 'POST',
							url: ajaxUrl + '?action=handlePrelockPush',
							data: {
								'_k': _k,
								'orderType': orderType,
								'orderClass': orderClass
							},
							dataType: 'json',
							async: false,
							success: function(result) {
								if(result.code == -1) {
									// 隐藏loading
									$body.find('.js-loading-page').addClass('hide');

									// 异常
									clearInterval(ajaxTimeThread);
									Dialog.msg(result.msg);
								} else if(result.code == 2 && result.data.rettid != '') {
									clearInterval(ajaxTimeThread);

									data.rettId = result.data.rettid;
									// 提交
									ajaxFun();
								}

								if(ajaxCount >= 10) {
									// 隐藏loading
									$body.find('.js-loading-page').addClass('hide');
									// 异常
									Dialog.msg(result.msg);
								}

								// 如果返回值为空，提示系统繁忙
								if(result.code == '') {
									// 隐藏loading
									$body.find('.js-loading-page').addClass('hide');
									// 异常
									Dialog.msg('系统繁忙，请稍后再试...');
								}

								ajaxCount++;

							}
						});

					}, 800);

				} else {
					ajaxFun()
				}
			};

			// 如果是欢聚橙卡支付 给出提示框
			if($cartType.hasClass('js-year-card')) {

				// 弹出提示，是否确认使用欢聚橙卡支付
				Dialog.confirm({
					title: '聚橙提示',
					content: '使用欢聚橙卡支付，订单提交成功后，将会扣除当前欢聚橙卡次数' + deductNum + '次',
					okBtnCallback: function(index) {
						Dialog.close(index)
						ajaxSubmitFun()
					},
					cancelBtnCallback: function(index) {
						Dialog.close(index);
						return;
					}
				});
			} else {
				ajaxSubmitFun()
			}

		});

		/* 文惠卡新增 2017/10/24 by wancui */

		// 点击关闭弹窗
		$('.js-c-popup-bg,.js-c-popup-close,.js-c-popup-sure,.js-c-popup-cancel').on('click', function() {
			$('.js-c-popup-bg').removeClass('active');
			$('body,html').css("overflow", "visible");
		})

		// 验证字母和数字
		function NumABC(string) {
			var reg = /^[A-Za-z0-9]+$/;
			if(reg.test(string)) {
				return true;
			} else {
				return false;
			}
		}

		// 验证16位
		function numL(string) {
			if(string.split("").length == 16) {
				return true;
			} else {
				return false;
			}
		}
		// 验证数组中是否有该字符串
		function numValid(array, string) {
			var flag = false;
			for(let i = 0; i < array.length; i++) {
				if(string == array[i]) {
					flag = true;
				}
			}
			return flag;
		}

		function getStrTime(str) {
			var d = new Date(str * 1000); //根据时间戳生成的时间对象
			var date = (d.getFullYear()) + "." +
				(d.getMonth() + 1) + "." +
				(d.getDate());
			return date;
		}

		// 点击优惠券页面
		$('.js-coupon-wraps').on('click', '.js-coupon-itm', function() {

			var $discountWrap = $this.closest('.js-discount-wrap');

			if(!$(this).hasClass('dis')) {
				if($(this).hasClass('active')) {
					$(this).removeClass('active');
					$discountWrap.removeClass('js-used');
				} else {
					$('.js-coupon-wraps .js-coupon-lis').find('.js-coupon-itm').removeClass('active');
					$(this).addClass('active');
					$discountWrap.addClass('js-used');
				}

			}
		});

		/* 文惠卡新增 2017/10/24 by wancui end */

		//}) // END define

	});
</script>

</body>

</html>
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
		<link rel="dns-prefetch" href="http://www.juooo.com" />
		<link rel="dns-prefetch" href="http://img.juooo.com" />
		<title>选择支付方式—聚橙网</title>
		<meta name="keywords" content="聚橙网" />
		<meta name="description" content="聚橙网打造国内专业的票务和演出订票平台" />
		<link rel="stylesheet" href="<%=path%>/resource/all_product/css/base.css">
		<link rel="stylesheet" href="<%=path%>/resource/all_product/css/cart.css">
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
								<a href="../user/myjuooo.html"><span class="c9 vip-level" id="js-get-level" style="background-image: url('');">123456</span></a>
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
							<a href="javascript:;" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
							<div class="phone-code js-phone-code"><img src="<%=path%>/resource/all_product/images/mobile_2.png" alt=""></div>
						</div>
					</div>
					
				</div>
			</div>
			<!-- 顶部栏 end -->
			<script>
				_ozprm = "orderid=2018032952254001010&ordertotal=1170.00"
			</script>
			<script type="text/javascript" src="<%=path%>/resource/all_product/js/o_code.js"></script>

			<!-- 品友 -->

			<script type="text/javascript">
				var seoOrderNo = "2018032952254001010";
				var seoMoney = "1170.00";
				var seoProductList = [{
					"id": "399488",
					"count": 1,
					"price": "1180.00"
				}];
			</script>

			<!-- 品友 订单提交代码 -->
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
				py('event', 'order', {
					//'id':' {orderNo}',
					'id': seoOrderNo,
					//'money':'{money}',
					'money': seoMoney,
					'items': //[
						//{'id':'{item.id}','count':'{item.count}','price':'{item.price}'},
						//{'id':'{item.id}','count':'{item.count}','price':'{item.price}'}
						//]
						seoProductList
				}).track('wn84T.1nGhci.rA067z2SCSdiVwOt_qUH-0');
			</script>

			<!-- top头部 End-->
			<!--  header  -->
			<div class="pay-header">
				<div class="w1204">
					<div class="logo fl">
						<a class="juo" href="http://www.juooo.com/">
							<h1 class="text-hide">聚橙网——文化青年品质生活！</h1></a>
					</div>
					<div class="fast-step fast-step-2">
						<span class="t1 done">1.选择商品</span>
						<span class="t2 done">2.填写核对信息单</span>
						<span class="t3 done">3.成功提交订单</span>
					</div>
				</div>
			</div>
			<!--  /header  -->
			<div class="w1204">

				<div class="cart">
					<div class="success" style="height:auto">
						<div class="su-tip">
							<span class="juofont corr">&#xe61a;</span>
							<div class="tt" id="tt">订单已提交成功，请您尽快完成付款！</div>
							<p class="t">请在 <span class="em countdown" time="745000"><i class="js-h"></i>时<i class="js-m"></i>分<i class="js-s"></i>秒</span> 内完成支付，超时订单将会被自动取消</p>
							<p class="t"></p>
						</div>
						<div class="su-ite">
							<div class="price">订单总额：<i class="yen">¥</i><strong class="f-constantia">1170.00</strong></div>
							<p class="pri-more js-show-order-info">订单详情<span class="trian"></span></p>
						</div>
						<div class="success-lis  hide" id="js-order-info">
							<ul class="lis">
								<li class="item od clearfix">
									<label class="label">订 单 &nbsp;号：</label>
									<div class="inf">2018032952254001010</div>
								</li>
								<li class="item clearfix">
									<label class="label">收货信息：</label>
									<div class="inf">150****9741</div>
								</li>
								<li class="item inven clearfix">
									<label class="label">商品清单：</label>
									<div class="inf">
										<p>世界经典原版音乐剧《猫》Cats 深圳站 - <span class="time">
                                                        	2018.04.11 19:30                                                        </span>
											<span class="pri"><span class="em">￥1180.00</span> × 1 </span>
										</p>

									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="done-bank js-bank-list-wrap">

						<div class="tt">推荐支付：</div>
						<div class="bank-lis js-bank-list">
							<ul class="clearfix">
								<li class=" js-item pay" data-payId='3'>
									<img src="<%=path%>/resource/all_product/images/alipay.png" alt="支付宝">
									<b class="selected"></b>
								</li>
								<li class=" js-item pay" data-payId='9'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_cmb.png" alt="招商银行（快钱）">
									<b class="selected"></b>
								</li>
								<li class=" js-item pay" data-payId='41'>
									<img src="<%=path%>/resource/all_product/images/unionpay.png" alt="银联">
									<b class="selected"></b>
								</li>
								<li class=" js-item pay" data-payId='74'>
									<img src="<%=path%>/resource/all_product/images/jdpay.png" alt="京东支付">
									<b class="selected"></b>
								</li>
								<li class=" js-item pay" data-payId='666888'>
									<img src="<%=path%>/resource/all_product/images/weixin_native.png" alt="微信扫码支付">
									<b class="selected"></b>
								</li>
								<li class=" js-item pay" data-payId='666900'>
									<img src="<%=path%>/resource/all_product/images/unionpay_wap.png" alt="银联支付">
									<b class="selected"></b>
								</li>
							</ul>
						</div>

						<div class="tt">银行在线支付：</div>
						<div class="bank-lis js-bank-list">
							<ul class="clearfix">
								<li class=" js-item pay" data-payId='7'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_icbc.png" alt="工商银行（快钱）">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='8'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_cmbc.png" alt="民生银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='9'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_cmb.png" alt="招商银行（快钱）">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='10'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_ccb.png" alt="建设银行（快钱）">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='13'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_bcom.png" alt="交通银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='15'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_post.png" alt="中国邮政">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='16'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_spdb.png" alt="浦发银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='18'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_citic.png" alt="中信银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='19'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_cib.png" alt="兴业银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='20'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian_pab.png" alt="平安银行">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='39'>
									<img src="<%=path%>/resource/all_product/images/abc.png" alt="农业银行">
									<b class="selected"></b>
								</li>

							</ul>
						</div>
						<div class="tt">平台在线支付：</div>
						<div class="bank-lis js-bank-list">
							<ul class="clearfix">
								<li class=" js-item pay" data-payId='3'>
									<img src="<%=path%>/resource/all_product/images/alipay.png" alt="支付宝">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='4'>
									<img src="<%=path%>/resource/all_product/images/tenpay.png" alt="财付通">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='5'>
									<img src="<%=path%>/resource/all_product/images/kuaiqian.png" alt="快钱">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='41'>
									<img src="<%=path%>/resource/all_product/images/unionpay.png" alt="银联">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='74'>
									<img src="<%=path%>/resource/all_product/images/jdpay.png" alt="京东支付">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='76'>
									<img src="<%=path%>/resource/all_product/images/fenqile.png" alt="分期乐（官网）">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='666888'>
									<img src="<%=path%>/resource/all_product/images/weixin_native.png" alt="微信扫码支付">
									<b class="selected"></b>
								</li>

								<li class=" js-item pay" data-payId='666900'>
									<img src="<%=path%>/resource/all_product/images/unionpay_wap.png" alt="银联支付">
									<b class="selected"></b>
								</li>

							</ul>
						</div>

					</div>

					<!-- 提交订单栏 -->
					<div class="cart-toolbar">
						<form id="submitGoPay" action="http://pay.juooo.com/Index/goPay" method='post' target="_blank">
							<input type="hidden" name="pay_id" value='' />
							<input type="hidden" name="order_sn" value='2018032952254001010' />
						</form>
						应付总额：<i class="yen">¥</i><strong class="f-constantia">1170.00</strong>
						<a class="btn no-unl btn-large bg-fe5d36" href="alipay.html" id='goPay'>去支付</a>
					</div>

				</div>

			</div>

			<!-- 登录网上银行提醒 -->
			<div class="login-online-bank">
				<div class="bg-login"></div>
				<div>

				</div>
			</div>
			<!-- 登录网上银行提醒 END -->

			<!-- 底部 -->
			<div class="footer">
				<div class="w1204">
					<div class="col help-center">
						<span class="title">帮助中心</span>
						<div class="row mr">
							<a class="help-link" href="http://www.juooo.com/help/51" target="_blank">新手指南</a>
							<a class="help-link" href="http://www.juooo.com/help/67" class="ml0">支付方式</a>
							<a class="help-link" href="http://www.juooo.com/help/77" target="_blank">售后服务</a>
						</div>
						<div class="row">
							<a class="help-link" href="http://www.juooo.com/help/61" target="_blank">购票指南</a>
							<a class="help-link" href="http://www.juooo.com/help/72" target="_blank">配送方式</a>
						</div>
					</div>
					<div class="col contact">
						<span class="title">400-185-8666</span>
						<div class="row mr">周一至周五： 08:30-20:00</div>
						<div class="row">周&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;末： 08:30-18:00</div>
					</div>
					<div class="col qr-code">
						<ul>
							<li class="list">

								<img class="code" src="<%=path%>/resource/all_product/images/fanka.png" alt=""><span>饭咖APP</span>

							</li>
							<li class="list">

								<img class="code" src="<%=path%>/resource/all_product/images/juooo.png" alt=""><span>微信公众号</span>

							</li>
							<li class="list">

								<img class="code" src="<%=path%>/resource/all_product/images/phone.png" alt=""><span>手机客户端</span>

							</li>
						</ul>
					</div>
					<div class="foot">
						<div class="foot-lt">
							<a href="http://www.juooo.com/footconfig/1" target="_blank" title="关于我们">关于我们</a><span class="line">|</span>
							<a href="http://www.juooo.com/footconfig/2" target="_blank" title="联系我们">联系我们</a><span class="line">|</span>
							<a href="http://www.juooo.com/footconfig/5" target="_blank" title="加入我们">加入我们</a><span class="line">|</span>
							<a href="http://www.juooo.com/footconfig/3" target="_blank" title="服务条款">服务条款</a><span class="line">|</span>
							<a href="http://www.juooo.com/about/job" target="_blank" title="加入我们">加入我们</a><span class="line">|</span>
							<a href="http://www.juooo.com/news/newslist/" target="_blank" title="媒体报道">媒体报道</a><span class="line">|</span>
							<a href="http://www.juooo.com/about/partner" target="_blank" title="合作伙伴">合作伙伴</a><span class="line">|</span>
							<a href="http://www.juooo.com/about/links" target="_blank" title="友情链接">友情链接</a><span class="line"></span>
							<!-- <a href="http://www.juooo.com/about/map" target="_blank" title="合作地图">合作地图</a> -->
							<!-- 获取当前年份  -->
							<p>Copyright 2007-2018 © 聚橙网 粤B2-20070272 | 粤ICP备09218027号</p>
							<!-- 修改END -->
						</div>
						<div class="foot-rt">
							<a class="img img1" href="http://www.sznet110.gov.cn/netalarm/index.jsp" target="_blank" title="深圳网络警察报警平台"></a>
							<a class="img img2" href="http://www.cyberpolice.cn/wfjb/" target="_blank" title="公共信息安全网络监察"></a>
						</div>
					</div>
				</div>
			</div>
			<!--返回头部-->
			<div class="siderbar-right">
				<a href="javascript:;">
					<span class="sidebar-icon icon-phone"></span>
					<div class="sidebar-text phone-num"></div>
				</a>
				<a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&amp;key=XzkzODA2ODc4Nl8yNjQwMjJfNDAwMTg1ODY2Nl8yXw" target="_blank">
					<span class="sidebar-icon icon-qq"></span>
					<div class="sidebar-text qq-contact"></div>
				</a>
				<a href="javascript:;" id="js-top">
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
			<script type="text/javascript">
				//引入index
				seajs.use(['jquery', 'title', 'juo'], function($) {

					//返回头部
					$('#js-top').on('click', function() {
						$('body,html').animate({
							scrollTop: 0
						});
					})

					//获取顶部广告信息
					var topAdSymbol = "JAT";
					getSiteTopAdvertInfo(topAdSymbol);

					function getSiteTopAdvertInfo(symbol) {
						$.ajax({
							type: 'POST',
							url: "https://m.juooo.com/Advert/getAdMap",
							dataType: 'jsonp',
							data: {
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
									advertInfo += 'src="<%=path%>/resource/all_product/images/fa05592d77364c2692811fe1cae9aab0.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
									advertInfo += '</a>';
									$(".top-advert").append(advertInfo);
								}
							}
						});
					}
				})
			</script>

			<!-- 底部-->
			<script type="text/javascript">
				//引入index
				seajs.use(['jquery', 'payDone', 'countDown', 'Dialog'], function($, payDone, countDown, Dialog) {
					var $body = $('body');
					var orderInfoDomain = 'http://myjuooo.juooo.com/User/myorderinfo/orderSn/2018032952254001010';
					var helpDomain = 'http://www.juooo.com/help/71';
					var homeDomain = 'http://www.juooo.com/';
					$(function() {
						//默认选中第一个
						//alert($("li").szie());
						var pay = $(".pay").eq(0);
						pay.addClass('active');
						$('input[name=pay_id]').val(pay.attr('data-payId'));

					})

					$('.countdown').countdown(cancelOrder);

					function cancelOrder() {
						var order_sn = $('input[name=order_sn]').val();
						$(".cart-toolbar").remove();
						var data = {
							order_sn: order_sn
						};
						$('#tt').html('很抱歉，订单已被自动取消！');
						$('.juofont').addClass('warning').html('&#xe61f;');
						$('.t').html('订单已被自动取消！');
						$.ajax({
							type: 'post',
							url: 'http://pay.juooo.com/Index/cancelOrder',
							data: data,
							dataType: 'json',
							success: function(data) {
								location.reload();
							}
						})
					}

					// 立即支付
					var payIndex = null;
					$body.on('click', '#goPay', function() {

						var html = '';

						// 判断是否已经选择银行卡
						if($('.js-bank-list-wrap').find('.js-item.active').length == 0) {
							Dialog.msg('请选择支付银行！');
							return;
						}

						html += '<div class="login-online-bank">';
						html += '<p class="login-item c-666">请在新开网银页面完成付款后选择：</p>';
						html += '<p class="login-item">付款成功：<a class="" href="' + orderInfoDomain + '" target="_blank">查看订单</a> 或 <a class="" href="' + homeDomain + '" target="_blank">继续购物</a></p>';
						html += '<p class="login-item">付款失败：<a class="" href="' + helpDomain + '" target="_blank">查看帮助</a> 或 <a class="js-close-pay" href="javascript:;" >使用其他付款方式</a></p>';
						html += '</div>';

						// 弹出登录网上银行弹框
						payIndex = Dialog.open({
							title: '登录网上银行付款',
							content: html
						});

						$("#submitGoPay").submit();

					});

					// 点击使用其他方式关闭弹框
					var closeDialog = function(index) {
						Dialog.close(index);
					};

					$body.on('click', '.js-close-pay', function() {
						closeDialog(payIndex);
					})

					//支付按钮浮层
					var contentH = $('.cart').height();
					var headerH = $('.header').height();
					$(document).on('scroll', function() {
						var viewH = window.innerHeight; // 可见高度
						//var viewH1 = document.body.clientHeight;// 可见高度
						var scrollTop = $(this).scrollTop(); // 滚动高度
						console.log(viewH, scrollTop, contentH);
						if(viewH + scrollTop - 250 > contentH + headerH) {
							$('.cart-toolbar').addClass('pr');
						} else {
							$('.cart-toolbar').removeClass('pr');
						}
					});

				});
			</script>
			<script type="text/javascript" src="<%=path%>/resource/all_product/js/sea.js" id="seajsnode"></script>
			<script type="text/javascript" src="<%=path%>/resource/all_product/js/modules-config.js"></script>
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
						console.log(1)
						$(this).addClass('active');
						$('.js-net-list').addClass('active');
					}).on('mouseleave', function() {
						$(this).removeClass('active');
						$('.js-net-list').removeClass('active');
					});
				});
			</script>
	</body>

</html>
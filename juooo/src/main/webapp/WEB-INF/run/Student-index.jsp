<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%String path = request.getContextPath(); %><%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit">
		<link rel="dns-prefetch" href="//basic.juooo.com/" />
		<title>青春正当时 聚享学生惠 学生票专区_演唱会_演出门票超低价订购_聚橙网</title>
		<meta name="keywords" content="聚橙网学生票,学生票专区,学生票折扣,演唱会,舞台剧,音乐剧,音乐会门票订购,订票" />
		<meta name="description" content="聚橙网推出学生票专区,学生购演出票享专享折扣,低价购票,特惠活动,包括明星演唱会,音乐剧,音乐会,舞台剧,儿童剧等演出门票订票和预订,及时更新最新演出时间和票价,订票电话4001858666" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base.css">
		<link rel="stylesheet" href="<%=path%>/resource/run/css/base_1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/student.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/idangerous.swiper.css">

		<script>
			var searchSuggestionUrl = 'http://search.juooo.com/Index/suggestion',
				itemDomain = '../All_product/item.html',
				imgDomain = 'http://image.juooo.com',
				homeDomain = 'http://www.juooo.com/',
				starDomain = 'http://star.juooo.com/',
				venueDomain = 'http://venue.juooo.com/',
				searchDomain = 'http://search.juooo.com/',
				buyDomain = 'http://buy.juooo.com/',
				cardDomain = '../run/card.html',
				activityDomain = '../run/activity.html',
				scoresDomain = '../run/scores.html',
				aroundDomain = 'http://around.juooo.com/',
				topicDomain = '../run/zhuanti.html',
				passportDomain = 'http://passport.juooo.com/',
				basicDomain = '//basic.juooo.com/',
				clickDomain = 'https://click.juooo.com/',
				systemVar = {
					'host_icon_arr': [1],
				};
		</script>
		<script>
			if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
				window.location = "http://m.juooo.com";
			}
		</script>

		<!-- 百度统计 -->
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?214739940fca835e1b074f9d8be81ccb";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>

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
								<a href="javascript:;" class="nav-link" id="js-login-top">登录</a>
							</div>
							<div class="nav-items">
								<a href="http://passport.juooo.com/User/register" class="nav-link">注册</a>
							</div>
						</div>
						<!-- 未登录 end -->
						<!-- 已登录 -->
						<div class="ds-inlineb hide" id="js-has-login">
							<div class="nav-items">
								<span class="c9">你好,</span>
								<a href="http://myjuooo.juooo.com/User/myjuooo" target="_blank" class="nav-link no-border-left" id="js-get-username">用户名</a>
								<a href="http://myjuooo.juooo.com/User/level"><span class="c9 vip-level" id="js-get-level" style="background-image: url('');"></span></a>
							</div>
							<div class="nav-items">
								<a href="http://passport.juooo.com/User/logout" class="nav-link c9">退出</a>
							</div>
						</div>
						<!-- 已登录 end -->

						<div class="nav-items">
							<a href="http://myjuooo.juooo.com/User/myorderlist" class="nav-link" target="_blank">我的订单</a>
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
										<a href="../product_sub_categories/popular.html" class="new-items" target="_blank">流行音乐</a>
										<a href="../product_sub_categories/classical.html" class="new-items" target="_blank">古典音乐</a>
										<a href="../product_sub_categories/drama.html" class="new-items" target="_blank">舞台剧</a>
										<a href="../product_sub_categories/kids.html" class="new-items" target="_blank">儿童亲子</a>
										<a href="../product_sub_categories/musical.html" class="new-items" target="_blank">音乐剧</a>
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
							<div class="phone-code js-phone-code"><img src="picture/mobile.png" alt=""></div>
						</div>
					</div>
					<input type="hidden" id="js-city-url" value="../juooo/index.html">
					<input type="hidden" id="js-retakepass-url" value="http://passport.juooo.com/User/retakepass">
					<input type="hidden" id="js-qq-url" value="http://passport.juooo.com/Oauth/login?type=qq">
					<input type="hidden" id="js-weixin-url" value="http://passport.juooo.com/Oauth/login?type=weixin">
					<input type="hidden" id="js-sina-url" value="http://passport.juooo.com/Oauth/login?type=sina">
					<input type="hidden" id="js-register-url" value="http://passport.juooo.com/User/register">
					<input type="hidden" id="js-login-url" value="http://passport.juooo.com/user/makelogin">
					<input type="hidden" id="js-alipay-url" value="">
				</div>
			</div>
			<!-- 顶部栏 end -->
			<!-- top头部 End-->
			<!-- 顶部广告 -->
			<div class="w1200 nav-banner-wrap js-nav-banner">
				<a href="http://search.juooo.com/?k=Cats" class="nav-banner">
					<span class="close js-nav-close"><i class="bg-icon close-icon"></i>关闭</span>
					<img src="picture/raoknvpv08yapzijaab2npswgzq863.jpg" alt="">
				</a>
			</div>
			<!-- 顶部广告 end -->
			<!-- 头部 -->
			<div class="new-header nav-shadow">
				<div class="content-box w1200">
					<a href="../juooo/index.html">
						<div class="logo-box"></div>
					</a>
					<div class="city-box">
						<div class="choose-city js-choose-city">
							<span class="city-text">全国</span><i class="bg-icon tri"></i>
							<div class="allcity-box js-allcity-box" id="js-get-header-city">
								<div class="h-title">
									<p class="h-text">全国</p><i class="bg-icon h-tri"></i>
									<p class="h-text h-intro">当前全国共有<span class="h-num">2184</span>场演出，城市后数字代表演出场次</p>
									<span class="h-close-box js-close-city"><i class="bg-icon h-close"></i></span>
								</div>
								<ul class="allcity-list">
									<li class="allcity-item"><span class="city-area">全　　国</span>
										<div class="city-wrap">
											<a class="city-link" cid="0" href="../juooo/index.html" target="_blank">全国<span>(2184)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华南地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="1" href="http://www.juooo.com/sz" target="_blank">深圳<span>(584)</span></a>
											<a class="city-link" cid="3" href="http://www.juooo.com/gz" target="_blank">广州<span>(105)</span></a>
											<a class="city-link" cid="27" href="http://search.juooo.com/?city=27" target="_blank">南宁<span>(108)</span></a>
											<a class="city-link" cid="61" href="http://search.juooo.com/?city=61" target="_blank">福州<span>(4)</span></a>
											<a class="city-link" cid="62" href="http://search.juooo.com/?city=62" target="_blank">泉州<span>(44)</span></a>
											<a class="city-link" cid="63" href="http://search.juooo.com/?city=63" target="_blank">厦门<span>(15)</span></a>
											<a class="city-link" cid="10019" href="http://search.juooo.com/?city=10019" target="_blank">东莞<span>(31)</span></a>
											<a class="city-link" cid="10023" href="http://www.juooo.com/fj" target="_blank">福建<span>(63)</span></a>
											<a class="city-link" cid="10080" href="http://search.juooo.com/?city=10080" target="_blank">清远<span>(0)</span></a>
											<a class="city-link" cid="10090" href="http://search.juooo.com/?city=10090" target="_blank">河源<span>(0)</span></a>
											<a class="city-link" cid="10148" href="http://search.juooo.com/?city=10148" target="_blank">罗城<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华东地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="4" href="http://www.juooo.com/sh" target="_blank">上海<span>(272)</span></a>
											<a class="city-link" cid="11" href="http://www.juooo.com/hz" target="_blank">杭州<span>(88)</span></a>
											<a class="city-link" cid="25" href="http://search.juooo.com/?city=25" target="_blank">苏州<span>(55)</span></a>
											<a class="city-link" cid="39" href="http://search.juooo.com/?city=39" target="_blank">连云港<span>(0)</span></a>
											<a class="city-link" cid="41" href="http://search.juooo.com/?city=41" target="_blank">宁波<span>(93)</span></a>
											<a class="city-link" cid="48" href="http://search.juooo.com/?city=48" target="_blank">镇江<span>(0)</span></a>
											<a class="city-link" cid="54" href="http://www.juooo.com/nj" target="_blank">南京<span>(30)</span></a>
											<a class="city-link" cid="10001" href="http://search.juooo.com/?city=10001" target="_blank">合肥<span>(52)</span></a>
											<a class="city-link" cid="10007" href="http://www.juooo.com/wx" target="_blank">无锡<span>(42)</span></a>
											<a class="city-link" cid="10011" href="http://search.juooo.com/?city=10011" target="_blank">常州<span>(0)</span></a>
											<a class="city-link" cid="10097" href="http://search.juooo.com/?city=10097" target="_blank">盐城<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华北地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="5" href="http://www.juooo.com/bj" target="_blank">北京<span>(116)</span></a>
											<a class="city-link" cid="31" href="http://search.juooo.com/?city=31" target="_blank">大连<span>(6)</span></a>
											<a class="city-link" cid="36" href="http://www.juooo.com/sjz" target="_blank">石家庄<span>(88)</span></a>
											<a class="city-link" cid="50" href="http://search.juooo.com/?city=50" target="_blank">天津<span>(26)</span></a>
											<a class="city-link" cid="10004" href="http://search.juooo.com/?city=10004" target="_blank">沈阳<span>(6)</span></a>
											<a class="city-link" cid="10027" href="http://search.juooo.com/?city=10027" target="_blank">哈尔滨<span>(11)</span></a>
											<a class="city-link" cid="10149" href="http://search.juooo.com/?city=10149" target="_blank">乌兰浩特<span>(35)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">西南地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="6" href="http://www.juooo.com/cd" target="_blank">成都<span>(42)</span></a>
											<a class="city-link" cid="12" href="http://www.juooo.com/cq" target="_blank">重庆<span>(114)</span></a>
											<a class="city-link" cid="52" href="http://www.juooo.com/km" target="_blank">昆明<span>(19)</span></a>
											<a class="city-link" cid="10008" href="http://search.juooo.com/?city=10008" target="_blank">贵阳<span>(8)</span></a>
											<a class="city-link" cid="10137" href="http://search.juooo.com/?city=10137" target="_blank">安顺<span>(0)</span></a>
											<a class="city-link" cid="10145" href="http://search.juooo.com/?city=10145" target="_blank">龙岩<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华中地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="14" href="http://www.juooo.com/cs" target="_blank">长沙<span>(32)</span></a>
											<a class="city-link" cid="17" href="http://www.juooo.com/wh" target="_blank">武汉<span>(24)</span></a>
											<a class="city-link" cid="10073" href="http://search.juooo.com/?city=10073" target="_blank">宜昌<span>(27)</span></a>
											<a class="city-link" cid="10116" href="http://search.juooo.com/?city=10116" target="_blank">商丘<span>(0)</span></a>
											<a class="city-link" cid="10151" href="http://search.juooo.com/?city=10151" target="_blank">随州<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">西北地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="51" href="http://www.juooo.com/xa" target="_blank">西安<span>(44)</span></a>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="command-city">
							<a href="../juooo/index.html" class="command-link" id="home-rec-city"><i class="bg-icon place"></i>推荐全国站</a>
						</div>
					</div>
					<div class="search-box search">
						<div class="search-bar">
							<div class="search-input"><input class="js-search search-box" name="q" id="search_keywords" searchAction='http://search.juooo.com/' autocomplete="off" type="text" placeholder="请输入演出、艺人、场馆名称…" x-webkit-speech="" x-webkit-grammar="builtin:translate"></div>
							<div class="search-btn icon-search-header"><i class="bg-icon search-icon"></i></div>
							<ul class="search-result js-search-result">
							</ul>
						</div>
						<div class="hot-search-box">
							<ul class="hot-search" id="js-search-hot-top">
							</ul>
						</div>
					</div>
					<div class="module-box js-module-box">
						<i class="bg-icon cmore-icon js-module-more"></i>
						<a href="scores.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raokmvo4as6apatsaaad-nuerxk400.png);"></i>
							<p class="module-text">积分商城</p>
						</a>
						<a href="card.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raoknvpdesiapduxaaacbvjf9_q310.png);"></i>
							<p class="module-text">欢聚橙卡</p>
						</a>
						<a href="activity.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raoknvo4atiafs20aaadtbeyuba106.png);"></i>
							<p class="module-text">聚特惠</p>
						</a>
						<a href="Student-index.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raokmvo4aucasjuoaaagqpuj61c127.png);"></i>
							<p class="module-text">学生专区</p>
						</a>
						<a href="zhuanti.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raoknvo4auiaf7p3aaadcka4fcq252.png);"></i>
							<p class="module-text">精彩专题</p>
						</a>
						<a href="calendars.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/run/images/raokmvo4avcaevpeaaaeezoxq4k876.png);"></i>
							<p class="module-text">演出日历</p>
						</a>
					</div>
				</div>
				<!-- 头部导航 -->
				<div class="nav-head ">
					<ul class="w1200">
						<li class="nav-item js-nav-item">
							<a href="javascript:;" class="nav-link">全部商品分类</a>
							<!-- 侧边导航 -->
							<div class="kind-list js-kind-list js-nav-link">
								<div class="left-index">
									<a href="../All_product/vocalConcert.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qduaspnaaaaeto5fqlu795_2.png);"></i>
										<span class="kind-text">演唱会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/music.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qfeacmibaaaefux5vuu038_2.png);"></i>
										<span class="kind-text">音乐会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/drama.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qg6aac9iaaaedcanr-c618_2.png);"></i>
										<span class="kind-text">话剧歌剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/child.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qiaafuhtaaag30h30mi241_2.png);"></i>
										<span class="kind-text">儿童亲子</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/musical.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qj2ahhqhaaagybomok8111_2.png);"></i>
										<span class="kind-text">音乐剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/variety.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qmkabw9saaagsgbqhxe942_2.png);"></i>
										<span class="kind-text">戏曲综艺</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/exhibition.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/run/images/raokmvn7qn2aeg2uaaaeesj_ld4456_2.png);"></i>
										<span class="kind-text">展览</span>
										<i class="bg-icon more-icon"></i>
									</a>

								</div>
								<div class="right-detail js-right-detail">
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qewahyweaaavxkqyorc553_1.jpg)">
										<div class="col">
											<a href="../All_product/vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 流行
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 摇滚
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 民谣
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 民族
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qgcaoj55aaaqu6vnjnw831_2.jpg)">
										<div class="col">
											<a href="../All_product/music.html" class="details-link" target="_blank">
												<span class="line"></span> 交响
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/music.html" class="details-link" target="_blank">
												<span class="line"></span> 独奏
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/music.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qhaafro2aaafkohcdbo611_2.jpg)">
										<div class="col">
											<a href="../All_product/drama.html" class="details-link" target="_blank">
												<span class="line"></span> 话剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/drama.html" class="details-link" target="_blank">
												<span class="line"></span> 歌剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/drama.html" class="details-link" target="_blank">
												<span class="line"></span> 歌舞剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/drama.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qiyaehz1aaavub-rf-u430_2.jpg)">
										<div class="col">
											<a href="../All_product/child.html" class="details-link" target="_blank">
												<span class="line"></span> 儿童剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/child.html" class="details-link" target="_blank">
												<span class="line"></span> 亲子活动
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/child.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raokmvn759eap0m-aaas0qyo8la429_2.jpg)">
										<div class="col">
											<a href="../All_product/musical.html" class="details-link" target="_blank">
												<span class="line"></span> 音乐剧
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qm6auwpcaaadmaz5k2s662_2.jpg)">
										<div class="col">
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 京剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 昆曲
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 越剧
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 相声小品
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 综艺
												<!--<span>(20)</span>-->
											</a>
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 马戏杂技
												<!--<span>(20)</span>-->
											</a>
										</div>
										<div class="col">
											<a href="../All_product/variety.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/run/images/raoknvn7qoaae51-aaahavn4ayw172_2.jpg)">
										<div class="col">
											<a href="../All_product/exhibition.html" class="details-link" target="_blank">
												<span class="line"></span> 展览
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- 侧边导航 -->
							<!--
                            	作者：offline
                            	时间：2018-03-28
                            	描述：外链
                            -->

						</li>
						<li class="nav-item ">
							<a href="../product_sub_categories/popular.html" class="nav-link " title="流行音乐" target="_blank">流行音乐</a>
						</li>
						<li class="nav-item ">
							<a href="../product_sub_categories/classical.html" class="nav-link " title="古典音乐" target="_blank">古典音乐</a>
						</li>
						<li class="nav-item ">
							<a href="../product_sub_categories/drama.html" class="nav-link " title="舞台剧" target="_blank">舞台剧</a>
						</li>
						<li class="nav-item ">
							<a href="../product_sub_categories/kids.html" class="nav-link " title="儿童亲子" target="_blank">儿童亲子</a>
						</li>
						<li class="nav-item ">
							<a href="../product_sub_categories/musical.html" class="nav-link " title="音乐剧" target="_blank">音乐剧</a>
						</li>
						<!-- 右侧年卡入口 -->
						<li class="nav-item entry-li">
							<a href="" class="nav-link entry" target="_blank" title="">
								<img src="<%=path%>/resource/run/images/raoknvpb_02auf1faajhopvn-jm883_2.gif" alt="" class="entry-img">
							</a>
						</li>
						<!-- 右侧年卡入口 end -->
					</ul>
				</div>
				<!-- 头部导航 end -->
			</div>
			<!-- 头部 end -->
		</div>

		<!-- Head头部 End-->

		<script type="text/javascript" src="<%=path%>/resource/run/js/sea.js" id="seajsnode"></script>
		<script type="text/javascript" src="<%=path%>/resource/run/js/modules-config.js"></script>
		<script type="text/javascript">
			//获取全站LOGO
			seajs.use(['jquery', 'title', 'juo'], function($) {
				var logoSymbol = 'JLOGO';
				getLogoAdvert(logoSymbol);

				function getLogoAdvert(symbol) {
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
								var advertInfo = '<div class="logo"><a href="' + result.data.url + '"><img src="picture/a7f9d3d594644c91923753509f6840e3.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '"></a></div>';
							} else {
								var advertInfo = '<div class="logo"><a href="../juooo/index.html"><img src="picture/juooo-logo.png"></a></div>';
							}
							$("#js-head-logo .dropdown-tab").before(advertInfo);
						}
					});
				}
			});
		</script>
		<!-- 主轮播 -->
		<div class="main-banner">
			<div class="w1200 h100s">
				<!-- banner轮播 -->
				<div class="banner-container w920">
					<div class="swiper-wrapper banner-wrapper">
						<div data-id="3" _href="http://zhuanti.juooo.com/zhuanti/2018/stuZone/" class="swiper-slide banner-item js-hot-link" data-bg-color="rgb(44,170,246)">
							<a href="javascript:void(0)">
								<img src="picture/raoknvowej6aydaraafa08tkkmq728.jpg" alt="学生票">
							</a>
						</div>
					</div>
					<!-- 翻页按钮 -->
					<a href="javascript:;" class="b-btn banner-prev"></a>
					<a href="javascript:;" class="b-btn banner-next"></a>
					<!-- 翻页按钮end -->
					<div class="pagination"></div>
				</div>
				<!-- 用户登录状态显示 -->
				<!-- 未登陆 -->
				<div class="stu-login-state no-login">
					<div class="stu-info">
						<div class="stu-photo"></div>
						<a href="#" class="now-btn js-login">立即登录</a>
						<div class="stu-certi-now">
							<p class="certi-text">亮身份牌，享学生特惠价</p>
						</div>
					</div>
					<div class="stu-buy js-buy-guide">购票须知</div>
				</div>
				<!-- 用户登录状态显示 end -->
			</div>
		</div>
		<!-- 主轮播end -->
		<!-- 推荐区域 -->
		<div class="stu-sec">
			<div class="stu-sec-title bgs1"></div>
			<div class="stu-sec-list">
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap">
						<i class="logo_i"></i> <img src="picture/raoknvoorn2atqy5aachdysc6gw092.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">[深圳] 深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-03-24 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">
						玩儿丸脱口秀专场演出-深圳 </p>
					<div class="stu-sec-itemDetail">
						<span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap">
						<i class="logo_i"></i> <img src="picture/raokmvoyt6kaf01xaabo7rbq5ee457.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">[广州] 郭兰英剧院</div>
							<div class="stu-sec-show time">2018-04-21 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">
						2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》-广州 </p>
					<div class="stu-sec-itemDetail">
						<span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap">
						<i class="logo_i"></i> <img src="picture/raoknvonwysadp9saaci7j_njes435.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">[杭州] 浙话艺术剧院</div>
							<div class="stu-sec-show time">2018-04-14 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">
						【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 杭州站 </p>
					<div class="stu-sec-itemDetail">
						<span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap">
						<i class="logo_i"></i> <img src="picture/raokmvooroqanmbmaachdysc6gw919.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">[深圳] 深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-04-21 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">
						玩儿丸脱口秀专场演出-深圳 </p>
					<div class="stu-sec-itemDetail">
						<span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap">
						<i class="logo_i"></i> <img src="picture/raokmvoop4qay2jaaaduzwvojyo170.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">[广州] 郭兰英剧院</div>
							<div class="stu-sec-show time">2018-05-26 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">
						2018第五届城市戏剧节off单元 Farsome－呼声剧团 即兴喜剧《喜乐秀》-广州 </p>
					<div class="stu-sec-itemDetail">
						<span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
			</div>
		</div>
		<!-- 推荐区域 end -->
		<!-- 学生专区 -->
		<div class="stu-sec stu-content">
			<div class="stu-sec-title bgs2"></div>
			<div class="stu-sec-filterWrap">
				<div class="stu-sec-filter stu-sec-city js-sec-filter">
					<span class="filter-title">城市:</span>
					<p class="filter-item plr7 active" city-id="0"><span class="filter-item-t">全部</span></p>
					<ul class="filter-list js-city">
						<li class="filter-item" city-id="1"><span class="filter-item-t">深圳</span></li>
						<li class="filter-item" city-id="3"><span class="filter-item-t">广州</span></li>
						<li class="filter-item" city-id="11"><span class="filter-item-t">杭州</span></li>
						<li class="filter-item" city-id="62"><span class="filter-item-t">泉州</span></li>
						<li class="filter-item" city-id="10019"><span class="filter-item-t">东莞</span></li>
					</ul>
				</div>
				<div class="stu-sec-filter stu-sec-kind js-sec-filter">
					<span class="filter-title">品类:</span>
					<p class="filter-item plr7 active" kind-id="0"><span class="filter-item-t">全部</span></p>
					<ul class="filter-list js-kind">
						<li class="filter-item" kind-id="91"><span class="filter-item-t">戏曲综艺</span></li>
						<li class="filter-item" kind-id="37"><span class="filter-item-t">话剧歌剧</span></li>
						<li class="filter-item" kind-id="36"><span class="filter-item-t">音乐会</span></li>
					</ul>
				</div>
			</div>
			<!-- 有演出 -->
			<div class="stu-sec-list js-stu-sec-list">

				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/77/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">浙话艺术剧院</div>
							<div class="stu-sec-show time">2018-04-14 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 杭州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/BE/rAoKmVoOROqANMbMAACHdYsC6Gw919.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-04-21 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">玩儿丸脱口秀专场演出-深圳</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/D5/rAoKmVoyT6KAF01XAABO7rBq5eE457.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">郭兰英剧院</div>
							<div class="stu-sec-show time">2018-04-21 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》-广州</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/D5/rAoKmVoyT6KAF01XAABO7rBq5eE457.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">东莞市文化馆星剧场</div>
							<div class="stu-sec-show time">2018-04-22 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》--东莞</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">东莞</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/78/rAoKNVoop5iAIqETAACbWUNayAI411.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-04-28 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 首部原创都市话剧《8分钟》--深圳</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/B5/rAoKmVoCbG2AQexFAADZVO-9QdM305.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">杭州剧院</div>
							<div class="stu-sec-show time">2018-04-29 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">199</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/F9/rAoKmVpm79OAKhdPAACHMT17x2M701.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">杭州剧院</div>
							<div class="stu-sec-show time">2018-05-05 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/78/rAoKNVoop3iAA9tIAACbWUNayAI154.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">郭兰英剧院</div>
							<div class="stu-sec-show time">2018-05-05 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 首部原创都市话剧《8分钟》-广州</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/78/rAoKNVoop3iAA9tIAACbWUNayAI154.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">东莞市文化馆实验剧场</div>
							<div class="stu-sec-show time">2018-05-12 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 首部原创都市话剧《8分钟》--东莞</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">东莞</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/04/rAoKmVpxakKAe744AAB4MpCejz8860.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">泉州木偶剧院</div>
							<div class="stu-sec-show time">2018-05-25 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">百老汇浪漫音乐剧《I Do！I Do！》-泉州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">泉州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/CE/rAoKmVoop4qAY2JAAADUzwvOjyo170.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">郭兰英剧院</div>
							<div class="stu-sec-show time">2018-05-26 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 即兴喜剧《喜乐秀》-广州</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/CE/rAoKmVoop6eAXZdWAADUzwvOjyo480.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-06-02 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 即兴喜剧《喜乐秀》</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/CE/rAoKmVoop4qAY2JAAADUzwvOjyo170.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">东莞市文化馆实验剧场</div>
							<div class="stu-sec-show time">2018-06-03 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 Farsome－呼声剧团 即兴喜剧《喜乐秀》--东莞</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">东莞</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/D5/rAoKmVoySIyAYh2AAACBOKSWAsA310.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">深圳妇儿大厦儿童剧场</div>
							<div class="stu-sec-show time">2018-06-10 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 广州公艺坊剧团 先锋话剧《D》-深圳</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">深圳</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">45</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/BD/rAoKmVoM-VOAC20EAADcCN7an6g219.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">泉州木偶剧院</div>
							<div class="stu-sec-show time">2018-06-16 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">【万有音乐系】2018 宫崎骏 久石让动漫试听系列主题音乐会-泉州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">泉州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/D5/rAoKmVoySIyAYh2AAACBOKSWAsA310.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">郭兰英剧院</div>
							<div class="stu-sec-show time">2018-06-23 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 广州公艺坊剧团 先锋话剧《D》-广州</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/98/rAoKNVpYgOOAKXz7AABFlcsXoX4578.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">郭兰英剧院</div>
							<div class="stu-sec-show time">2018-06-29 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 江湖戏班《呐 》-广州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">广州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/98/rAoKNVpYgOOAKXz7AABFlcsXoX4578.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">东莞市文化馆实验剧场</div>
							<div class="stu-sec-show time">2018-06-30 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">2018第五届城市戏剧节off单元 江湖戏班《呐 》-东莞站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">东莞</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">90</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/BD/rAoKmVoM-VOAC20EAADcCN7an6g219.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">浙话艺术剧院</div>
							<div class="stu-sec-show time">2018-07-13 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">【万有音乐系】2018宫崎骏·久石让动漫视听系列主题音乐会 杭州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
				<a href="../All_product/item.html" class="stu-sec-item">
					<div class="stu-img-wrap"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/00/rAoKmVi2su2AFpByAAGeqSQsttE513.jpg" alt="" class="stu-sec-itemImg">
						<div class="stu-sec-detail">
							<div class="stu-sec-show place">浙江胜利剧院</div>
							<div class="stu-sec-show time">2018-10-19 19:30</div>
						</div>
					</div>
					<p class="stu-sec-itemTitle">【万有音乐系】“千与千寻”宫崎骏&amp;久石让动漫视听系列主题音乐会 杭州站</p>
					<div class="stu-sec-itemDetail"><span class="stu-sec-itemCity">杭州</span>
						<p class="stu-sec-itemPrice">学生票价<span class="stu-sec-itemYen">¥</span><span class="stu-sec-itemMoney">99</span>起</p>
					</div>
				</a>
			</div>
			<!-- 有演出 end  -->
		</div>
		<!-- 学生专区 end -->

		<!-- 查看更多 -->
		<div class="stu-more js-more">
			查看更多
		</div>
		<!-- 查看更多 end -->

		<!-- 没有更多 -->
		<div class="stu-no-more js-no-more hide">
			没有更多了
		</div>
		<!-- 没有更多 end -->

		<!-- 弹窗 -->
		<div class="stu-popup js-stu-popup">
			<div class="c-box">
				<div class="stu-guide-ti">
					<span class="h-close-box js-close-guidebox"><i class="bg-icon h-close"></i></span>
				</div>
				<img src="picture/raokmvok_fyatkpqaakriy5yc-4072.png" alt="" class="stu-guide-img">
				<div class="stu-guide-text">
					<p>购票须知：</p>
					<p>1、聚橙网学生专区面向所有学生群体，包含幼儿园、小学、初中、高中、中专、大专、本科、研究生、外籍在中国高校就读留学生；</p>
					<p>2、学生用户需提交能证明学生身份的证件照片，如学生证、校徽、校牌、校卡等（证件需有学校名称、个人姓名、班级、照片），并填写相关学生信息，提交审核；</p>
					<p>3、每个学生用户每场演出限购两张学生票（特殊场次另做限购处理）；</p>
					<p>4、学生票专区折扣不与会员折扣同享；</p>
					<p>5、活动最终解释权归聚橙网所有；</p>
					<p><br/></p>
				</div>
				<div class="stu-guide-btn js-stu-guide-btn">朕知道了~</div>
			</div>
		</div>
		<!-- 弹窗 end -->

		<!-- 右侧边栏 -->
		<div class="stu-right-bar js-stu-right-bar">
			<div class="piaowu-box"></div>
			<a href="https://click.juooo.com/channel/channel?utm_channel=wb&utm_source=0_593_1404&return_url=https%3A%2F%2Fweibo.com%2Fp%2F1006061508356094%2Fhome%3Ffrom%3Dpage_100606%26amp%3Bamp%3Bmod%3DTAB%26amp%3Bamp%3Bis_all%3D1%23plac&utm_params1=&utm_params2=&utl_typ=1" target="_blank" class="stu-join-a"><span class="stu-join-text">立即参与</span></a>
		</div>
		<!-- 右侧边栏 end -->
		<!-- 加载中1 end -->
		<div class=" js-loading1 stu-loadings-bg">
			<div class="stu-loadings"></div>
		</div>
		<!-- 加载中1 -->
		<!--  footer  -->
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
								<img src="picture/ticket.png" alt="">
							</div>
							<p class="code-text">聚橙票务</p>
						</div>
						<div class="box1">
							<div class="img-box">
								<img src="picture/show.png" alt="">
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
							<a href="http://www.xcb-family.com/" class="brand-items" target="_blank">小橙堡</a>
							<a href="http://www.wantumusic.com/" class="brand-items" target="_blank">万有音乐系</a>
							<a href="http://www.aco-musical.com/" class="brand-items" target="_blank">聚橙音乐剧</a>
						</div>
					</div>
					<div class="h2">
						<div class="company art">
							<p class="s-title">高雅艺术 商业联盟</p>
							<a href="javascript:;" class="c-items bg-icon yixin"></a>
							<a href="javascript:;" class="c-items bg-icon logo1"></a>
							<a href="javascript:;" class="c-items bg-icon zdf"></a>
							<a href="javascript:;" class="c-items bg-icon cmtj"></a>
							<a href="javascript:;" class="c-items bg-icon logo2"></a>
						</div>
						<!-- <div class="company c-line"></div> -->
						<div class="company trade">
							<p class="s-title">万有音乐商业联盟</p>
							<a href="javascript:;" class="c-items bg-icon asus"></a>
							<a href="javascript:;" class="c-items bg-icon xl"></a>
							<a href="javascript:;" class="c-items bg-icon afu"></a>
							<!-- <a href="javascript:;" class="c-items bg-icon moi"></a> -->
						</div>
						<!-- <div class="company c-line"></div> -->
						<div class="company child">
							<p class="s-title">亲子演出商业联盟</p>
							<a href="javascript:;" class="c-items bg-icon jili"></a>
							<a href="javascript:;" class="c-items bg-icon oo"></a>
							<a href="javascript:;" class="c-items bg-icon yy"></a>
							<a href="javascript:;" class="c-items bg-icon vz"></a>
						</div>
					</div>
					<div class="h3">
						<a class="tab-items" href="http://www.juooo.com/footconfig/1" target="_blank" title="关于我们">关于我们</a>
						<a class="tab-items" href="http://www.juooo.com/footconfig/2" target="_blank" title="联系我们">联系我们</a>
						<a class="tab-items" href="http://www.juooo.com/footconfig/5" target="_blank" title="加入我们">加入我们</a>
						<a class="tab-items" href="http://www.juooo.com/footconfig/3" target="_blank" title="服务条款">服务条款</a>
						<!-- <a href="javascript:;" class="tab-items" target="_blank">加盟聚橙</a> -->
						<a href="http://www.juooo.com/news/newslist/" class="tab-items" target="_blank">媒体报道</a>
						<a href="http://www.juooo.com/about/partner" class="tab-items" target="_blank">合作伙伴</a>
						<a href="http://www.juooo.com/about/links" class="tab-items" target="_blank">友情链接</a>
						<a href="http://www.juooo.com/about/map" class="tab-items" target="_blank">网站地图</a>

					</div>
					<div class="h4">
						<p class="tab-text">Copyright 2007-2018 © 深圳市聚橙演艺联盟票务有限公司 | 粤ICP备17063893号-2</p>
						<div class="text-box">
							<i class="bg-icon gongan"></i>
							<p class="tab-text">粤公网安备 44030502000578号</p>
						</div>
					</div>
					<div class="h5">
						<a class="safe-items bg-icon police" href="http://61.144.227.239:9002/" target="_blank" title="深圳网络警察报警平台"></a>
						<a class="safe-items bg-icon watch" href="http://www.cyberpolice.cn/wfjb/" target="_blank" title="公共信息安全网络监察"></a>
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
			<script src='<%=path%>/resource/run/js/stat.js' language='JavaScript' charset='gb2312'></script>

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
					ma.src = '<%=path%>/resource/run/js/ma.js';
					var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(ma, s);
				})();
			</script>
		</div>

		<!--返回头部-->
		<script type="text/javascript" src="<%=path%>/resource/run/js/sea.js" id="seajsnode"></script>
		<script type="text/javascript" src="<%=path%>/resource/run/js/modules-config.js"></script>

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
								advertInfo += 'src="picture/a7f9d3d594644c91923753509f6840e3.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
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
								html += '<img src="picture/a7f9d3d594644c91923753509f6840e3.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
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
<!--  /footer  -->
<script>
	seajs.use(['jquery', 'login', 'adaptivebg'], function($) {
		$(document).ready(function() {
			$.adaptiveBackground.run({
				parent: '.main-banner' //父节点
			});
		});
		// 监听滚动事件
		$(document).scroll(function() {
			if($(this).scrollTop() >= 600) {
				$('.js-stu-right-bar').addClass('active');
			} else {
				$('.js-stu-right-bar').removeClass('active');
			}
		});

		// 点击购票须知弹窗
		$(document).on('click', '.js-buy-guide', function() {
			$('.js-stu-popup').addClass('active');
			$('body,html').css("overflow", "hidden");
		});
		// 关闭弹窗
		$('.js-stu-guide-btn,.js-close-guidebox').on('click', function() {
			$('.js-stu-popup').removeClass('active');
			$('body,html').css("overflow", "visible");
		});

		// 数据交互
		var allData = []; // 存放所有演出数据
		var page = 1;
		getData();

		// 点击城市筛选，样式变化, 数据变化
		$('.js-sec-filter').on('click', '.filter-item', function() {
			$(this).parents('.js-sec-filter').find('.filter-item').removeClass('active');
			$(this).addClass('active');
			if($(this).attr('city-id')) {
				var this_cityid = $(this).attr('city-id');
				var this_kindid = $(this).parents('.js-sec-filter').siblings('.js-sec-filter').find('.filter-item.active').attr('kind-id');
			} else if($(this).attr('kind-id')) {
				var this_kindid = $(this).attr('kind-id');
				var this_cityid = $(this).parents('.js-sec-filter').siblings('.js-sec-filter').find('.filter-item.active').attr('city-id');
			}
			page = 1;
			getData('replace')
		});

		// 点击查看更多
		$('.js-more').on('click', function() {
			getData();
		});

		// 获取数据(城市列表，演出列表)
		function getData($type) {
			//获取城市品类分页ID
			$city_id = $(".stu-sec-city").find('.active').attr('city-id');
			$kind_id = $(".stu-sec-kind").find('.active').attr('kind-id');
			$(".js-stu-sec-list").addClass('loading-bgs');
			$.ajax({
				url: '/Student/page', //地址，就是action请求路径
				type: 'post', //请求方式k
				data: {
					'city_id': $city_id,
					'cate_id': $kind_id,
					'page': page
				},
				dataType: 'json', //数据类型text xml json  script  jsonp
				success: function(data) { //返回的参数就是 action里面所有的有get和set方法的参数
					$(".js-stu-sec-list").removeClass('loading-bgs');
					allData = data.list;
					//演出列表
					if(allData.length == 0) {
						$('.js-stu-sec-list').addClass('no-content').html('<div class="no-content-wrap"><p class="no-cont-text">没有相关演出</p></div>');
						$('.js-more').addClass('hide');
						$('.js-no-more').addClass('hide');
					} else {
						pageDom(allData, $type);
						if(allData.length < 20) {
							$('.js-more').addClass('hide');
							$('.js-no-more').removeClass('hide');
						} else {
							$('.js-more').removeClass('hide');
							$('.js-no-more').addClass('hide');
						}
						page++;
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					alert('系统忙..');
				}
			})
		}
		// 加载部分演出数据
		function pageDom(data, $type) {
			var html = '';
			for(i in data) {
				html += '<a href="../All_product/item.html' + data[i].schedular_id + '" class="stu-sec-item">' +
					'<div class="stu-img-wrap">' +
					data[i].tag_icon +
					'<img src="' + data[i].pic + '" alt="" class="stu-sec-itemImg">' +
					'<div class="stu-sec-detail">' +
					'<div class="stu-sec-show place">' + data[i].name + '</div>' +
					'<div class="stu-sec-show time">' + data[i].show_time + '</div>' +
					'</div>' +
					'</div>' +
					'<p class="stu-sec-itemTitle">' + data[i].schedular_name + '</p>' +
					'<div class="stu-sec-itemDetail">' +
					'<span class="stu-sec-itemCity">' + data[i].city_name + '</span>' +
					'<p class="stu-sec-itemPrice">学生票价' +
					'<span class="stu-sec-itemYen">¥</span>' +
					'<span class="stu-sec-itemMoney">' + parseFloat(data[i].price) + '</span>' +
					'起' +
					'</p>' +
					'</div>' +
					'</a>'
			}
			if($type == 'replace') {
				$('.js-stu-sec-list').html(html);
			} else {
				$('.js-stu-sec-list').append(html);
			}
		}
		$flag = true;
		//统计和跳转
		$("body").on('click', '.js-hot-link', function() {
			$id = $(this).attr('data-id');
			if(!$id) {
				return false;
			}
			if(!$flag) {
				return false;
			}
			$flag = false;
			$_href = $(this).attr('_href');
			if(!$_href) {
				$_href = '/';
			}
			$(".js-loading1").addClass('active');
			$.ajax({
				type: 'GET',
				url: '/Student/count',
				dataType: 'json',
				data: {
					'id': $id
				},
				success: function(data) {
					window.location.href = $_href;
					$flag = true;
				},
				error: function() {
					$flag = true;
				}
			});
		});

		$(".js-login").click(function() {
			login.init();
		})
	})
</script>
</body>

</html>
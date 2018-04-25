<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%String path = request.getContextPath(); %><%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit">
		<link rel="dns-prefetch" href="//basic.juooo.com/" />
		<title>聚橙专题_演唱会专题_音乐会专题_儿童剧专题_音乐剧专题_话剧专题_歌剧专题_聚橙网</title>
		<meta name="keywords" content="话剧专题,歌剧专题,音乐剧专题,儿童剧专题,音乐会专题,演唱会专题,聚橙网专题" />
		<meta name="description" content="聚橙专题提供各类演出活动专题汇总，包括演唱会、音乐会、音乐节、古典音乐、舞台剧、话剧、音乐剧、歌剧、儿童剧、亲子节目等各类演出专题活动，以及相关演出门票订票购票信息，订票热线400-185-8666。" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base.css">
		<link rel="stylesheet" href="<%=path%>/resource/run/css/base_1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base-second.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/list.css">

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
		<style>
			.header {
				border-bottom: 0;
			}
		</style>
		<div style="background:#fff;">
			<div class="w1204 ptb20" style="padding-top: 0">
				<!--banner头部-->
				<div class="show-banner">
					<div class="swipe slide" id="swipe-example" data-ride="swipe">
						<!-- Indicators -->
						<ol class="swipe-indicators">
							<li class="active" data-target="#swipe-example" data-slide-to="0"></li>
							<li data-target="#swipe-example" data-slide-to="1"></li>
							<li data-target="#swipe-example" data-slide-to="2"></li>
							<li data-target="#swipe-example" data-slide-to="3"></li>
							<li data-target="#swipe-example" data-slide-to="4"></li>
							<li data-target="#swipe-example" data-slide-to="5"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="swipe-inner" role="listbox">
							<div class="item active">
								<a href="http://zhuanti.juooo.com/zhuanti/2018/stuZone/" target="_blank">
									<img src="picture/raoknvqfqqeabxaaaafhyfelbbc607.jpg" alt="学生专区" title="学生专区">
								</a>
							</div>
							<div class="item">
								<a href="http://zhuanti.juooo.com/zhuanti/2018/Priscilla/" target="_blank">
									<img src="picture/raokmvplx2gaifp4aaesvtofnqs898.jpg" alt="陈慧娴演唱会佛山站" title="陈慧娴演唱会佛山站">
								</a>
							</div>
							<div class="item">
								<a href="http://zhuanti.juooo.com/zhuanti/2017/drama/" target="_blank">
									<img src="picture/raoknvpcgkaaiql1aaigjpcwapw662.jpg" alt="城市戏剧节" title="城市戏剧节">
								</a>
							</div>
							<div class="item">
								<a href="http://zhuanti.juooo.com/zhuanti/mtouch/zhuanti/2017/wenhuiCard/" target="_blank">
									<img src="picture/raoknvpttpwahd2kaafubbkzdtq955.jpg" alt="北京惠民文化消费电子券" title="北京惠民文化消费电子券">
								</a>
							</div>
							<div class="item">
								<a href="http://zhuanti.juooo.com/zhuanti/2017/rent/" target="_blank">
									<img src="picture/raoknvplxriabivvaakkbqxx6e4720.jpg" alt="吉屋出租" title="吉屋出租">
								</a>
							</div>
							<div class="item">
								<a href="http://zhuanti.juooo.com/zhuanti/2017/LZ/" target="_blank">
									<img src="picture/raoknvo3inoazxhraah7stgoruy315.jpg" alt="音乐剧《罗密欧与朱丽叶》" title="音乐剧《罗密欧与朱丽叶》">
								</a>
							</div>
						</div>

						<!-- Controls -->
						<a class="left swipe-control" data-slide="prev" href="#swipe-example" role="button">
							<div class="prev"></div>
						</a>
						<a class="right swipe-control" data-slide="next" href="#swipe-example" role="button">
							<div class="next"></div>
						</a>
					</div>
				</div>
			</div>
			<!--banner头部End-->
			<!-- banner右边 -->
			<!--<div class="special-slide">-->
			<!--<ul>-->
			<!---->
			<!--</ul>-->
			<!--</div>-->
			<!-- banner右边 End-->
		</div>

		<div class="bg-floor mt45">
			<div class="w1204">
				<div class="block-title-wrap">
					<div class="block-title">专题活动</div>
					<div class="block-title-info">
						<a class="info-item active" sid="1">全部</a>|
						<a class="info-item " sid="2">进行中</a>|
						<a class="info-item " sid="3">已结束</a>
					</div>
				</div>

				<div class="special-icon">
					<ul>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/xmxl/"><img src="<%=path%>/resource/run/images/rAoKmVlkifKAA61oAAA5kQK7TNk846.jpg" alt="【万有音乐系】“雪的物语”——熊木杏里出道15周年纪念巡回演唱会" title="【万有音乐系】“雪的物语”——熊木杏里出道15周年纪念巡回演唱会" src="<%=path%>/resource/run/images/rAoKmVlkifKAA61oAAA5kQK7TNk846.jpg">
								<p>【万有音乐系】“雪的物语”——熊木杏里出道15周年纪念巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/Lisa/"><img delayload="<%=path%>/resource/run/images/rAoKNVlkhPiAfIY-AABCUo3mDhs120.jpg" alt="【万有音乐系】“等待你出现”—小野丽莎2017演唱会" title="【万有音乐系】“等待你出现”—小野丽莎2017演唱会" src="<%=path%>/resource/run/images/rAoKNVlkhPiAfIY-AABCUo3mDhs120.jpg">
								<p>【万有音乐系】“等待你出现”—小野丽莎2017演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/baby-art-festival/"><img delayload="<%=path%>/resource/run/images/rAoKmVlkJ7SAApUSAABSJZtJpeQ621.jpg" alt="佐卡伊•第二届小橙堡国际亲子艺术节" title="佐卡伊•第二届小橙堡国际亲子艺术节" src="<%=path%>/resource/run/images/rAoKmVlkJ7SAApUSAABSJZtJpeQ621.jpg">
								<p>佐卡伊•第二届小橙堡国际亲子艺术节</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/xixixixi/"><img delayload="<%=path%>/resource/run/images/rAoKNVlkJv6AFm1aAABAFjoXLjE522.jpg" alt="首届嬉习喜戏艺术节" title="首届嬉习喜戏艺术节" src="<%=path%>/resource/run/images/rAoKNVlkJv6AFm1aAABAFjoXLjE522.jpg">
								<p>首届嬉习喜戏艺术节</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/Graduation/"><img delayload="<%=path%>/resource/run/images/rAoKmVlSMGmAe6FxAABQJ0yZs4Y947.jpg" alt="聚橙毕业季优惠活动" title="聚橙毕业季优惠活动" src="<%=path%>/resource/run/images/rAoKmVlSMGmAe6FxAABQJ0yZs4Y947.jpg">
								<p>聚橙毕业季优惠活动</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/LW/"><img delayload="<%=path%>/resource/run/images/rAoKNVlLixKAS6ERAABQulIB6_Y816.jpg" alt="2017 COCO 李玟18世界巡回演唱会" title="2017 COCO 李玟18世界巡回演唱会" src="<%=path%>/resource/run/images/rAoKNVlLixKAS6ERAABQulIB6_Y816.jpg">
								<p>2017 COCO 李玟18世界巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/GJJ/  "><img delayload="<%=path%>/resource/run/images/rAoKmVlLipOAeNB2AAA9JwxVCHM265.jpg" alt="《古巨基“我们”世界巡回演唱会Part 2》深圳站   " title="《古巨基“我们”世界巡回演唱会Part 2》深圳站  " src="<%=path%>/resource/run/images/rAoKmVlLipOAeNB2AAA9JwxVCHM265.jpg">
								<p>《古巨基“我们”世界巡回演唱会Part 2》深圳站 </p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/jiugan/"><img delayload="<%=path%>/resource/run/images/rAoKmVlAmmKAbyFfAAELU7Z6AgA141.png" alt="中国音乐剧教父李盾感人巨作《酒干倘卖无》" title="中国音乐剧教父李盾感人巨作《酒干倘卖无》" src="<%=path%>/resource/run/images/rAoKmVlAmmKAbyFfAAELU7Z6AgA141.png">
								<p>中国音乐剧教父李盾感人巨作《酒干倘卖无》</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/sunTribe/"><img delayload="<%=path%>/resource/run/images/rAoKNVk6E-yAMpG7AABSVMJIMT8566.jpg" alt="【万有音乐系】“带我到山顶”太阳部落2017巡回音乐会" title="【万有音乐系】“带我到山顶”太阳部落2017巡回音乐会" src="<%=path%>/resource/run/images/rAoKNVk6E-yAMpG7AABSVMJIMT8566.jpg">
								<p>【万有音乐系】“带我到山顶”太阳部落2017巡回音乐会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/NZBZ/"><img delayload="<%=path%>/resource/run/images/rAoKNVkMEfyAQpH3AADEKBRMRfQ753.jpg" alt="【万有音乐系】《南征北战“生来倔强”2017巡回演唱会》" title="【万有音乐系】《南征北战“生来倔强”2017巡回演唱会》" src="<%=path%>/resource/run/images/rAoKNVkMEfyAQpH3AADEKBRMRfQ753.jpg">
								<p>【万有音乐系】《南征北战“生来倔强”2017巡回演唱会》</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/richael/Richael.html"><img delayload="<%=path%>/resource/run/images/rAoKmVkMEXuAD8bNAADdBrpk0HE104.jpg" alt="【万有音乐系】刘瑞琦“温暖的房间”2017巡回演唱会" title="【万有音乐系】刘瑞琦“温暖的房间”2017巡回演唱会" src="<%=path%>/resource/run/images/rAoKmVkMEXuAD8bNAADdBrpk0HE104.jpg">
								<p>【万有音乐系】刘瑞琦“温暖的房间”2017巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/yxs/"><img delayload="<%=path%>/resource/run/images/rAoKNVjJ8WmAcGm5AADPqe_kLF0852.jpg" alt="【万有音乐系】“Human and Divine”Ashram隐修所乐队2017巡演" title="【万有音乐系】“Human and Divine”Ashram隐修所乐队2017巡演" src="<%=path%>/resource/run/images/rAoKNVjJ8WmAcGm5AADPqe_kLF0852.jpg">
								<p>【万有音乐系】“Human and Divine”Ashram隐修所乐队2017巡演</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/ludovico/"><img delayload="<%=path%>/resource/run/images/rAoKNVjBB22ACYlMAADboOd6L7c531.jpg" alt="【万有音乐系】鲁多维科·艾奥迪世界巡演" title="【万有音乐系】鲁多维科·艾奥迪世界巡演" src="<%=path%>/resource/run/images/rAoKNVjBB22ACYlMAADboOd6L7c531.jpg">
								<p>【万有音乐系】鲁多维科·艾奥迪世界巡演</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/reban/"><img delayload="<%=path%>/resource/run/images/rAoKmVi_zMuAcz1eAAFiBHVmTag593.jpg" alt="热斑《无感人》专辑全国巡演" title="热斑《无感人》专辑全国巡演" src="<%=path%>/resource/run/images/rAoKmVi_zMuAcz1eAAFiBHVmTag593.jpg">
								<p>热斑《无感人》专辑全国巡演</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/wangrui/"><img delayload="<%=path%>/resource/run/images/rAoKmVi_y4-AXvunAACdpXFlK1g479.jpg" alt="【万有音乐系】汪睿“现在见面吧”2017巡回演唱会" title="【万有音乐系】汪睿“现在见面吧”2017巡回演唱会" src="<%=path%>/resource/run/images/rAoKmVi_y4-AXvunAACdpXFlK1g479.jpg">
								<p>【万有音乐系】汪睿“现在见面吧”2017巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/dongzhen/"><img delayload="<%=path%>/resource/run/images/rAoKNVi_ye-ANZIpAADm0e-tuQs718.jpg" alt="【万有音乐系】董贞2017“十年江湖路·贞惜有你”巡回演唱会" title="【万有音乐系】董贞2017“十年江湖路·贞惜有你”巡回演唱会" src="<%=path%>/resource/run/images/rAoKNVi_ye-ANZIpAADm0e-tuQs718.jpg">
								<p>【万有音乐系】董贞2017“十年江湖路·贞惜有你”巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/priscilla/"><img delayload="<%=path%>/resource/run/images/rAoKmVi_x9aATSArAAEA2EfYg54482.jpg" alt="【万有音乐系】Priscilla Ahn普莉西雅“LALALA”2017巡回演唱会" title="【万有音乐系】Priscilla Ahn普莉西雅“LALALA”2017巡回演唱会" src="<%=path%>/resource/run/images/rAoKmVi_x9aATSArAAEA2EfYg54482.jpg">
								<p>【万有音乐系】Priscilla Ahn普莉西雅“LALALA”2017巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/sophie/"><img delayload="<%=path%>/resource/run/images/rAoKNViuRVCADU0kAAEAKLFiozc867.jpg" alt="【万有音乐系】My song-Sophie Zelmani 苏菲 · 珊曼妮2017巡回演唱会" title="【万有音乐系】My song-Sophie Zelmani 苏菲 · 珊曼妮2017巡回演唱会" src="<%=path%>/resource/run/images/rAoKNViuRVCADU0kAAEAKLFiozc867.jpg">
								<p>【万有音乐系】My song-Sophie Zelmani 苏菲 · 珊曼妮2017巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2016/msml/"><img delayload="<%=path%>/resource/run/images/rAoKOVhvCyWAJMfQAAA5sEQ5LJU63.jpeg" alt="【万有音乐系】麦斯米兰 “Fancy April” 2017巡回演唱会" title="【万有音乐系】麦斯米兰 “Fancy April” 2017巡回演唱会" src="<%=path%>/resource/run/images/rAoKOVhvCyWAJMfQAAA5sEQ5LJU63.jpeg">
								<p>【万有音乐系】麦斯米兰 “Fancy April” 2017巡回演唱会</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://zhuanti.juooo.com/zhuanti/2017/xjj/"><img delayload="<%=path%>/resource/run/images/rAoKOVhuGiOACArsAAF3wyn6XI0923.jpg" alt="2017第四届城市戏剧节" title="2017第四届城市戏剧节" src="<%=path%>/resource/run/images/rAoKOVhuGiOACArsAAF3wyn6XI0923.jpg">
								<p>2017第四届城市戏剧节</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://www.juooo.com/zhuanti/2016/pfyhgej/"><img delayload="<%=path%>/resource/run/images/rAoKOVg-VLqAcPY_AAFMpCj-_9s851.jpg" alt="贵宾感恩季，1元儿童剧" title="贵宾感恩季，1元儿童剧" src="<%=path%>/resource/run/images/rAoKOVg-VLqAcPY_AAFMpCj-_9s851.jpg">
								<p>贵宾感恩季，1元儿童剧</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://www.juooo.com/zhuanti/2016/ganen/"><img delayload="<%=path%>/resource/run/images/rAoKNVg9NuWASIomAAF5i0tC_bE000.jpg" alt="聚橙剧院院线冬季感恩优惠季" title="聚橙剧院院线冬季感恩优惠季" src="<%=path%>/resource/run/images/rAoKNVg9NuWASIomAAF5i0tC_bE000.jpg">
								<p>聚橙剧院院线冬季感恩优惠季</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://www.juooo.com/zhuanti/2016/xgj/"><img delayload="<%=path%>/resource/run/images/rAoKNVjkTG2AYfRdAAGPCXqne0M424.jpg" alt="2017许冠杰巡回演唱会 " title="2017许冠杰巡回演唱会 " src="<%=path%>/resource/run/images/rAoKNVjkTG2AYfRdAAGPCXqne0M424.jpg">
								<p>2017许冠杰巡回演唱会 </p>
							</a>
							<div class="state c2">已结束</div>
						</li>
						<li>
							<a target="_blank" href="http://www.juooo.com/zhuanti/2016/lhs/index.html"><img delayload="<%=path%>/resource/run/images/rAoKOVggNmOAD3XrAAGoKu9JYrM188.jpg" alt="2016第三届莲花山草地音乐节" title="2016第三届莲花山草地音乐节" src="<%=path%>/resource/run/images/rAoKOVggNmOAD3XrAAGoKu9JYrM188.jpg">
								<p>2016第三届莲花山草地音乐节</p>
							</a>
							<div class="state c2">已结束</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="w1204 pt60">
				<div class="pages" data-ajax="0">
					<a href='' class='cur'>1</a>
					<a href='/?p=2'>2</a>
					<a href='/?p=3'>3</a>
					<a href='/?p=4'>4</a>
				</div>
			</div>
		</div>

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
<script type="text/javascript">
	seajs.use(['jquery', 'layer', 'swipe', 'index'], function($, layer) {

		$('body').on('click', '.block-title-info a', function() {
			var self = $(this),
				type = $(this).attr('sid');
			self.addClass('active').siblings().removeClass('active');
			var patams = {
				p: 1,
				type: type
			};
			var url = 'http://zhuanti.juooo.com/Index/ajax';
			zhuantiPageLoad(url, patams);
		}).on('click', '.pages a', function() {
			if($(this).parents('.pages').attr('data-ajax') == '1') {
				var url = $(this).attr('href');
				var patams = {};
				zhuantiPageLoad(url, patams);
				return false;
			}
		});

		//异步请求专题分页数据
		function zhuantiPageLoad(url, patams) {
			if(url == null || url == undefined || url == '') {
				return;
			}
			$.get(url, patams, function(data) {
				if(data.code == '200') {
					list = data.data.list;
					$('.special-icon ul').find('li').detach();
					var li, a, img, p, div, i;
					for(i in list) {
						li = $('<li>');
						a = $('<a>', {
							href: list[i].url,
							target: "_blank"
						});
						img = $('<img>', {
							delayLoad: 'http://image.juooo.com' + list[i].pic,
							alt: list[i].title,
							title: list[i].title,
						});
						p = $('<p>').html(list[i].title);
						div = $('<div>', {
							'class': 'state'
						}).addClass(list[i].end ? 'c2' : 'c1').html(list[i].end ? '已结束' : '进行中');

						img.appendTo(a);
						p.appendTo(a);
						a.appendTo(li);
						div.appendTo(li);

						li.appendTo($('.special-icon ul'));
					}
					$('.pages').attr('data-ajax', '1').html(data.data.pageHtml);
					$('img').scrollLoading();
					delete list;
				}
				delete data;
			}, 'json');
		}
	});
</script>
</body>

</html>
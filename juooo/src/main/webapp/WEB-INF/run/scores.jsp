<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%String path = request.getContextPath(); %><%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit">
		<link rel="dns-prefetch" href="//basic.juooo.com/" />
		<title>聚橙积分商城_积分兑换_门票积分兑换_积分换礼品_聚橙网</title>
		<meta name="keywords" content="积分换票,积分兑换,积分换礼品,赚积分,积分广场,聚橙积分广场" />
		<meta name="description" content="聚橙积分商城提供最新演出积分兑换服务，包括演唱会、音乐会、音乐节、古典音乐、舞台剧、话剧、音乐剧、歌剧、儿童剧、亲子节目等各类演出门票积分兑换，以及积分兑换礼品服务，订票热线400-185-8666。" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base.css">
		<link rel="stylesheet" href="<%=path%>/resource/run/css/base_1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/scores.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base-second.css">

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
		<div class="header two-header" style="padding-bottom: 0;">
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
		<!--  /header  -->
		<div class="w1204">
			<div class="act-banner clearfix mt20">
				<!-- banner图切换 -->
				<div class="show-banner">
					<div class="swipe slide" id="swipe-example" data-ride="swipe">
						<!-- Indicators -->
						<ol class="swipe-indicators">
							<li class="active" data-target="#swipe-example" data-slide-to="0"></li>
							<li class="" data-target="#swipe-example" data-slide-to="1"></li>
							<li class="" data-target="#swipe-example" data-slide-to="2"></li>
							<li class="" data-target="#swipe-example" data-slide-to="3"></li>

						</ol>
						<!-- Wrapper for slides -->
						<div class="swipe-inner" role="listbox">
							<div class="item active">
								<a target="_blank" href="http://search.juooo.com/?k=温馨亲子舞台剧《泰迪熊》" title="【小橙堡】温馨亲子舞台剧《泰迪熊》">
									<img src="picture/raokmvpe-ewapckdaak9ess2d6k807.jpg" alt="【小橙堡】温馨亲子舞台剧《泰迪熊》" title="【小橙堡】温馨亲子舞台剧《泰迪熊》">
								</a>
							</div>
							<div class="item ">
								<a target="_blank" href="http://search.juooo.com/?k=%E7%99%BD%E9%9B%AA%E5%85%AC%E4%B8%BB" title="【小橙堡】奇思妙想童话剧《白雪公主》">
									<img src="picture/raokmvpvq3kaccmkaalzn_yft6e126.jpg" alt="【小橙堡】奇思妙想童话剧《白雪公主》" title="【小橙堡】奇思妙想童话剧《白雪公主》">
								</a>
							</div>
							<div class="item ">
								<a target="_blank" href="http://search.juooo.com/?k=神奇校车" title="【小橙堡】美国原版授权科普亲子音乐剧 《神奇校车“气候大挑战”》">
									<img src="picture/raokmvpe-ymacvmkaal3zgjjsge879.jpg" alt="【小橙堡】美国原版授权科普亲子音乐剧 《神奇校车“气候大挑战”》" title="【小橙堡】美国原版授权科普亲子音乐剧 《神奇校车“气候大挑战”》">
								</a>
							</div>
							<div class="item ">
								<a target="_blank" href="http://search.juooo.com/?k=%E7%81%B0%E5%A7%91%E5%A8%98" title="【小橙堡】浪漫经典童话剧《灰姑娘》—合肥站">
									<img src="picture/raoknvok-egapufsaayaz40yqvc123.png" alt="【小橙堡】浪漫经典童话剧《灰姑娘》—合肥站" title="【小橙堡】浪漫经典童话剧《灰姑娘》—合肥站">
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
				<!-- banner图切换 End -->
				<div class="scores-login login-use">
					<!-- 未登录状态 -->
					<div class="mt-avatar">
						<dl class="clearfix">
							<dt>
                                <a href="javascript:;"><img src="picture/logo.jpg"></a>
                            </dt>
							<dd class="userinfo mt15">
								<p class="more-lv">登录后即可查看您的等级与积分情况。</p>
							</dd>
						</dl>
						<div class="mt-scores">
							<a href="http://passport.juooo.com/?return_url=http%3A%2F%2Fscores.juooo.com%2F" class="login-btn">会员登录</a>
						</div>
						<div class="mt-more">您还不是聚橙会员？
							<a href="http://passport.juooo.com/user/register?return_url=http%3A%2F%2Fscores.juooo.com%2F" target="_blank">点击注册</a>
						</div>
					</div>

				</div>

			</div>
		</div>
		<!--全额兑换-->
		<div class="scores-main change-no-data">
			<div class="w1204">
				<div class="sco-title"><b class="line"></b>全额兑换</div>
				<div class="sco-tabmenu js-change">
					<span class="tab-wrap"><a href="javascript:;" class="active">全部</a></span>
					<span class="tab-wrap"><a href="javascript:;">0-1999</a></span>
					<span class="tab-wrap"><a href="javascript:;">2000-3999</a></span>
					<span class="tab-wrap last-child"><a href="javascript:;">4000以上</a></span>
				</div>
				<div class="sco-tabcon">
					<ul class="clearfix">
						<li class="mlnot">
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/01/74/rAoKNVokpZuAEJHWAAD6dkgnduI177.jpg" delayload="http://image.juooo.com/group1/M00/01/74/rAoKNVokpZuAEJHWAAD6dkgnduI177.jpg" title="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》" alt="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》</a></h3>
									<p>时 间：2018.04.29 10:30<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
						<li>
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/CB/rAoKmVokpYeAJawHAAD6dkgnduI979.jpg" delayload="http://image.juooo.com/group1/M00/00/CB/rAoKmVokpYeAJawHAAD6dkgnduI979.jpg" title="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》" alt="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》</a></h3>
									<p>时 间：2018.04.29 15:00<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
						<li>
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/74/rAoKOVgsOFGAZg1XAANh4R4v8ks184.png" delayload="http://image.juooo.com/group1/M00/00/74/rAoKOVgsOFGAZg1XAANh4R4v8ks184.png" title="【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》" alt="【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》</a></h3>
									<p>时 间：2018.05.27 15:00<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
						<li class="mlnot">
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/74/rAoKOVgsOFGAZg1XAANh4R4v8ks184.png" delayload="http://image.juooo.com/group1/M00/00/74/rAoKOVgsOFGAZg1XAANh4R4v8ks184.png" title="【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》" alt="【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【演出更改】【小橙堡】经典亲子音乐剧《寻梦的猫》</a></h3>
									<p>时 间：2018.05.27 10:30<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
						<li>
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" delayload="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" title="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》" alt="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》</a></h3>
									<p>时 间：2018.06.24 15:00<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
						<li>
							<a href="../All_product/item.html" target="_blank" title="" class="scoimg"><span><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" delayload="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" title="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》" alt="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》"></span></a>
							<div class="s-info">
								<div class="info-txt">
									<h3><a href="../All_product/item.html" target="_blank">【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》</a></h3>
									<p>时 间：2018.06.24 10:30<br>场 馆：<span class="adress">无锡演艺剧院</span></p>
								</div>
								<div class="info-btn">
									<p><span class="num">900</span><span class="t1">积分</span></p><del>￥90.00</del>
									<a target="_blank" href="../All_product/item.html" class="imgBtn">兑换</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="check-more">
					<a class="circle-btn" href="http://scores.juooo.com/Index/allexchange" title="查看更多演出信息" target="_blank">查看更多<span class="icon icon-arrow-right"></span></a>
				</div>
			</div>
		</div>
		<div class="scores-main scores-bg buy-no-data">
			<div class="w1204">
				<div class="sco-title">积分加钱购</div>
				<div class="sco-tabmenu js-buy">
					<span><a href="javascript:void(0);" class="active">全部</a></span>
					<span><a href="javascript:void(0);">流行音乐</a></span>
					<span><a href="javascript:void(0);">古典音乐</a></span>
					<span><a href="javascript:void(0);">舞台剧</a></span>
					<span class="last-child"><a href="javascript:void(0);">儿童亲子</a></span>
				</div>
				<div class="scores-money clearfix">
					<div id="right-main">
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/E3/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg" delayload="http://image.juooo.com/group1/M00/00/E3/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站">
								<p class="info">[上海]澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/01/17/rAoKNVlxYAmAU5lWAACGWkRWo7o145.jpg" delayload="http://image.juooo.com/group1/M00/01/17/rAoKNVlxYAmAU5lWAACGWkRWo7o145.jpg" title="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
								<p class="info">[上海]【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</p>
							</a>
							<div class="sm-show">
								<p>￥113.05+<em class="num">59.5</em>积分</p><del>￥119.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/F8/rAoKmVpmkhGAG2XvAACic4PaqiE811.jpg" delayload="http://image.juooo.com/group1/M00/00/F8/rAoKmVpmkhGAG2XvAACic4PaqiE811.jpg" title="琴语 克罗地亚殿堂级手风琴小提琴二重奏" alt="琴语 克罗地亚殿堂级手风琴小提琴二重奏">
								<p class="info">[乌兰浩特]琴语 克罗地亚殿堂级手风琴小提琴二重奏</p>
							</a>
							<div class="sm-show">
								<p>￥28.5+<em class="num">15</em>积分</p><del>￥30.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/99/rAoKmVnIvi2ACiojAADx8_SR5MQ769.jpg" delayload="http://image.juooo.com/group1/M00/00/99/rAoKmVnIvi2ACiojAADx8_SR5MQ769.jpg" title="【小橙堡】经典童话人偶剧《小红帽》-哈尔滨站" alt="【小橙堡】经典童话人偶剧《小红帽》-哈尔滨站">
								<p class="info">[哈尔滨]【小橙堡】经典童话人偶剧《小红帽》-哈尔滨站</p>
							</a>
							<div class="sm-show">
								<p>￥57+<em class="num">30</em>积分</p><del>￥60.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/55/rAoKNVf8mcWAKzVzAAPYiYcizBg970.jpg" delayload="http://image.juooo.com/group1/M00/00/55/rAoKNVf8mcWAKzVzAAPYiYcizBg970.jpg" title="【小橙堡】原创音乐亲子剧《木偶奇遇记》" alt="【小橙堡】原创音乐亲子剧《木偶奇遇记》">
								<p class="info">[重庆]【小橙堡】原创音乐亲子剧《木偶奇遇记》</p>
							</a>
							<div class="sm-show">
								<p>￥47.5+<em class="num">25</em>积分</p><del>￥50.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/66/rAoKOVgW5WGAZOf4AA1pxdCwBbM024.jpg" delayload="http://image.juooo.com/group1/M00/00/66/rAoKOVgW5WGAZOf4AA1pxdCwBbM024.jpg" title="【演出取消】【小橙堡】浪漫经典童话剧《灰姑娘》-北京" alt="【演出取消】【小橙堡】浪漫经典童话剧《灰姑娘》-北京">
								<p class="info">[北京]【演出取消】【小橙堡】浪漫经典童话剧《灰姑娘》-北京</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/01/65/rAoKNVoL-AmARBVBAACS6ipyA5E193.jpg" delayload="http://image.juooo.com/group1/M00/01/65/rAoKNVoL-AmARBVBAACS6ipyA5E193.jpg" title="【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》-深圳站" alt="【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》-深圳站">
								<p class="info">[深圳]【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》-深圳站</p>
							</a>
							<div class="sm-show">
								<p>￥171+<em class="num">90</em>积分</p><del>￥180.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/A1/rAoKOVimYQ6Ad6tUAAH25-kuG-I880.jpg" delayload="http://image.juooo.com/group1/M00/00/A1/rAoKOVimYQ6Ad6tUAAH25-kuG-I880.jpg" title="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》-天津" alt="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》-天津">
								<p class="info">[天津]【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》-天津</p>
							</a>
							<div class="sm-show">
								<p>￥83.6+<em class="num">44</em>积分</p><del>￥88.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/C6/rAoKNVkC6cSABfzrAAFpNGZiweI662.jpg" delayload="http://image.juooo.com/group1/M00/00/C6/rAoKNVkC6cSABfzrAAFpNGZiweI662.jpg" title="【小橙堡】大型3D多媒体亲子科幻剧《恐龙工厂的奇妙夜》上海站" alt="【小橙堡】大型3D多媒体亲子科幻剧《恐龙工厂的奇妙夜》上海站">
								<p class="info">[上海]【小橙堡】大型3D多媒体亲子科幻剧《恐龙工厂的奇妙夜》上海站</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" delayload="http://image.juooo.com/group1/M00/00/F9/rAoKNVlDs7SAPpgNAADZOkKRzlw875.jpg" title="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》" alt="【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》">
								<p class="info">[泉州]【小橙堡】寻梦亲子音乐剧《Flight School飞行学校》</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/01/31/rAoKNVmnrEmAM3eJAAD6UEdJuJ4792.jpg" delayload="http://image.juooo.com/group1/M00/01/31/rAoKNVmnrEmAM3eJAAD6UEdJuJ4792.jpg" title="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" alt="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳">
								<p class="info">[深圳]【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳</p>
							</a>
							<div class="sm-show">
								<p>￥114+<em class="num">60</em>积分</p><del>￥120.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/7C/rAoKNVg706eAWMTQAAMHCqaLoVw452.jpg" delayload="http://image.juooo.com/group1/M00/00/7C/rAoKNVg706eAWMTQAAMHCqaLoVw452.jpg" title="【小橙堡】奇思妙想童话剧《白雪公主》-武汉站" alt="【小橙堡】奇思妙想童话剧《白雪公主》-武汉站">
								<p class="info">[武汉]【小橙堡】奇思妙想童话剧《白雪公主》-武汉站</p>
							</a>
							<div class="sm-show">
								<p>￥95+<em class="num">50</em>积分</p><del>￥100.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/A9/rAoKNVppsCGANCdGAAB5nGPcgAQ589.jpg" delayload="http://image.juooo.com/group1/M00/01/A9/rAoKNVppsCGANCdGAAB5nGPcgAQ589.jpg" title="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站" alt="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站">
								<p class="info">[上海]【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站</p>
							</a>
							<div class="sm-show">
								<p>￥456+<em class="num">240</em>积分</p><del>￥480.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/89/rAoKNVhQ_MyAEW9JAALDE-IWeeU535.jpg" delayload="http://image.juooo.com/group1/M00/00/89/rAoKNVhQ_MyAEW9JAALDE-IWeeU535.jpg" title="【档期变更】【小橙堡】经典童话人偶剧《小红帽》-上海站" alt="【档期变更】【小橙堡】经典童话人偶剧《小红帽》-上海站">
								<p class="info">[上海]【档期变更】【小橙堡】经典童话人偶剧《小红帽》-上海站</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/88/rAoKNVhQ3H6AQdk2AAKWHhTJygQ088.jpg" delayload="http://image.juooo.com/group1/M00/00/88/rAoKNVhQ3H6AQdk2AAKWHhTJygQ088.jpg" title="【小橙堡·微剧场】保加利亚温情故事木偶剧《顽皮小精灵》" alt="【小橙堡·微剧场】保加利亚温情故事木偶剧《顽皮小精灵》">
								<p class="info">[深圳]【小橙堡·微剧场】保加利亚温情故事木偶剧《顽皮小精灵》</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/BA/rAoKmVoKgf6AdJ9sAACdlZrVN5g747.jpg" delayload="http://image.juooo.com/group1/M00/00/BA/rAoKmVoKgf6AdJ9sAACdlZrVN5g747.jpg" title="【小橙堡微剧场】 伊朗 滑稽诙谐偶戏《大鼻子女孩》" alt="【小橙堡微剧场】 伊朗 滑稽诙谐偶戏《大鼻子女孩》">
								<p class="info">[深圳]【小橙堡微剧场】 伊朗 滑稽诙谐偶戏《大鼻子女孩》</p>
							</a>
							<div class="sm-show">
								<p>￥171+<em class="num">90</em>积分</p><del>￥180.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/F7/rAoKmVplkDSAMATwAAEM4uBa95Q182.jpg" delayload="http://image.juooo.com/group1/M00/00/F7/rAoKmVplkDSAMATwAAEM4uBa95Q182.jpg" title="【小橙堡】魔幻音乐秀《仙乐飘飘面包屋》—合肥站" alt="【小橙堡】魔幻音乐秀《仙乐飘飘面包屋》—合肥站">
								<p class="info">[合肥]【小橙堡】魔幻音乐秀《仙乐飘飘面包屋》—合肥站</p>
							</a>
							<div class="sm-show">
								<p>￥47.5+<em class="num">25</em>积分</p><del>￥50.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/CB/rAoKmVokpMuAUBtwAAD6dkgnduI729.jpg" delayload="http://image.juooo.com/group1/M00/00/CB/rAoKmVokpMuAUBtwAAD6dkgnduI729.jpg" title="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》" alt="【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》">
								<p class="info">[宁波]【小橙堡】经典幻想童话剧《爱丽丝梦游泡泡仙境》</p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/98/rAoKOVh8izKAIKGxAAK6-WDsfks952.jpg" delayload="http://image.juooo.com/group1/M00/00/98/rAoKOVh8izKAIKGxAAK6-WDsfks952.jpg" title="【小橙堡·微剧场】台湾温情生活剧《小老头和他的朋友们》" alt="【小橙堡·微剧场】台湾温情生活剧《小老头和他的朋友们》">
								<p class="info">[重庆]【小橙堡·微剧场】台湾温情生活剧《小老头和他的朋友们》</p>
							</a>
							<div class="sm-show">
								<p>￥171+<em class="num">90</em>积分</p><del>￥180.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/ED/rAoKmVpWwg6AC1jaAACUDeZ-BX4498.jpg" delayload="http://image.juooo.com/group1/M00/00/ED/rAoKmVpWwg6AC1jaAACUDeZ-BX4498.jpg" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北京站	" alt="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北京站	">
								<p class="info">[北京]【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北京站 </p>
							</a>
							<div class="sm-show">
								<p>￥76+<em class="num">40</em>积分</p><del>￥80.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/00/rAoKmVi2su2AFpByAAGeqSQsttE513.jpg" delayload="http://image.juooo.com/group1/M00/00/00/rAoKmVi2su2AFpByAAGeqSQsttE513.jpg" title="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站">
								<p class="info">[南京]【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站</p>
							</a>
							<div class="sm-show">
								<p>￥95+<em class="num">50</em>积分</p><del>￥100.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/01/77/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg" delayload="http://image.juooo.com/group1/M00/01/77/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站" alt="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站">
								<p class="info">[南京]【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站</p>
							</a>
							<div class="sm-show">
								<p>￥95+<em class="num">50</em>积分</p><del>￥100.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i"></i><img src="http://image.juooo.com/group1/M00/00/F4/rAoKmVphZRKAJdDkAACx3hyCtRA616.jpg" delayload="http://image.juooo.com/group1/M00/00/F4/rAoKmVphZRKAJdDkAACx3hyCtRA616.jpg" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站">
								<p class="info">[成都]【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站</p>
							</a>
							<div class="sm-show">
								<p>￥273.6+<em class="num">144</em>积分</p><del>￥288.00</del></div>
						</div>
						<div class="sm-item">
							<a href="../All_product/item.html" target="_blank" class="asmitem"><i class="logo_i ju_icon"></i><img src="http://image.juooo.com/group1/M00/00/7F/rAoKOVg_52CAHfHxAALgVd_S_jA282.jpg" delayload="http://image.juooo.com/group1/M00/00/7F/rAoKOVg_52CAHfHxAALgVd_S_jA282.jpg" title="【小橙堡】魔幻科学秀《外星人来啦》" alt="【小橙堡】魔幻科学秀《外星人来啦》">
								<p class="info">[石家庄]【小橙堡】魔幻科学秀《外星人来啦》</p>
							</a>
							<div class="sm-show">
								<p>￥47.5+<em class="num">25</em>积分</p><del>￥50.00</del></div>
						</div>
					</div>
				</div>
				<div class="check-more" id="item-more">
					<a class="circle-btn" href="javascript:;" title="查看更多演出信息">查看更多<span class="icon icon-arrow-left"></span></a>
				</div>
			</div>
		</div>
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
<script type="text/javascript">
	//引入juo.min
	seajs.use(['juo', 'swipe', 'jquery', 'dateFormat', 'index'], function(ex, S, $, dateFormat) {
		var imgSrc = "http://image.juooo.com";
		var itemUrl = "../All_product/item.html";
		var aroundUrl = "http://around.juooo.com/";

		$(function() {
			var page = 1,
				cate_parent_id;
			getAllScoresList(0, 1);
			getSectionScoresList(1);
			$('.js-change span >a').on('click', function() {
				if($(this).hasClass('active')) return;
				var _index = $(this).index('.js-change span >a'),
					$as = $('.js-change span >a');
				$as.removeClass('active');
				$(this).addClass('active');
				getAllScoresList(_index, 1);
			});
			$('.js-buy span >a').on('click', function() {
				if($(this).hasClass('active')) return;
				var _index = $(this).index('.js-buy span >a'),
					$as = $('.js-buy span >a');
				page = 1;
				$as.removeClass('active');
				$(this).addClass('active');
				_index == 0 ? cate_parent_id = undefined : cate_parent_id = _index + 34;
				getSectionScoresList(page, cate_parent_id);
			});
			$('#item-more').on('click', 'a', function() {
				getSectionScoresList(++page, cate_parent_id);
			});
		});
		// 全额积分兑换
		function getAllScoresList(type, page) {
			$.ajax({
				type: 'POST',
				url: 'getAllScoresList',
				data: {
					'type': type,
					'p': page,
					'limit': 6
				},
				dataType: 'json',
				success: function(obj) {
					var html = '',
						i,
						d,
						_data,
						cityName,
						venuName,
						selectUrl,
						methodIcon;
					if(obj.data) {
						_data = obj.data.list;
					}
					if(_data == null) {
						if(type === 0) {
							$('.change-no-data').remove();
							return;
						}
						$('.sco-tabcon ul').html('<div class="sco-no-data">没有可兑换的商品</div>');
						return;
					}
					for(i = 0; i < _data.length; i++) {
						d = _data[i];
						if(i % 3 == 0) {
							html += "<li class=\"mlnot\">";
						} else {
							html += "<li>";
						}

						if(typeof(d.city_name) == "undefined" && typeof(d.venue_name) == "undefined") {
							methodIcon = '';
							cityName = '';
							venuName = '';
							selectUrl = aroundUrl;
						} else {
							cityName = '';
							//cityName  = "[" + d.city_name + "]";
							venuName = "<br>场 馆：<span class='adress'>" + d.venue_name + "</span>";
							selectUrl = itemUrl;
							//                        if(d.method == 1 && d.cate_parent_id=='38'){
							//                            methodIcon = '<i class=\"logo_i ju_icon\"></i>';
							//                        }
							//                    	else if(d.method == 1 || d.method == 4){
							//                    		methodIcon = '<i class=\"logo_i\"></i>';
							//                    	} else {
							//                    		methodIcon = '';
							//                    	}

						}
						methodIcon = d.ico;

						html += "<a href=\"" + itemUrl + d.schedular_id + "\" target=\"_blank\" title=\"\" class=\"scoimg\">" +
							"<span>" + methodIcon + "<img src=picture/ae00c3465ca144318f219cad22086899.gif"
						" + imgSrc + d.pic + "\
						" delayLoad=\"" + imgSrc + d.pic + "\"   title=\"" + d.schedular_name + "\"  alt=\"" + d.schedular_name + "\"></span></a>" +
							"<div class=\"s-info\">" +
							"<div class=\"info-txt\">" +
							"<h3><a href=\"" + itemUrl + d.schedular_id + "\" target=\"_blank\">" +
							cityName +
							d.schedular_name.replace(/\\/g, "") + "</a></h3>" +
							"<p>时 间：" + dateFormat.dateFormat('Y.m.d H:i', d.show_time) + "" +
							venuName + "</p>" + "</div>" +
							"<div class=\"info-btn\">" +
							"<p><span class=\"num\">" + d.scores + "</span><span class=\"t1\">积分</span></p>" +
							"<del>￥" + d.ticket_price + "</del>" +
							"<a target=\"_blank\" href=\"" + selectUrl + d.schedular_id + "\" class=\"imgBtn\">兑换</a>" +
							"</div>" +
							"</div>" +
							"</li>";
					}
					$('.sco-tabcon ul').html(html);
				},
				error: function(e) {
					console.log(e);
				}
			})
		}
		// 积分加钱购
		function getSectionScoresList(page, cate_parent_id) {
			$.ajax({
				type: 'POST',
				url: 'getSectionScoresList',
				data: {
					'p': page,
					'cateParentId': cate_parent_id
				},
				dataType: 'json',
				success: function(obj) {
					var html = '',
						i,
						d,
						_data;
					if(obj.data) {
						_data = obj.data.list;
					}
					if(_data == null) {
						if(cate_parent_id == undefined) {
							$('.buy-no-data').remove();
							$('.check-more').css('margin-bottom', '50px');
						}
						if(page == 1) {
							$('#right-main').html('<div class="sco-no-data">没有可购买的商品</div>'); //单个品类为空，内容清空
						}
						$('#item-more').html("");
						return;
					}
					if(_data.length < 24) {
						$('#item-more').html('');
					} else {
						$('#item-more').html('<a class="circle-btn" href="javascript:;" title="查看更多演出信息">查看更多<span class="icon icon-arrow-left"></span></a>');
					}
					for(i = 0; i < _data.length; i++) {
						d = _data[i];
						//                    if(d.method == 1 && d.cate_parent_id == '38'){
						//                        tips = "<i class=\"logo_i ju_icon\"></i>";
						//                    }
						//					else if(d.method == 1 || d.method == 4){
						//						tips = "<i class=\"logo_i\"></i>";
						//					} else {
						//						tips = '';
						//					}

						tips = d.ico;
						html += "<div class=\"sm-item\">" +
							"<a href=\"" + itemUrl + d.schedular_id + "\" target=\"_blank\" class=\"asmitem\">" +
							tips +
							"<img src=picture/ae00c3465ca144318f219cad22086899.gif"
						" + imgSrc + d.pic + "\
						" delayload=\"" + imgSrc + d.pic + "\"  title=\"" + d.schedular_name.replace(/\\/g, "") + "\"  alt=\"" + d.schedular_name.replace(/\\/g, "") + "\">" +
							"<p class=\"info\">[" + d.city_name + "]" + d.schedular_name.replace(/\\/g, "") + "</p>" +
							"</a>" +
							"<div class=\"sm-show\">" +
							"<p>￥" + d.discount_price + "+<em class=\"num\">" + d.discount_scores + "</em>积分</p>" +
							"<del>￥" + d.price + "</del>" +
							"</div>" +
							"</div>";
					}
					if(page > 1) {
						$('#right-main').append(html);
					} else if(page == 1) {
						$('#right-main').html(html);
					}
				},
				error: function(e) {
					console.log(e);
				}
			})
		}

		function htmlspecialchars_decode(str) {
			str = str.replace(/&amp;/g, '&');
			str = str.replace(/&lt;/g, '<');
			str = str.replace(/&gt;/g, '>');
			str = str.replace(/&quot;/g, "''");
			str = str.replace(/&#039;/g, "'");
			return str;
		}

	});
</script>
</body>

</html>
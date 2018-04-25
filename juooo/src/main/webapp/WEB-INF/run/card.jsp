<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%String path = request.getContextPath(); %><%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html lang="zh-CN">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit">
		<link rel="dns-prefetch" href="//basic.juooo.com/" />
		<title>聚橙网小橙堡欢聚橙卡_儿童剧门票团购_聚橙网</title>
		<meta name="keywords" content="小橙堡,儿童剧团,儿童剧,亲子剧,儿童剧演出,艺术剧团,儿童亲子,聚橙网,www.juooo.com,聚橙网" />
		<meta name="description" content="小橙堡儿童艺术剧团，由国内外优秀的制作人、导演、编剧、演员组成，借助聚橙网的全国城市连锁运营及网络销售平台倾情打造民营儿童艺术剧团第一品牌，我们的主张是&quot;最好的爱是陪伴&quot;。" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base.css">
		<link rel="stylesheet" href="<%=path%>/resource/run/css/base_1.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/vip.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/run/css/base.css">
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
			<div class="new-header ">
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
				<div class="nav-head not-index">
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

		<!-- banner区域 -->

		<!-- 主轮播 -->
		<div class="main-banner">
			<!-- banner轮播 -->
			<div class="person-container w1200">
				<img class="default-img" src="picture/raokmvoyqzeaulvmaaewfqarmxc965.jpg" alt="聚橙网" data-bg-color="rgb(254, 191, 86)">

				<!-- 个人信息 -->
				<div class="person-info">
					<div class="avatar-wrap">
					</div>
					<a href="javascript:">
						<p class="name login" id="login">登录/注册</p>
					</a>
					<p class="tip">登录后查看您的欢聚橙卡~</p>
					<a href="http://card.juooo.com/Index/bindCard" class="bind-btn">立即绑定</a>
				</div>
				<!-- 个人信息end -->
			</div>

			<!-- banner轮播end -->
		</div>
		<!-- 主轮播end -->
		<!-- banner区域end -->

		<!-- 内容区域 -->
		<div class="list-container">
			<ul class="list-wrap">
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">599聚橙会员储值卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvpvghiagnylaaa41t-kyr0231.jpg" alt="599聚橙会员储值卡" title="599聚橙会员储值卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>31</span>个)</p>
						<p class="citys">
							深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、苏州、南宁、佛山 <span class="more">更多&gt;
							<span class="more-popup">
							<i class="arrow"></i>深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、苏州、南宁、佛山、江门、大连、宁波、银川、天津、西安、昆明、南京、泉州、厦门、合肥、沈阳、无锡、东莞、哈尔滨、莆田、宜昌、黄山、乌兰浩特</span>
							</span>
						</p>

						<div class="buy-wrap">
							<span class="price">￥<i>599.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=235" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="38">
									儿童亲子 </li>

								<li class="tab-item " data-id="36">
									音乐会 </li>

								<li class="tab-item " data-id="37">
									话剧歌剧 </li>

								<li class="tab-item " data-id="91">
									戏曲综艺 </li>

								<li class="tab-item " data-id="79">
									音乐剧 </li>

								<li class="tab-item " data-id="99">
									展览 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="38">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvlxyamau5lwaacgwkrwo7o145.jpg" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvf8mcwakzvzaapyiycizbg970.jpg" alt="【小橙堡】原创音乐亲子剧《木偶奇遇记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[武汉]湖北剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】原创音乐亲子剧《木偶奇遇记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvol-amarbvbaacs6ipya5e193.jpg" alt="【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovimyq6ad6tuaah25-kug-i880.jpg" alt="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津华夏未来剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="36">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvi2s02aet-iaageqsqstte103.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宜昌]宜昌剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqpd9aay-skaadu3dzhhha382.jpg" alt="【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[成都]特仑苏音乐厅</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvobiecash5laadv1dcj6po782.jpg" alt="【万有音乐系】“魔女宅急便”宫崎骏·久石让动漫视听系列主题音乐会（2018）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]新桥文化艺术中心大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 20:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“魔女宅急便”宫崎骏·久石让动漫视听系列主题音乐会（2018）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvi2s2gaekr-aageqsqstte369.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[昆明]昆明胜利堂剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 20:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="37">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpk8q-agnydaabpxeuqtcs142.jpg" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]虹桥艺术中心剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">澳大利亚“国宝级”喜剧《燃烧的疯人院》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvoyt6kaf01xaabo7rbq5ee457.jpg" alt="2018第五届城市戏剧节off单元  草三剧社原创小剧《忘了我》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-15 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvosooganw9laabnx1rsyi4180.jpg" alt="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津东丽礼堂-大剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-20 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvoyt6kaf01xaabo7rbq5ee457.jpg" alt="2018第五届城市戏剧节off单元  草三剧社原创小剧《忘了我》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[广州]郭兰英剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-21 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="91">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqxc0qasxsyaac2ql8nrqk527.jpg" alt="《游殿》《打子》《相约讨钗》折子戏">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院厅堂</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 14:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《游殿》《打子》《相约讨钗》折子戏</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvoorn2atqy5aachdysc6gw092.jpg" alt="玩儿丸脱口秀专场演出">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">玩儿丸脱口秀专场演出</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqc8dyav4-6aacuwvjdjni592.jpg" alt="昆剧新版《义侠记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院	</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-28 19:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">昆剧新版《义侠记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqxc5oac84maacquxaxfge472.jpg" alt="《下山》《情悔》《弹词》折子戏">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院厅堂</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 14:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《下山》《情悔》《弹词》折子戏</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="79">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvocbwwayidmaadzvo-9qdm948.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心剧院大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-29 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">法语原版经典音乐剧《罗密欧与朱丽叶》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvodsbaazudaaab_c1kzbws404.jpg" alt="百老汇浪漫音乐剧《I Do！I Do！》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">百老汇浪漫音乐剧《I Do！I Do！》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvocbumaie9aaadzvo-9qdm670.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]上汽·上海文化广场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">法语原版经典音乐剧《罗密欧与朱丽叶》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="99">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvn5l42aluvxaab78xnot0e389.jpg" alt="《新印象莫奈：时光映迹艺术展》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]和义大道购物中心</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 22:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《新印象莫奈：时光映迹艺术展》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="35">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]上海商城剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-18 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[杭州]浙江胜利剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-20 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]宁波逸夫剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-21 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[合肥]合肥瑶海大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=235">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">999聚橙会员储值卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvpvfvcanqplaaa4ok1u8pq359.jpg" alt="999聚橙会员储值卡" title="999聚橙会员储值卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>32</span>个)</p>
						<p class="citys">
							深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、苏州、南宁、佛山 <span class="more">更多&gt;
							<span class="more-popup">
							<i class="arrow"></i>深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、苏州、南宁、佛山、江门、大连、石家庄、宁波、银川、天津、西安、昆明、南京、泉州、厦门、合肥、沈阳、无锡、东莞、哈尔滨、莆田、宜昌、黄山、乌兰浩特</span>
							</span>
						</p>

						<div class="buy-wrap">
							<span class="price">￥<i>999.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=231" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="37">
									话剧歌剧 </li>

								<li class="tab-item " data-id="36">
									音乐会 </li>

								<li class="tab-item " data-id="38">
									儿童亲子 </li>

								<li class="tab-item " data-id="91">
									戏曲综艺 </li>

								<li class="tab-item " data-id="79">
									音乐剧 </li>

								<li class="tab-item " data-id="99">
									展览 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="37">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpk8q-agnydaabpxeuqtcs142.jpg" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]虹桥艺术中心剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">澳大利亚“国宝级”喜剧《燃烧的疯人院》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvoyt6kaf01xaabo7rbq5ee457.jpg" alt="2018第五届城市戏剧节off单元  草三剧社原创小剧《忘了我》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-15 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvosooganw9laabnx1rsyi4180.jpg" alt="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津东丽礼堂-大剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-20 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvoyt6kaf01xaabo7rbq5ee457.jpg" alt="2018第五届城市戏剧节off单元  草三剧社原创小剧《忘了我》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[广州]郭兰英剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-21 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">2018第五届城市戏剧节off单元 草三剧社原创小剧《忘了我》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="36">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvi2s02aet-iaageqsqstte103.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宜昌]宜昌剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqpd9aay-skaadu3dzhhha382.jpg" alt="【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[成都]特仑苏音乐厅</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvobiecash5laadv1dcj6po782.jpg" alt="【万有音乐系】“魔女宅急便”宫崎骏·久石让动漫视听系列主题音乐会（2018）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]新桥文化艺术中心大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 20:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“魔女宅急便”宫崎骏·久石让动漫视听系列主题音乐会（2018）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvi2s2gaekr-aageqsqstte369.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[昆明]昆明胜利堂剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 20:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="38">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvlxyamau5lwaacgwkrwo7o145.jpg" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovgw5wgazof4aa1pxdcwbbm024.jpg" alt="【小橙堡】浪漫经典童话剧《灰姑娘》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]中杂（东图)剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】浪漫经典童话剧《灰姑娘》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpvcyoazdntaacfd3-gkxw795.jpg" alt="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[重庆]重庆大剧院儿童剧场之微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovimyq6ad6tuaah25-kug-i880.jpg" alt="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津华夏未来剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="91">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqxc0qasxsyaac2ql8nrqk527.jpg" alt="《游殿》《打子》《相约讨钗》折子戏">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院厅堂</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 14:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《游殿》《打子》《相约讨钗》折子戏</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvoorn2atqy5aachdysc6gw092.jpg" alt="玩儿丸脱口秀专场演出">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">玩儿丸脱口秀专场演出</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqc8dyav4-6aacuwvjdjni592.jpg" alt="昆剧新版《义侠记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院	</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-28 19:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">昆剧新版《义侠记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqxc5oac84maacquxaxfge472.jpg" alt="《下山》《情悔》《弹词》折子戏">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[苏州]苏州昆剧院厅堂</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 14:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《下山》《情悔》《弹词》折子戏</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="79">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvocbwwayidmaadzvo-9qdm948.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心剧院大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-29 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">法语原版经典音乐剧《罗密欧与朱丽叶》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvodsbaazudaaab_c1kzbws404.jpg" alt="百老汇浪漫音乐剧《I Do！I Do！》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">百老汇浪漫音乐剧《I Do！I Do！》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvocbumaie9aaadzvo-9qdm670.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]上汽·上海文化广场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">法语原版经典音乐剧《罗密欧与朱丽叶》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="99">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvn5l42aluvxaab78xnot0e389.jpg" alt="《新印象莫奈：时光映迹艺术展》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]和义大道购物中心</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 22:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《新印象莫奈：时光映迹艺术展》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="35">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]上海商城剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-18 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[杭州]浙江胜利剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-20 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]宁波逸夫剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-21 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[石家庄]石家庄大剧院-大剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-22 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=231">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">欢乐家庭卡PLUS</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvocy-2avogmaacqgxidyeo190.jpg" alt="欢乐家庭卡PLUS" title="欢乐家庭卡PLUS">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>32</span>个)</p>
						<p class="citys">
							深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、南宁、佛山、江门 <span class="more">更多&gt;
							<span class="more-popup">
							<i class="arrow"></i>深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、南宁、佛山、江门、大连、石家庄、连云港、宁波、天津、西安、昆明、南京、泉州、合肥、沈阳、无锡、东莞、哈尔滨、莆田、宜昌、河源、商丘、黄山、乌兰浩特</span>
							</span>
						</p>

						<div class="buy-wrap">
							<span class="price">￥<i>999.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=228" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="9">
									周未儿童剧 </li>

								<li class="tab-item " data-id="6">
									微剧场 </li>

								<li class="tab-item " data-id="8">
									艺术展 </li>

								<li class="tab-item " data-id="-1">
									其它 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list hide" data-cate_id="-1">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvlxyamau5lwaacgwkrwo7o145.jpg" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpk8q-agnydaabpxeuqtcs142.jpg" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]虹桥艺术中心剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">澳大利亚“国宝级”喜剧《燃烧的疯人院》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvi2s02aet-iaageqsqstte103.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宜昌]宜昌剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（无尚）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqpd9aay-skaadu3dzhhha382.jpg" alt="【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[成都]特仑苏音乐厅</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“龙猫和他的小伙伴”宫崎骏·久石让动漫视听系列主题音乐会</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=228">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list " data-cate_id="9">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovgw5wgazof4aa1pxdcwbbm024.jpg" alt="【小橙堡】浪漫经典童话剧《灰姑娘》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]中杂（东图)剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】浪漫经典童话剧《灰姑娘》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovimyq6ad6tuaah25-kug-i880.jpg" alt="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津华夏未来剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvf8mcwakzvzaapyiycizbg970.jpg" alt="【小橙堡】原创音乐亲子剧《木偶奇遇记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[武汉]湖北剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】原创音乐亲子剧《木偶奇遇记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvg706eawmtqaamhcqalovw452.jpg" alt="【小橙堡】奇思妙想童话剧《白雪公主》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[武汉]武商众圆松松小镇乐乐大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 15:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】奇思妙想童话剧《白雪公主》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=228">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="6">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvol-amarbvbaacs6ipya5e193.jpg" alt="【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpvcyoazdntaacfd3-gkxw795.jpg" alt="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[重庆]重庆大剧院儿童剧场之微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovhcw3wavjlqaaqpxuzfkua252.jpg" alt="【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[广州]正佳演艺剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 11:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovhcw3wavjlqaaqpxuzfkua252.jpg" alt="【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=228">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="8">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvn5l42aluvxaab78xnot0e389.jpg" alt="《新印象莫奈：时光映迹艺术展》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]和义大道购物中心</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 22:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">《新印象莫奈：时光映迹艺术展》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvql64magyvaaacgslgskny459.jpg" alt="【小橙堡】大有不“童”国际绘本展">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]宁波1902万科广场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-01 21:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大有不“童”国际绘本展</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvpcxasayrbaaaclproc56y438.jpg" alt="【小橙堡】大有不“童”国际绘本展">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[佛山]佛山越秀悦汇天地</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-15 22:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大有不“童”国际绘本展</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=228">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">小橙堡体验卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvno4t6alqcaaamfl3ff8ss015.png" alt="小橙堡体验卡" title="小橙堡体验卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>32</span>个)</p>
						<p class="citys">
							深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、南宁、佛山、江门 <span class="more">更多&gt;
							<span class="more-popup">
							<i class="arrow"></i>深圳、广州、上海、北京、成都、杭州、重庆、长沙、武汉、南宁、佛山、江门、大连、石家庄、连云港、宁波、天津、西安、昆明、南京、泉州、合肥、沈阳、无锡、东莞、哈尔滨、莆田、宜昌、河源、商丘、黄山、乌兰浩特</span>
							</span>
						</p>

						<div class="buy-wrap">
							<span class="price">￥<i>99.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=226" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="9">
									周未儿童剧 </li>

								<li class="tab-item " data-id="6">
									微剧场 </li>

								<li class="tab-item " data-id="8">
									艺术展 </li>

								<li class="tab-item " data-id="-1">
									其它 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="9">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvf8mcwakzvzaapyiycizbg970.jpg" alt="【小橙堡】原创音乐亲子剧《木偶奇遇记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[武汉]湖北剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】原创音乐亲子剧《木偶奇遇记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovgw5wgazof4aa1pxdcwbbm024.jpg" alt="【小橙堡】浪漫经典童话剧《灰姑娘》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]中杂（东图)剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】浪漫经典童话剧《灰姑娘》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovimyq6ad6tuaah25-kug-i880.jpg" alt="【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[天津]天津华夏未来剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型奇幻音乐儿童剧《小伴龙·魔法生日会》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvg706eawmtqaamhcqalovw452.jpg" alt="【小橙堡】奇思妙想童话剧《白雪公主》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[武汉]武商众圆松松小镇乐乐大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 15:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】奇思妙想童话剧《白雪公主》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=226">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="6">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvol-amarbvbaacs6ipya5e193.jpg" alt="【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡微剧场】 以色列 暖心寓言偶剧《爱心树》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpvcyoazdntaacfd3-gkxw795.jpg" alt="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[重庆]重庆大剧院儿童剧场之微剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-24 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovhcw3wavjlqaaqpxuzfkua252.jpg" alt="【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]深圳妇儿大厦儿童剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】保加利亚 想象创意物品偶剧《奇幻庄园》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvhq3h6aqdk2aakwhhtjygq088.jpg" alt="【小橙堡·微剧场】保加利亚温情故事木偶剧《顽皮小精灵》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[深圳]南山文体中心剧院小剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡·微剧场】保加利亚温情故事木偶剧《顽皮小精灵》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=226">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="-1">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokovgqoumanmj2aaokkueuzum939.jpg" alt="【小橙堡】大型原创励志童话剧《小马快跑之马虎父子》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[无锡]无锡演艺剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型原创励志童话剧《小马快跑之马虎父子》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvi2s2gaekr-aageqsqstte369.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[昆明]昆明胜利堂剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-25 20:00</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会（星辰）</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvf8mcwakzvzaapyiycizbg970.jpg" alt="【小橙堡】原创音乐亲子剧《木偶奇遇记》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[重庆]重庆文化宫大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-31 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】原创音乐亲子剧《木偶奇遇记》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvkc6csabfzraafpngziwei662.jpg" alt="【小橙堡】大型3D多媒体亲子科幻剧《恐龙工厂的奇妙夜》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]虹桥艺术中心剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-01 10:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大型3D多媒体亲子科幻剧《恐龙工厂的奇妙夜》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=226">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="8">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvql64magyvaaacgslgskny459.jpg" alt="【小橙堡】大有不“童”国际绘本展">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[宁波]宁波1902万科广场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-01 21:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】大有不“童”国际绘本展</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=226">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">石家庄乐享通票卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvqxwdkaaf8-aabsavt75te151.jpg" alt="石家庄乐享通票卡" title="石家庄乐享通票卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>1</span>个)</p>
						<p class="citys">
							石家庄 </p>

						<div class="buy-wrap">
							<span class="price">￥<i>499.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=241" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="36">
									音乐会 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="36">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvpn4tiagmctaaclzpp-kq0436.jpg" alt="声动北美欢乐秀">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[石家庄]石家庄大剧院-大剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-26 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">声动北美欢乐秀</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvpmkh2adaeqaacic4paqie126.jpg" alt="琴语 克罗地亚殿堂级手风琴小提琴二重奏">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[石家庄]石家庄大剧院 中剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-30 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">琴语 克罗地亚殿堂级手风琴小提琴二重奏</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvplwkmaqyneaacbcuqoddq673.jpg" alt="流金岁月 卡洛斯 鲁本经典音乐会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[石家庄]石家庄大剧院 中剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-20 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">流金岁月 卡洛斯 鲁本经典音乐会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpmiacasgf9aacsmonbunw373.jpg" alt="加拿大伯格曼双钢琴音乐会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[石家庄]石家庄大剧院 中剧场</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">加拿大伯格曼双钢琴音乐会</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=241">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">猫猫闹元宵</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvqywicadr9gaabkvjzg3yg616.jpg" alt="猫猫闹元宵" title="猫猫闹元宵">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>1</span>个)</p>
						<p class="citys">
							西安 </p>

						<div class="buy-wrap">
							<span class="price">￥<i>666.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=243" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="79">
									音乐剧 </li>

								<li class="tab-item " data-id="35">
									演唱会 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="79">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpcrfuap4ujaabztedehu4872.jpg" alt="【音乐剧】经典音乐剧《猫》cats">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[西安]陕西大剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-28 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【音乐剧】经典音乐剧《猫》cats</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=243">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="35">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvnpnqyaxy1jaabyojpzd50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[西安]西安人民剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-11 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvoo-6iaeapyaabn3d17voe445.jpg" alt="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[西安]西安人民剧院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-06-18 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=243">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">音乐剧发烧友卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvqzh4sanhxjaabln6qgdes343.jpg" alt="音乐剧发烧友卡" title="音乐剧发烧友卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>1</span>个)</p>
						<p class="citys">
							上海 </p>

						<div class="buy-wrap">
							<span class="price">￥<i>666.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=242" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="38">
									儿童亲子 </li>

								<li class="tab-item " data-id="79">
									音乐剧 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="38">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvlxyamau5lwaacgwkrwo7o145.jpg" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-03-23 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=242">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="79">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvodsbaazudaaab_c1kzbws404.jpg" alt="百老汇浪漫音乐剧《I Do！I Do！》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-04-06 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">百老汇浪漫音乐剧《I Do！I Do！》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpcfl6adgrvaadcksmosve565.jpg" alt="外百老汇浪漫爱情音乐剧《长腿叔叔》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-04 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">外百老汇浪漫爱情音乐剧《长腿叔叔》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpydc6afv8aaab1azlj3pe335.jpg" alt="经典音乐剧《洗衣服》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-06-07 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">经典音乐剧《洗衣服》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvqok32adwgbaacc7qrptro396.jpg" alt="【嬉习喜戏】致敬张国荣·经典音乐剧《喝彩》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[上海]兰心大戏院</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-09-13 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【嬉习喜戏】致敬张国荣·经典音乐剧《喝彩》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=242">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
				<li class="card-item">
					<!-- 欢聚橙卡信息 -->
					<div class="card-wrap">
						<div class="title">
							<span class="card-name">北京音乐剧发烧友卡</span>

						</div>
						<div class="img-wrap">
							<img src="picture/raokmvqp7eyabsolaabln6qgdes493.jpg" alt="北京音乐剧发烧友卡" title="北京音乐剧发烧友卡">
						</div>
						<div class="card-shadow"></div>

						<p class="c-title">适用城市(<span>1</span>个)</p>
						<p class="citys">
							北京 </p>

						<div class="buy-wrap">
							<span class="price">￥<i>666.00</i></span>
							<a href="http://card.juooo.com/booking/index?card_group_id=244" class="buy-btn">立即购买</a>
						</div>
						<div class="card-side"></div>
					</div>
					<!-- 欢聚橙卡信息end -->
					<!-- 支持的演出 -->
					<div class="show-container">

						<div class="tab-wrap">
							<span class="t-title">支持演出：</span>
							<ul class="tab-list">

								<li class="tab-item active" data-id="79">
									音乐剧 </li>

								<li class="tab-item " data-id="38">
									儿童亲子 </li>

							</ul>
						</div>

						<div class="show-wrap">

							<ul class="show-list " data-cate_id="79">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpydc6afv8aaab1azlj3pe335.jpg" alt="经典音乐剧《洗衣服》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]北京剧空间</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-05-18 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">经典音乐剧《洗衣服》</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raokmvpn9wwamobzaabuvd3cugu667.jpg" alt="外百老汇浪漫爱情音乐剧《长腿叔叔》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]北京剧空间</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-06-30 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">外百老汇浪漫爱情音乐剧《长腿叔叔》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvpm0myar5k5aab8ehfrrlg915.jpg" alt="百老汇浪漫音乐剧《I Do！I Do！》中文版">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]北京剧空间</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-08-15 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">百老汇浪漫音乐剧《I Do！I Do！》中文版</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=244">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

							<ul class="show-list hide" data-cate_id="38">

								<!-- 演出信息 -->
								<li class="show-item">
									<div class="img-wrap">
										<a href="../All_product/item.html">
											<img src="picture/raoknvlxyamau5lwaacgwkrwo7o145.jpg" alt="【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》">
										</a>
										<a href="../All_product/item.html">
											<div class="s-mask">
												<p class="s-address">
													<span class="ar-icon"></span>
													<span>[北京]北京剧空间</span>
												</p>
												<p class="s-time">
													<span class="cl-icon"></span>
													<span>2018-09-07 19:30</span>
												</p>
											</div>
										</a>
									</div>
									<p class="s-title">
										<a href="../All_product/item.html">【小橙堡】家庭音乐剧四季剧团首部海外授权中文版音乐剧《想变成人的猫》</a>
									</p>
								</li>
								<!-- 演出信息end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 敬请期待 -->
								<li class="show-item">
									<div class="expect-wrap">
										<span class="word">敬请期待</span>
									</div>
								</li>
								<!-- 敬请期待end -->
								<!-- 查看全部 -->
								<li class="view-all">
									<a href="http://card.juooo.com/booking/index?card_group_id=244">
										<span class="word">查看全部</span>
										<span class="arrow-right"></span>
									</a>
								</li>
								<!-- 查看全部end -->
							</ul>

						</div>
				</li>
			</ul>
			</div>
			<!-- 内容区域end -->

			<!-- 欢聚橙卡权益弹出框 -->
			<div class="rights-popup">
				<div class="rights-title">欢聚橙卡权益<span class="close"></span></div>
				<div class="rights-content">

				</div>
			</div>
			<div class="mask"></div>
			<!-- 欢聚橙卡权益弹出框end -->

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
<!-- 底部end -->

<script type="text/javascript">
	seajs.use(['jquery', 'Dialog', 'login', 'validForm', 'webuploader', 'adaptivebg', 'swiperNew'], function($, Dialog, login) {

		$('#login').on('click', function() {
			login.init();
		})

		//异步增加热点位点击量
		var addHotspotUrl = 'http://card.juooo.com/Index/hotspot';
		$('.hot_img').on('click', function() {
			var hotspot_list_id = $(this).data('hot_id');
			var hot_url = $(this).data('hot_url');
			$.ajax({
				type: 'POST',
				url: addHotspotUrl,
				data: {
					hotspot_list_id: hotspot_list_id,
					hot_url: hot_url
				},
				dataType: 'json',
				success: function(json) {
					console.log(json);
				}
			});
		});

		//点击打开会员权益弹窗
		$('.list-container').on('click', '.view-rights', function() {
			var ruleId = $(this).data('id');
			$.ajax({
				type: 'POST',
				url: "http://card.juooo.com/Index/getCardRigts",
				data: {
					rule_id: ruleId
				},
				dataType: 'json',
				success: function(json) {
					if(json.code == 1) {
						$('.rights-content').html(json.info);
						$('.mask,.rights-popup').fadeIn();
					}
				}
			});
		});

		//关闭会员权益弹窗
		$('.rights-popup .close').on('click', function() {
			$('.rights-content').html('');
			$('.mask,.rights-popup').fadeOut();
		});

		//tab页切换
		$('.list-wrap').on('click', '.tab-item', function() {
			var that = $(this);
			var theIndex = that.index(); //tab页的索引
			var showWrap = that.parents('.show-container').find('.show-wrap');
			var dataId = that.attr('data-id');
			that.addClass('active').siblings().removeClass('active');
			showWrap.find('.show-list[data-cate_id =' + dataId + ']').removeClass('hide').siblings().addClass('hide');
		});

		var isLoad = true; //是否加载数据的标志位
		function getBookingList(page) {
			if(isLoad == true) {
				$('.list-wrap').append('<div class="loading"><span class="loading-img"></span><span>加载中...</span></div>');
			}
			isLoad = false; //加载数据前将标志置为flase
			//发送ajax请求
			$.ajax({
				type: 'post',
				url: 'http://card.juooo.com/Index/cardProductList',
				dataType: 'json',
				data: {
					page: page
				},
				success: function(res) {
					isLoad = true; //数据回调成功后将标志置为true
					$('.list-container .loading').remove();
					if(res.code == 1) {
						$('.list-wrap').append(res.html);
						if(curPage >= maxPage) {
							$('.list-wrap').append('<div class="loading"><span>没有更多了...</span></div>');
						}
					} else if(res.code == null) {
						$('.list-wrap').append('<div class="loading"><span>没有更多了...</span></div>');
					}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					console.log(XMLHttpRequest, textStatus, errorThrown);
				}
			})
		}

		/**
		 * mark:滚动加载数据
		 * author:LiuWei
		 * time: 2017/8/17
		 */
		var maxPage = "1"; //最大页数
		var curPage = 1; //当前页数
		$(document).on('scroll', function() {
			var viewH = $(window).height(); //浏览器可视窗口的高度
			var contentH = $(document).height(); //内容高度
			var scrollTop = $(document).scrollTop(); //滚动高度
			var footerH = $('.new-footer').height();
			if(viewH + scrollTop + footerH >= contentH && curPage < maxPage) {
				if(isLoad) {
					curPage++;
					getBookingList(curPage);
				}
			}
		});

	});
</script>

</body>

</html>
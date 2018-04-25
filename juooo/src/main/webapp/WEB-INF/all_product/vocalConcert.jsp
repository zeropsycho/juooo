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
		<title>演出门票_近期演唱会演出信息_近期演唱会演出门票订购-聚橙网</title>
		<meta name="keywords" content="演出门票,近期演唱会演出信息,近期演唱会演出门票订购" />
		<meta name="description" content="聚橙网提供最新的演出门票,近期演唱会演出信息,近期演唱会演出门票订购。" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/all_product/css/base_20.css">
		<link rel="stylesheet" href="<%=path%>/resource/all_product/css/base_21.css">
		<link rel="stylesheet" type="text/css" href="<%=path%>/resource/all_product/css/category_10.css">

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
							<a href="javascript:;" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
							<div class="phone-code js-phone-code"><img src="<%=path%>/resource/all_product/images/mobile_2.png" alt=""></div>
						</div>
					</div>
					<input type="hidden" id="js-city-url" value="http://www.juooo.csom/">
				</div>
			</div>
			<!-- 顶部栏 end -->
			<!-- top头部 End-->
			<!-- 顶部广告 -->
			<div class="w1200 nav-banner-wrap js-nav-banner">
				<a href="" class="nav-banner">
					<span class="close js-nav-close"><i class="bg-icon close-icon"></i>关闭</span>
					<img src="<%=path%>/resource/all_product/images/raoknvpv08yapzijaab2npswgzq863_2.jpg" alt="">
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
									<p class="h-text h-intro">当前全国共有<span class="h-num">2216</span>场演出，城市后数字代表演出场次</p>
									<span class="h-close-box js-close-city"><i class="bg-icon h-close"></i></span>
								</div>
								<ul class="allcity-list">
									<li class="allcity-item"><span class="city-area">全　　国</span>
										<div class="city-wrap">
											<a class="city-link" cid="0" href="" target="_blank">全国<span>(2216)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华南地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="1" href="" target="_blank">深圳<span>(591)</span></a>
											<a class="city-link" cid="3" href="" target="_blank">广州<span>(106)</span></a>
											<a class="city-link" cid="27" href="" target="_blank">南宁<span>(108)</span></a>
											<a class="city-link" cid="61" href="" target="_blank">福州<span>(4)</span></a>
											<a class="city-link" cid="62" href="" target="_blank">泉州<span>(52)</span></a>
											<a class="city-link" cid="63" href="" target="_blank">厦门<span>(15)</span></a>
											<a class="city-link" cid="10019" href="" target="_blank">东莞<span>(31)</span></a>
											<a class="city-link" cid="10023" href="" target="_blank">福建<span>(71)</span></a>
											<a class="city-link" cid="10080" href="" target="_blank">清远<span>(0)</span></a>
											<a class="city-link" cid="10090" href="" target="_blank">河源<span>(0)</span></a>
											<a class="city-link" cid="10148" href="" target="_blank">罗城<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华东地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="4" href="" target="_blank">上海<span>(277)</span></a>
											<a class="city-link" cid="11" href="" target="_blank">杭州<span>(88)</span></a>
											<a class="city-link" cid="25" href="" target="_blank">苏州<span>(54)</span></a>
											<a class="city-link" cid="39" href="" target="_blank">连云港<span>(0)</span></a>
											<a class="city-link" cid="41" href="" target="_blank">宁波<span>(93)</span></a>
											<a class="city-link" cid="48" href="" target="_blank">镇江<span>(0)</span></a>
											<a class="city-link" cid="54" href="" target="_blank">南京<span>(30)</span></a>
											<a class="city-link" cid="10001" href="" target="_blank">合肥<span>(52)</span></a>
											<a class="city-link" cid="10007" href="" target="_blank">无锡<span>(42)</span></a>
											<a class="city-link" cid="10011" href="" target="_blank">常州<span>(0)</span></a>
											<a class="city-link" cid="10097" href="" target="_blank">盐城<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华北地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="5" href="" target="_blank">北京<span>(116)</span></a>
											<a class="city-link" cid="31" href="" target="_blank">大连<span>(6)</span></a>
											<a class="city-link" cid="36" href="" target="_blank">石家庄<span>(88)</span></a>
											<a class="city-link" cid="50" href="" target="_blank">天津<span>(26)</span></a>
											<a class="city-link" cid="10004" href="" target="_blank">沈阳<span>(6)</span></a>
											<a class="city-link" cid="10027" href="" target="_blank">哈尔滨<span>(11)</span></a>
											<a class="city-link" cid="10149" href="" target="_blank">乌兰浩特<span>(34)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">西南地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="6" href="" target="_blank">成都<span>(42)</span></a>
											<a class="city-link" cid="12" href="" target="_blank">重庆<span>(117)</span></a>
											<a class="city-link" cid="52" href="" target="_blank">昆明<span>(19)</span></a>
											<a class="city-link" cid="10008" href="" target="_blank">贵阳<span>(8)</span></a>
											<a class="city-link" cid="10137" href="" target="_blank">安顺<span>(0)</span></a>
											<a class="city-link" cid="10145" href="" target="_blank">龙岩<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">华中地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="14" href="" target="_blank">长沙<span>(34)</span></a>
											<a class="city-link" cid="17" href="" target="_blank">武汉<span>(24)</span></a>
											<a class="city-link" cid="10073" href="" target="_blank">宜昌<span>(27)</span></a>
											<a class="city-link" cid="10116" href="" target="_blank">商丘<span>(0)</span></a>
											<a class="city-link" cid="10151" href="" target="_blank">随州<span>(0)</span></a>
										</div>
									</li>
									<li class="allcity-item"><span class="city-area">西北地区</span>
										<div class="city-wrap">
											<a class="city-link" cid="51" href="" target="_blank">西安<span>(44)</span></a>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="command-city">
							<a href="" class="command-link" id="home-rec-city" title="深圳"><i class="bg-icon place"></i>推荐深圳站</a>
						</div>
					</div>
					<div class="search-box search">
						<div class="search-bar">
							<div class="search-input"><input class="js-search search-box" name="q" id="search_keywords" autocomplete="off" type="text" placeholder="请输入演出、艺人、场馆名称…" x-webkit-speech="" x-webkit-grammar="builtin:translate"></div>
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
						<a href="../run/scores.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raokmvo4as6apatsaaad-nuerxk400_2.png);"></i>
							<p class="module-text">积分商城</p>
						</a>
						<a href="../run/card.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raoknvpdesiapduxaaacbvjf9_q310_2.png);"></i>
							<p class="module-text">欢聚橙卡</p>
						</a>
						<a href="../run/activity.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raoknvo4atiafs20aaadtbeyuba106_2.png);"></i>
							<p class="module-text">聚特惠</p>
						</a>
						<a href="../run/Student-index.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raokmvo4aucasjuoaaagqpuj61c127_2.png);"></i>
							<p class="module-text">学生专区</p>
						</a>
						<a href="../run/zhuanti.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raoknvo4auiaf7p3aaadcka4fcq252_1.png);"></i>
							<p class="module-text">精彩专题</p>
						</a>
						<a href="../run/calendars.html" class="module-link">
							<i class="module-icon m-special" style="background-image: url(<%=path%>/resource/all_product/images/raokmvo4avcaevpeaaaeezoxq4k876_2.png);"></i>
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
									<a href="vocalConcert.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qduaspnaaaaeto5fqlu795_2.png);"></i>
										<span class="kind-text">演唱会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="music.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qfeacmibaaaefux5vuu038_2.png);"></i>
										<span class="kind-text">音乐会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="drama.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qg6aac9iaaaedcanr-c618_2.png);"></i>
										<span class="kind-text">话剧歌剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="child.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qiaafuhtaaag30h30mi241_2.png);"></i>
										<span class="kind-text">儿童亲子</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="musical.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qj2ahhqhaaagybomok8111_2.png);"></i>
										<span class="kind-text">音乐剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="variety.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qmkabw9saaagsgbqhxe942_2.png);"></i>
										<span class="kind-text">戏曲综艺</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="exhibition.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn7qn2aeg2uaaaeesj_ld4456_2.png);"></i>
										<span class="kind-text">展览</span>
										<i class="bg-icon more-icon"></i>
									</a>

								</div>
								<div class="right-detail js-right-detail">
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qewahyweaaavxkqyorc553_1.jpg)">
										<div class="col">
											<a href="vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 流行
												<!--<span>(20)</span>-->
											</a>
											<a href="vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 摇滚
												<!--<span>(20)</span>-->
											</a>
											<a href="vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 民谣
												<!--<span>(20)</span>-->
											</a>
											<a href="vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 民族
												<!--<span>(20)</span>-->
											</a>
											<a href="vocalConcert.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qgcaoj55aaaqu6vnjnw831_2.jpg)">
										<div class="col">
											<a href="music.html" class="details-link" target="_blank">
												<span class="line"></span> 交响
												<!--<span>(20)</span>-->
											</a>
											<a href="music.html" class="details-link" target="_blank">
												<span class="line"></span> 独奏
												<!--<span>(20)</span>-->
											</a>
											<a href="music.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qhaafro2aaafkohcdbo611_2.jpg)">
										<div class="col">
											<a href="drama.html" class="details-link" target="_blank">
												<span class="line"></span> 话剧
												<!--<span>(20)</span>-->
											</a>
											<a href="drama.html" class="details-link" target="_blank">
												<span class="line"></span> 歌剧
												<!--<span>(20)</span>-->
											</a>
											<a href="drama.html" class="details-link" target="_blank">
												<span class="line"></span> 歌舞剧
												<!--<span>(20)</span>-->
											</a>
											<a href="drama.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qiyaehz1aaavub-rf-u430_2.jpg)">
										<div class="col">
											<a href="child.html" class="details-link" target="_blank">
												<span class="line"></span> 儿童剧
												<!--<span>(20)</span>-->
											</a>
											<a href="child.html" class="details-link" target="_blank">
												<span class="line"></span> 亲子活动
												<!--<span>(20)</span>-->
											</a>
											<a href="child.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raokmvn759eap0m-aaas0qyo8la429_2.jpg)">
										<div class="col">
											<a href="musical.html" class="details-link" target="_blank">
												<span class="line"></span> 音乐剧
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qm6auwpcaaadmaz5k2s662_2.jpg)">
										<div class="col">
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 京剧
												<!--<span>(20)</span>-->
											</a>
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 昆曲
												<!--<span>(20)</span>-->
											</a>
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 越剧
												<!--<span>(20)</span>-->
											</a>
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 相声小品
												<!--<span>(20)</span>-->
											</a>
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 综艺
												<!--<span>(20)</span>-->
											</a>
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 马戏杂技
												<!--<span>(20)</span>-->
											</a>
										</div>
										<div class="col">
											<a href="variety.html" class="details-link" target="_blank">
												<span class="line"></span> 其他
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/all_product/images/raoknvn7qoaae51-aaahavn4ayw172_2.jpg)">
										<div class="col">
											<a href="exhibition.html" class="details-link" target="_blank">
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
							<a href="../productSubCategories/popular.html" class="nav-link " title="流行音乐" target="_blank">流行音乐</a>
						</li>
						<li class="nav-item ">
							<a href="../productSubCategories/classical.html" class="nav-link " title="古典音乐" target="_blank">古典音乐</a>
						</li>
						<li class="nav-item ">
							<a href="../productSubCategories/drama.html" class="nav-link " title="舞台剧" target="_blank">舞台剧</a>
						</li>
						<li class="nav-item ">
							<a href="../productSubCategories/kids.html" class="nav-link " title="儿童亲子" target="_blank">儿童亲子</a>
						</li>
						<li class="nav-item ">
							<a href="../productSubCategories/musical.html" class="nav-link " title="音乐剧" target="_blank">音乐剧</a>
						</li>
						<!-- 右侧年卡入口 -->
						<li class="nav-item entry-li">
							<a href="" class="nav-link entry" target="_blank" title="">
								<img src="<%=path%>/resource/all_product/images/raoknvpb_02auf1faajhopvn-jm883_2.gif" alt="" class="entry-img">
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

		<script type="text/javascript" src="<%=path%>/resource/all_product/js/sea_2.js" id="seajsnode"></script>
		<script type="text/javascript" src="<%=path%>/resource/all_product/js/modules-config_2.js"></script>
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
								var advertInfo = '<div class="logo"><a href="' + result.data.url + '"><img src="<%=path%>/resource/all_product/images/121c0bf1f1f741339898aaf445bbcaf7.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '"></a></div>';
							} else {
								var advertInfo = '<div class="logo"><img src="<%=path%>/resource/all_product/images/juooo-logo_2.png"></div>';
							}
							$("#js-head-logo .dropdown-tab").before(advertInfo);
						}
					});
				}
			});
		</script>
		<style type="text/css">
			.high-light-text {
				font-weight: bold;
				color: #f00
			}
			
			.show-news .news-info .title,
			.show-news .news-info .title .link {
				max-height: inherit;
			}
			
			.listprod ul li a p {
				height: 40px;
				line-height: 18px;
			}
			
			.listprod .tm {
				position: initial;
				padding: 5px 0;
				overflow: hidden;
				white-space: nowrap;
				text-overflow: ellipsis;
				bottom: auto;
				right: auto
			}
			
			.price .num {
				font-size: 20px;
			}
			
			.listprod .price {
				bottom: 15px;
			}
			
			.listprod ul li .state {
				position: absolute;
				right: 20px;
				bottom: 20px;
				color: #b2b2b2
			}
		</style>
		<div class="body-box">
			<div class="w1204">
				<div class="search-filter mt20">
					<div class="filter js-search-filter-wrap">
						<div class="filter-item">
							<div class="filter-name">城市：</div>
							<div class="filter-all">
								<a href="?type=99&sort=1" class="on">全部</a><span class="line">|</span></div>
							<div class="filter-con city-options-box">
								<a class=" " href="">深圳</a><span class="line  ">|</span>
								<a class=" " href="">广州</a><span class="line  ">|</span>
								<a class=" " href="">北京</a><span class="line  ">|</span>
								<a class=" " href="">上海</a><span class="line  ">|</span>
								<a class=" " href="">成都</a><span class="line  ">|</span>
								<a class=" " href="">重庆</a><span class="line  ">|</span>
								<a class=" " href="">武汉</a><span class="line  ">|</span>
								<a class=" " href="">长沙</a><span class="line  ">|</span>
								<a class=" " href="">南京</a><span class="line  ">|</span>
								<a class=" " href="">石家庄</a><span class="line  ">|</span>
								<a class=" " href="">宁波</a><span class="line  ">|</span>
								<a class=" " href="">无锡</a><span class="line  ">|</span>
								<a class=" " href="">昆明</a><span class="line  ">|</span>
								<a class=" " href="">太原</a><span class="line  ">|</span>
								<a class=" " href="">西安</a><span class="line  ">|</span>
								<a class=" " href="">苏州</a><span class="line  ">|</span>
								<a class=" " href="">福州</a><span class="line  ">|</span>
								<a class=" " href="">贵阳</a><span class="line  ">|</span>
								<a class=" " href="">杭州</a><span class="line  ">|</span>
								<a class=" " href="">香港</a><span class="line  ">|</span>
								<a class=" " href="">江门</a><span class="line  ">|</span>
								<a class=" " href="">南昌</a><span class="line  ">|</span>
								<a class=" " href="">南宁</a><span class="line  ">|</span>
								<a class=" hide " href="">佛山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">中山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">大连</a><span class="line  hide ">|</span>
								<a class=" hide " href="">兰州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">海口</a><span class="line  hide ">|</span>
								<a class=" hide " href="">惠州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">日照</a><span class="line  hide ">|</span>
								<a class=" hide " href="">连云港</a><span class="line  hide ">|</span>
								<a class=" hide " href="">南通</a><span class="line  hide ">|</span>
								<a class=" hide " href="">银川</a><span class="line  hide ">|</span>
								<a class=" hide " href="">青岛</a><span class="line  hide ">|</span>
								<a class=" hide " href="">桐乡</a><span class="line  hide ">|</span>
								<a class=" hide " href="">镇江</a><span class="line  hide ">|</span>
								<a class=" hide " href="">天津</a><span class="line  hide ">|</span>
								<a class=" hide " href="">澳门</a><span class="line  hide ">|</span>
								<a class=" hide " href="">郑州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">泉州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">厦门</a><span class="line  hide ">|</span>
								<a class=" hide " href="">景德镇</a><span class="line  hide ">|</span>
								<a class=" hide " href="">九江</a><span class="line  hide ">|</span>
								<a class=" hide " href="">台北</a><span class="line  hide ">|</span>
								<a class=" hide " href="">百色</a><span class="line  hide ">|</span>
								<a class=" hide " href="">宜春</a><span class="line  hide ">|</span>
								<a class=" hide " href="">包头</a><span class="line  hide ">|</span>
								<a class=" hide " href="">呼和浩特</a><span class="line  hide ">|</span>
								<a class=" hide " href="">珠海</a><span class="line  hide ">|</span>
								<a class=" hide " href="">威海</a><span class="line  hide ">|</span>
								<a class=" hide " href="">台中</a><span class="line  hide ">|</span>
								<a class=" hide " href="">合肥</a><span class="line  hide ">|</span>
								<a class=" hide " href="">绵阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">沈阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">洛阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">济南</a><span class="line  hide ">|</span>
								<a class=" hide " href="">晋城</a><span class="line  hide ">|</span>
								<a class=" hide " href="">南充</a><span class="line  hide ">|</span>
								<a class=" hide " href="">常州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">乐山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">雅安</a><span class="line  hide ">|</span>
								<a class=" hide " href="">都江堰</a><span class="line  hide ">|</span>
								<a class=" hide " href="">汉中</a><span class="line  hide ">|</span>
								<a class=" hide " href="">徐州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">宜宾</a><span class="line  hide ">|</span>
								<a class=" hide " href="">东莞</a><span class="line  hide ">|</span>
								<a class=" hide " href="">通辽</a><span class="line  hide ">|</span>
								<a class=" hide " href="">运城</a><span class="line  hide ">|</span>
								<a class=" hide " href="">福建</a><span class="line  hide ">|</span>
								<a class=" hide " href="">舟山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">湛江</a><span class="line  hide ">|</span>
								<a class=" hide " href="">潍坊</a><span class="line  hide ">|</span>
								<a class=" hide " href="">哈尔滨</a><span class="line  hide ">|</span>
								<a class=" hide " href="">临沂</a><span class="line  hide ">|</span>
								<a class=" hide " href="">长春</a><span class="line  hide ">|</span>
								<a class=" hide " href="">扬州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">德阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">遵义</a><span class="line  hide ">|</span>
								<a class=" hide " href="">淄博</a><span class="line  hide ">|</span>
								<a class=" hide " href="">保定</a><span class="line  hide ">|</span>
								<a class=" hide " href="">邯郸</a><span class="line  hide ">|</span>
								<a class=" hide " href="">烟台</a><span class="line  hide ">|</span>
								<a class=" hide " href="">淮南</a><span class="line  hide ">|</span>
								<a class=" hide " href="">新乡</a><span class="line  hide ">|</span>
								<a class=" hide " href="">驻马店</a><span class="line  hide ">|</span>
								<a class=" hide " href="">滁州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">温州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">唐山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">三亚</a><span class="line  hide ">|</span>
								<a class=" hide " href="">宿迁</a><span class="line  hide ">|</span>
								<a class=" hide " href="">首尔</a><span class="line  hide ">|</span>
								<a class=" hide " href="">黄冈</a><span class="line  hide ">|</span>
								<a class=" hide " href="">釜山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">西双版纳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">荆州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">嘉兴</a><span class="line  hide ">|</span>
								<a class=" hide " href="">泰州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">莆田</a><span class="line  hide ">|</span>
								<a class=" hide " href="">西昌</a><span class="line  hide ">|</span>
								<a class=" hide " href="">潮州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">柳州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">白银</a><span class="line  hide ">|</span>
								<a class=" hide " href="">绍兴</a><span class="line  hide ">|</span>
								<a class=" hide " href="">自贡</a><span class="line  hide ">|</span>
								<a class=" hide " href="">宜昌</a><span class="line  hide ">|</span>
								<a class=" hide " href="">汕头</a><span class="line  hide ">|</span>
								<a class=" hide " href="">丽水</a><span class="line  hide ">|</span>
								<a class=" hide " href="">曲靖</a><span class="line  hide ">|</span>
								<a class=" hide " href="">阳江</a><span class="line  hide ">|</span>
								<a class=" hide " href="">廊坊</a><span class="line  hide ">|</span>
								<a class=" hide " href="">襄阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">清远</a><span class="line  hide ">|</span>
								<a class=" hide " href="">台州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">商丘</a><span class="line  hide ">|</span>
								<a class=" hide " href="">义乌</a><span class="line  hide ">|</span>
								<a class=" hide " href="">达州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">晋江</a><span class="line  hide ">|</span>
								<a class=" hide " href="">赣州</a><span class="line  hide ">|</span>
								<a class=" hide " href="">焦作</a><span class="line  hide ">|</span>
								<a class=" hide " href="">耒阳</a><span class="line  hide ">|</span>
								<a class=" hide " href="">新加坡</a><span class="line  hide ">|</span>
								<a class=" hide " href="">其他</a><span class="line  hide ">|</span>
								<a class=" hide " href="">安顺</a><span class="line  hide ">|</span>
								<a class=" hide " href="">六盘水</a><span class="line  hide ">|</span>
								<a class=" hide " href="">肇庆</a><span class="line  hide ">|</span>
								<a class=" hide " href="">韶关</a><span class="line  hide ">|</span>
								<a class=" hide " href="">龙岩</a><span class="line  hide ">|</span>
								<a class=" hide " href="">黄山</a><span class="line  hide ">|</span>
								<a class=" hide " href="">罗城</a><span class="line  hide ">|</span>
								<a class=" hide " href="">乌兰浩特</a><span class="line  hide ">|</span>
								<a class=" hide " href="">桂林</a><span class="line  hide ">|</span>
								<a class=" hide " href="">营口</a><span class="line  hide ">|</span>
								<a class=" hide " href="">河源</a><span class="line  hide ">|</span>
								<a class=" hide " href="">盐城</a><span class="line  hide ">|</span>
								<a class=" hide " href="">东营</a><span class="line  hide ">|</span>
								<a class=" hide " href="">湖州</a><span class="line  hide ">|</span>
								<a href="javascript:;" id="morecity" class="filter-more "> »</a>
							</div>
						</div>
						<div class="filter-item">
							<div class="filter-name">类型：</div>
							<div class="filter-all">
								<a href="" class="">全部</a><span class="line">|</span></div>
							<div class="filter-con">
								<a class="on" href="vocalConcert.html">演唱会</a><span class="line">|</span>
								<a class="" href="music.html">音乐会</a><span class="line">|</span>
								<a class="" href="drama.html">话剧歌剧</a><span class="line">|</span>
								<a class="" href="child.html">儿童亲子</a><span class="line">|</span>
								<a class="" href="musical.html">音乐剧</a><span class="line">|</span>
								<a class="" href="variety.html">戏曲综艺</a><span class="line">|</span>
								<a class="" href="exhibition.html">展览</a><span class="line">|</span>
								<a class="" href="dance.html">舞蹈芭蕾</a><span class="line">|</span>

								<div class="filter-morelist">
									<a class="on" href="">全部</a>
									<a class="" href="">演唱会</a>
								</div>
							</div>
						</div>
						<div class="filter-item">
							<div class="filter-name">时间：</div>
							<div class="filter-all">
								<a href="" class="on">全部</a><span class="line">|</span></div>
							<div class="filter-con">
								<a class="" href="">一周内</a><span class="line">|</span>
								<a class="" href="">一个月内</a><span class="line">|</span>
								<a class="" href="">三个月内</a><span class="line">|</span>
								<a class="" href="">6月</a><span class="line">|</span>
								<a class="" href="">7月</a><span class="line">|</span>
								<a class="" href="">8月</a><span class="line">|</span>
							</div>
						</div>
						<!--div class="filter-item">
                        <div class="filter-name">费用：</div>
                        <div class="filter-all"><a href="?type=99&sort=1" class="on">全部</a><span class="line">|</span></div>
                        <div class="filter-con">
                                                            <a class="" href="?type=99&sort=1&cost=1">100以下</a><span class="line">|</span>
                                                            <a class="" href="?type=99&sort=1&cost=2">101-300元</a><span class="line">|</span>
                                                            <a class="" href="?type=99&sort=1&cost=3">301-500元</a><span class="line">|</span>
                                                            <a class="" href="?type=99&sort=1&cost=4">501-800元</a><span class="line">|</span>
                                                            <a class="" href="?type=99&sort=1&cost=5">800元以上</a><span class="line">|</span>
                                                    </div>
                    </div-->
						<div class="filter-item" style="border:none">
							<div class="filter-name">优惠：</div>
							<ul class="yh">
								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>聚橙主办</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>支持欢聚橙卡</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>全额积分兑换</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>在线选座</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>套票</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>电子票</label></a>
								</li>

								<li>
									<a href=""><label><i class="" type="checkbox" name="special" value="1"></i>学生票</label></a>
								</li>
							</ul>
						</div>
						<div class="filter-item selected-c">
							<div class="filter-name">已选条件：</div>
							<a href="?sort=1"><span class="sele-a">演唱会<i value="k" class="colse" title="关闭">X</i></span></a>
							<!-- <span class="sele-a">蔡依林<i value="k" class="colse" title="关闭">X</i></span> -->
						</div>
					</div>
					<div class="push">
						<div class="s-groom">
							<h4>大家都在找：</h4>
							<div class="groomjs">
								<ul class="s-groomc fadecon everyone-look-for-box">
									<li class="hide active" id="box1">
										<a href="" title="" target="_blank" class="img"><img alt="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" title="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" src="<%=path%>/resource/all_product/images/rAoKmVntSC2ASHskAADrrpOgpu0379.jpg">
											<p>百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站</p>
										</a>
										<div class="info">
											<p>时　间：2018.08.30 19:30 </p>
											<p>场　馆：
												<a class="c-666" href="" target="_blank">上汽·上海文化广场</a>
											</p>
											<p>票　价：<span class="rmb">¥</span><span class="num">80</span><span class="qi"> 起</span></p>
										</div>
									</li>
									<li class="hide " id="box2">
										<a href="" title="" target="_blank" class="img"><img alt="外百老汇浪漫爱情音乐剧《长腿叔叔》中文版-上海站" title="外百老汇浪漫爱情音乐剧《长腿叔叔》中文版-上海站" src="<%=path%>/resource/all_product/images/raokmvpcfl6adgrvaadcksmosve565.jpg">
											<p>外百老汇浪漫爱情音乐剧《长腿叔叔》中文版-上海站</p>
										</a>
										<div class="info">
											<p>时　间：2018.05.04 19:30 </p>
											<p>场　馆：
												<a class="c-666" href="" target="_blank">兰心大戏院</a>
											</p>
											<p>票　价：<span class="rmb">¥</span><span class="num">80</span><span class="qi"> 起</span></p>
										</div>
									</li>
								</ul>
								<ul class="bd fadetab everyone-look-for-dot-box">
									<li class="active">
										<a class="" data-toggle="tab-list" data-target="#box1" href="#box1"></a>
									</li>
									<li>
										<a data-toggle="tab-list" data-target="#box2" href="#box2"></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="search-result mt20">
					<div class="result-left">
						<div class="sortbar clearfix">
							<!-- <ul class="sorting-btns">
                            <li><a href="?type=35&sort=1" class="active"><span>全部演出</span></a></li>
                                                        <li><a href="?type=35&sort=1&sellState=1" class=""><span>售票中</span></a></li>
                                                        <li><a href="?type=35&sort=1&sellState=2" class=""><span>预售</span></a></li>
                                                        <li><a href="?type=35&sort=1&sellState=3" class=""><span>预定</span></a></li>
                                                        
                        </ul> -->
							<ul class="switch-btns">
								<li class="txt">排列方式：</li>
								<div class="fadetabSearch">
									<li>
										<a href="" class="active"><span class="icon-switch-list"></span></a>
									</li>

								</div>
							</ul>
						</div>
						<div class="fadeconSearch">
							<!--列表展示-->
							<div liststyle=2 id="tab_box2" class="tabbox02 list-box">
								<div class="listprod clearfix">
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvohmhuaoxnnaadyxv9hqpe990_4.jpg" alt="谭咏麟银河岁月40载巡回演唱会2018·天津站" title="谭咏麟银河岁月40载巡回演唱会2018·天津站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">谭咏麟银河岁月40载巡回演唱会2018·天津站</a></h3>
											<p class="lisa pos-time">时 间：2018.03.24 19:30</p>
											<p class="lisa pos-venue">场 馆： [天津] 天津体育中心（大馆）</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">380~1666</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=82948 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvqofycacw1maaddfkat7e0729_4.jpg" alt="2018咪咕音乐现场刘忻“怦然忻动”歌友会 " title="2018咪咕音乐现场刘忻“怦然忻动”歌友会 "></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018咪咕音乐现场刘忻“怦然忻动”歌友会 </a></h3>
											<p class="lisa pos-time">时 间：2018.03.24 19:30</p>
											<p class="lisa pos-venue">场 馆： [重庆] 重庆文化宫大剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">120~320</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84881 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<p class="icon-presell"></p>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvppydmacaq1aad1nljyyds081_4.jpg" alt="2018CoCo李玟“18”世界巡回演唱会-重庆站" title="2018CoCo李玟“18”世界巡回演唱会-重庆站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018CoCo李玟“18”世界巡回演唱会-重庆站</a></h3>
											<p class="lisa pos-time">时 间：2018.03.24 20:00</p>
											<p class="lisa pos-venue">场 馆： [重庆] 重庆国际博览中心中央大厅</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">380~2999</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">预售中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83916 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqvh7sacxxfaacvzqiw-rw641_4.jpg" alt="KATY PERRY 'WITNESS' 世界巡回演唱会 2018 香港站" title="KATY PERRY 'WITNESS' 世界巡回演唱会 2018 香港站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">KATY PERRY 'WITNESS' 世界巡回演唱会 2018 香港站</a></h3>
											<p class="lisa pos-time">时 间：2018.03.30 20:00</p>
											<p class="lisa pos-venue">场 馆： [香港] 香港亚洲国际博览馆Arena</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">588~1888</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85023 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqvka6aejouaac627z1zb0061_4.jpg" alt="卢广仲《春季》世界巡回演唱会2018香港站" title="卢广仲《春季》世界巡回演唱会2018香港站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">卢广仲《春季》世界巡回演唱会2018香港站</a></h3>
											<p class="lisa pos-time">时 间：2018.03.31-2018.04.01</p>
											<p class="lisa pos-venue">场 馆： [香港] 香港九龙湾国际展贸中心STAR HALL汇星</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">380~780</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85027 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvqfxfyaewuraaflyablwt4325_4.jpg" alt="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" title="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.01 19:50</p>
											<p class="lisa pos-venue">场 馆： [绍兴] 绍兴柯桥中国轻纺城体育中心(体育场)</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">380~1880</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85167 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvplqukanazbaacfftrx1ki323_4.jpg" alt="2018年詹姆斯布朗特真情挚爱广州演唱会" title="2018年詹姆斯布朗特真情挚爱广州演唱会"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018年詹姆斯布朗特真情挚爱广州演唱会</a></h3>
											<p class="lisa pos-time">时 间：2018.04.02 20:00</p>
											<p class="lisa pos-venue">场 馆： [广州] 广州中山纪念堂</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">380~1280</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84325 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvppscgancdgaab5ngpcgaq589_4.jpg" alt="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站" title="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会 上海站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.05 20:00</p>
											<p class="lisa pos-venue">场 馆： [上海] 上海Modern Sky LAB</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">480~880</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84473 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqvisoadxluaadmatla-7q147_4.jpg" alt="黎瑞恩《感恩有你》演唱会2018香港站" title="黎瑞恩《感恩有你》演唱会2018香港站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">黎瑞恩《感恩有你》演唱会2018香港站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.05-2018.04.06</p>
											<p class="lisa pos-venue">场 馆： [香港] 香港体育馆（红磡体育馆）</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">300~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85024 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<p class="icon-presell"></p><i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvppscgancdgaab5ngpcgaq589_4.jpg" alt="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" title="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.07 19:30</p>
											<p class="lisa pos-venue">场 馆： [北京] 北京M-Space场馆</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">480~880</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">预售中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85046 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<p class="icon-presell"></p>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqwhcuadwveaab81zm8r0e124_4.jpg" alt="2018咪咕音乐现场戴佩妮'过耳不忘'音乐会武汉站" title="2018咪咕音乐现场戴佩妮'过耳不忘'音乐会武汉站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018咪咕音乐现场戴佩妮'过耳不忘'音乐会武汉站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.08 19:30</p>
											<p class="lisa pos-venue">场 馆： [武汉] 湖北剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">280~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">预售中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85047 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvphzrkajddkaacx3hyctra616_4.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.13 19:30</p>
											<p class="lisa pos-venue">场 馆： [成都] 正火艺术中心1号馆</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">199~288</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84064 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqwh2aaccbfaactjw-dyho064_4.jpg" alt="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" title="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.13 20:00</p>
											<p class="lisa pos-venue">场 馆： [武汉] 武汉体育中心体育馆（沌口）</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">280~1280</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85049 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvqvlp-aum5_aact98tkygm352_4.jpg" alt="太极《交响狂热》演唱会2018香港站" title="太极《交响狂热》演唱会2018香港站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">太极《交响狂热》演唱会2018香港站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.13-2018.04.14</p>
											<p class="lisa pos-venue">场 馆： [香港] 香港体育馆（红磡体育馆）</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">300~780</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85029 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvpltryadhqyaacx7byqxha767_4.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-重庆站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-重庆站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-重庆站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.14 19:30</p>
											<p class="lisa pos-venue">场 馆： [重庆] 重庆文化宫大剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">100~380</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84341 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvp69iwaeqtyaadlfxsll-0920_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-烟台站" title="热斑《Heartless Thing》2018全国巡演-烟台站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-烟台站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.14 20:30</p>
											<p class="lisa pos-venue">场 馆： [烟台] 哈瓦那酒吧</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">60~80</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84811 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvp69iwaeqtyaadlfxsll-0920_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-青岛站" title="热斑《Heartless Thing》2018全国巡演-青岛站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-青岛站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.15 20:30</p>
											<p class="lisa pos-venue">场 馆： [青岛] Downtown Bar</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">80~100</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84812 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvnpnqyaxy1jaabyojpzd50405_4.jpg" alt="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-上海站 " title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-上海站 "></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-上海站 </a></h3>
											<p class="lisa pos-time">时 间：2018.04.18 19:30</p>
											<p class="lisa pos-venue">场 馆： [上海] 上海商城剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">180~380</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83554 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvp6-zoaayk4aadvuue3rhc606_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-上海站" title="热斑《Heartless Thing》2018全国巡演-上海站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-上海站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.18 20:30</p>
											<p class="lisa pos-venue">场 馆： [上海] 育音堂</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">80~100</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84813 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】keren Ann凯伦·安2018巡演-北京站" title="【万有音乐系】keren Ann凯伦·安2018巡演-北京站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】keren Ann凯伦·安2018巡演-北京站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.19 19:30</p>
											<p class="lisa pos-venue">场 馆： [北京] 北京剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">180~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84758 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvp7hpqaecwdaadvuue3rhc073_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-南京站" title="热斑《Heartless Thing》2018全国巡演-南京站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-南京站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.19 20:30</p>
											<p class="lisa pos-venue">场 馆： [南京] 欧拉艺术空间</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">80~100</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84814 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvnpnqyaxy1jaabyojpzd50405_4.jpg" alt="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-杭州站" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-杭州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-杭州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.20 19:30</p>
											<p class="lisa pos-venue">场 馆： [杭州] 浙江胜利剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">100~380</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83543 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-上海站" title="【万有音乐系】Keren Ann 2018 中国巡演-上海站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】Keren Ann 2018 中国巡演-上海站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.20 19:30</p>
											<p class="lisa pos-venue">场 馆： [上海] 上海商城剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">280~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84833 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvp6-zoaayk4aadvuue3rhc606_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-苏州站" title="热斑《Heartless Thing》2018全国巡演-苏州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-苏州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.20 20:30</p>
											<p class="lisa pos-venue">场 馆： [苏州] Wave Livehouse</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">60~80</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84815 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvnpnqyaxy1jaabyojpzd50405_4.jpg" alt="【万有音乐系】麦斯米兰 Sea of Silence 寂静如海 2018巡回演唱会" title="【万有音乐系】麦斯米兰 Sea of Silence 寂静如海 2018巡回演唱会"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】麦斯米兰 Sea of Silence 寂静如海 2018巡回演唱会</a></h3>
											<p class="lisa pos-time">时 间：2018.04.21 19:30</p>
											<p class="lisa pos-venue">场 馆： [宁波] 宁波逸夫剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">100~520</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=82189 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-无锡站" title="【万有音乐系】Keren Ann 2018 中国巡演-无锡站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】Keren Ann 2018 中国巡演-无锡站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.21 19:30</p>
											<p class="lisa pos-venue">场 馆： [无锡] 无锡人民大会堂</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">180~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span> <span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83556 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqemxualttsaac5jzmv22m947_4.jpg" alt="2018杨宗纬" 声声声声 "VOCAL巡唱Plus 长沙站" title="2018杨宗纬" 声声声声 "VOCAL巡唱Plus 长沙站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018杨宗纬"声声声声"VOCAL巡唱Plus 长沙站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.21 19:30</p>
											<p class="lisa pos-venue">场 馆： [长沙] 湖南国际会展中心</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">280~1280</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85153 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvpud2qazqtsaacj44mak5o099_3.jpg" alt="陈慧娴《Priscilla-ism》演唱会佛山站" title="陈慧娴《Priscilla-ism》演唱会佛山站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">陈慧娴《Priscilla-ism》演唱会佛山站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.21 20:00</p>
											<p class="lisa pos-venue">场 馆： [佛山] 佛山市岭南明珠体育馆</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">280~1280</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83553 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvphzryal2j2aacx3hyctra818_4.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-深圳站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-深圳站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-深圳站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.21 20:00</p>
											<p class="lisa pos-venue">场 馆： [深圳] A8音乐大厦二层A8Live </p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">200~220</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84062 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-杭州站" title="【万有音乐系】Keren Ann 2018 中国巡演-杭州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】Keren Ann 2018 中国巡演-杭州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.22 19:30</p>
											<p class="lisa pos-venue">场 馆： [杭州] 杭州剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">180~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83545 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvnpnqyaxy1jaabyojpzd50405_4.jpg" alt="【万有音乐系】麦斯米兰  " Sea of Silence " 寂静如海 2018巡回演唱会-石家庄站" title="【万有音乐系】麦斯米兰  " Sea of Silence " 寂静如海 2018巡回演唱会-石家庄站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】麦斯米兰  "Sea of Silence" 寂静如海 2018巡回演唱会-石家庄站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.22 19:30</p>
											<p class="lisa pos-venue">场 馆： [石家庄] 石家庄大剧院-大剧场</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">50~608</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span> <span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83613 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvphzqqaqdvnaacx3hyctra347_4.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-广州站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-广州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-广州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.22 20:00</p>
											<p class="lisa pos-venue">场 馆： [广州] 广州TU凸空间</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">200~280</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83939 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvp6-zoaayk4aadvuue3rhc606_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-宁波站" title="热斑《Heartless Thing》2018全国巡演-宁波站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-宁波站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.22 20:30</p>
											<p class="lisa pos-venue">场 馆： [宁波] 灯塔音乐现场</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">60~80</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84816 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvnpnqyaxy1jaabyojpzd50405_4.jpg" alt="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-合肥站" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-合肥站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-合肥站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.24 19:30</p>
											<p class="lisa pos-venue">场 馆： [合肥] 合肥瑶海大剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">50~380</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=83751 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvofwc6azj-iaanbkucm0cg673_4.png" alt="The Script 香港演唱会 2018香港站" title="The Script 香港演唱会 2018香港站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">The Script 香港演唱会 2018香港站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.24 20:00</p>
											<p class="lisa pos-venue">场 馆： [香港] 九龙湾国际展贸中心</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">580~880</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=82890 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raoknvqzq8eayl2jaaeawwyiu9a999_4.jpg" alt="2018贵阳文化惠民演出季·歌从草原来" title="2018贵阳文化惠民演出季·歌从草原来"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">2018贵阳文化惠民演出季·歌从草原来</a></h3>
											<p class="lisa pos-time">时 间：2018.04.25 20:00</p>
											<p class="lisa pos-venue">场 馆： [贵阳] 贵阳星光剧场</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">130~330</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85396 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvp6-zoaayk4aadvuue3rhc606_4.jpg" alt="热斑《Heartless Thing》2018全国巡演-杭州站" title="热斑《Heartless Thing》2018全国巡演-杭州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">热斑《Heartless Thing》2018全国巡演-杭州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.25 20:30</p>
											<p class="lisa pos-venue">场 馆： [杭州] 酒球会(9-Club)</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">80~100</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84817 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-重庆站" title="【万有音乐系】Keren Ann 2018 中国巡演-重庆站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】Keren Ann 2018 中国巡演-重庆站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.26 19:30</p>
											<p class="lisa pos-venue">场 馆： [重庆] 重庆国泰艺术中心剧院</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">180~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=85207 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvoo_cialjwhaabkrdgwhmo075_4.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-成都站" title="【万有音乐系】Keren Ann 2018 中国巡演-成都站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】Keren Ann 2018 中国巡演-成都站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.27 19:30</p>
											<p class="lisa pos-venue">场 馆： [成都] 锦城艺术宫</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">100~680</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<span class="tag"><i class="ico-tag-seat"></i>在线选座</span> <span class="tag"><i class="ico-tag-code"></i>积分兑换</span>
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
												</div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84014 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
									<div class="collect-item clearfix list-item">
										<div class="clit-img">
											<i class="logo_i"></i>
											<a class="pos-item-link" href="item.html" title="" target="_blank">
												<img class="pos-img" src="<%=path%>/resource/all_product/images/raokmvpqw7oawaimaacx3hyctra524_4.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-杭州站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-杭州站"></a>
										</div>
										<div class="clit-info">
											<h3><a class="pos-name pos-item-link" href="item.html" target="_blank" title="">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-杭州站</a></h3>
											<p class="lisa pos-time">时 间：2018.04.27 19:30</p>
											<p class="lisa pos-venue">场 馆： [杭州] MAO LIVEHOUSE</p>
											<p class="lisa pos-price">票 价：<span class="rmb">￥</span><span class="num pos-cost">200</span></p>
											<p class="support ">
												<div class="ct pos-support-icon">
													<!-- <span class="tag"><i class="ico-tag-integral"></i>先付先抢</span> -->
													<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span> </div>
											</p>
										</div>
										<div class="clit-btn ">
											<!-- <span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a><p class="pos-sell-status">售票中</p></span> -->
											<span><a target="_blank" class="btn bg-fe5d36 pos-item-link pos-buy-btn " href="item.html">立即购票</a></span>

											<span scid=84476 class="f-atten follow-btn"><a class="btn btn-simple" href="javascript:void(0)"><i class="yen">+</i>关注</a></span>

										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="news-right">
						<div class="bline show-news show-act">
							<h4 class="news-title">
                                    最新资讯
                            <div class="title-after">
                                <a class="more" href="" target="_blank" title="">更多</a>
                            </div>
                        </h4>
							<div class="news-info news-head-box">
								<a class="img-link" target="_blank" href="" title=""><img class="news-img" src="<%=path%>/resource/all_product/images/rAoKNVqzazKAVSs-AAFKmsIe2Sg377.png" alt=""></a>
								<div class="title">
									<a class="link" target="_blank" href="" title="">官方宣布 | 确认！原版音乐剧《猫》火爆加场，再登上海大剧院</a>
								</div>
							</div>
							<div class="news-inner ">
								<ul class="news-list news-list-box">
									<li class="item">
										<a class="link" target="_blank" href="" title="行走的邓丽君曲库，这才是追星的最高境界"><span class="bullets"></span>行走的邓丽君曲库，这才是追星的最高境界</a>
									</li>
									<li class="item">
										<a class="link" target="_blank" href="" title="谈性色变？看了这个节目才发现，有些家长还不如孩子"><span class="bullets"></span>谈性色变？看了这个节目才发现，有些家长还不如孩子</a>
									</li>
									<li class="item">
										<a class="link" target="_blank" href="" title="《孩子说了算》：打开两代人相处模式的新大门"><span class="bullets"></span>《孩子说了算》：打开两代人相处模式的新大门</a>
									</li>
									<li class="item">
										<a class="link" target="_blank" href="" title="日本超人气女子摇滚乐队SCANDAL2018亚洲巡演——大陆首演"><span class="bullets"></span>日本超人气女子摇滚乐队SCANDAL2018亚洲巡演——大陆首演</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="bline show-news show-act">
							<h4 class="news-title">
                                    精彩专题
                            <div class="title-after">
                                <a class="more" href="" target="_blank" title="">更多</a>
                            </div>
                        </h4>
							<div class="news-info topic-head-box">
								<a class="img-link" href="" target="_blank" title=""><img class="news-img" src="<%=path%>/resource/all_product/images/rAoKNVqrlI2AMUygAABO9wp_FHA848.jpg" alt=""></a>
								<div class="title">
									<a class="link" href="" title="" target="_blank">橙剧场演出季</a>
								</div>
							</div>
							<div class="news-inner ">
								<ul class="news-list topic-list-box">
									<li class="item">
										<a class="link" href="" target="_blank" title="陈慧娴演唱会佛山站"><span class="bullets"></span>陈慧娴演唱会佛山站</a>
									</li>
									<li class="item">
										<a class="link" href="" target="_blank" title="北京惠民文化消费电子券"><span class="bullets"></span>北京惠民文化消费电子券</a>
									</li>
									<li class="item">
										<a class="link" href="" target="_blank" title="青橙日每月25日享福利"><span class="bullets"></span>青橙日每月25日享福利</a>
									</li>
									<li class="item">
										<a class="link" href="" target="_blank" title="城市戏剧节，666元极致乐享通票"><span class="bullets"></span>城市戏剧节，666元极致乐享通票</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="clear:both"></div>
		<!-- /footer-->
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
			<script src='<%=path%>/resource/all_product/js/stat_10.js' language='JavaScript' charset='utf-8'></script>

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
		<script type="text/javascript" src="<%=path%>/resource/all_product/js/sea_10.js" id="seajsnode"></script>
		<script type="text/javascript" src="<%=path%>/resource/all_product/js/modules-config_10.js"></script>

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
								advertInfo += 'src="<%=path%>/resource/all_product/images/85d2f3cda9c142f8963c54657732987f.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
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
								html += '<img src="<%=path%>/resource/all_product/images/85d2f3cda9c142f8963c54657732987f.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
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
	var selectedCity = '0',
		getNewsUrl = 'http://search.juooo.com/Index/getNews',
		getTopicUrl = 'http://search.juooo.com/Index/getTopic',
		getRecentShowUrl = 'http://search.juooo.com/Index/getRecentShow';

	seajs.use(['jquery', 'juo', 'dateFormat', 'login', 'tabsCommon', 'index'], function($, juo, dateFormat, login) {
		//搜索页加载模式
		var searchLoadMode = '';

		switch(searchLoadMode) {
			case 'ajax':
				$('.js-search-filter-wrap a').each(function() {
					$(this).attr('href_src', $(this).attr('href'));
					$(this).attr('href', 'javascript:;');
				});

				$('.js-search-filter-wrap a').click(function() {
					if(moreBusy) {
						return;
					}
					var listStyle = $('.list-box').attr('liststyle');
					moreBusy = true;
					//$('.list-box').after('<div class="loading-part">加载中...</div>');

					var model = $('.list-item:first').clone();
					switch(listStyle) {
						case '1':
							$('.list-box ul').html('<div class="loading-part">加载中...</div>');
							break;

						case '2':
							$('.list-box .listprod ').html('<div class="loading-part">加载中...</div>');
							break;
					}

					$.ajax({
						type: 'POST',
						url: '/' + $(this).attr('href_src'),
						dataType: 'json',
						data: {
							page: 1,
							ajax: 'yes'
						},
						success: function(result) {
							moreBusy = false;
							$('.list-box .loading-part').remove();
							page = 2;
							var list = result.data.list,
								html = '';
							switch(listStyle) {
								//大图展示
								case '1':
									var listDom = listItemHtmlFactory(result.data, listStyle, model);
									$('.list-box ul').html(listDom);
									break;
									//列表展示
								case '2':

									var listDom = listItemHtmlFactory(result.data, listStyle, model);
									$('.list-box .listprod ').html(listDom);

									//$('.list-box').append(html);
									break;
							}

							if(result.data.total <= (page - 1) * 40) {
								$('#checkmore').hide();
							}
						},
						error: function() {
							moreBusy = false;
							$('.list-box .loading-part').remove();
						}
					});
				});
				break;

			default:

				break;
		}

		var imgBaseUrl = 'http://image.juooo.com';
		var itemBaseUrl = 'http://item.juooo.com/';
		var followBusy = false;
		$('#tab_box2').on('click', '.follow-btn', function() {
			if(followBusy) {
				return;
			}
			var scid = $(this).attr('scid');
			var _this = this;
			followBusy = true;
			$.ajax({
				url: "http://item.juooo.com/Index/followSche",
				dataType: 'jsonp',
				data: {
					scid: scid
				},
				jsonp: 'callback',
				success: function(result) {
					followBusy = false;
					if(result.code == 'login') {
						login.init();
						return;
					}

					if(result.code == 'ok') {
						if($(_this).hasClass('is-following')) {
							$(_this).removeClass('is-following')
							$(_this).children().html('<i class="yen">+</i>关注');
						} else {
							$(_this).addClass('is-following')
							$(_this).children().html('已关注');
						}
						//$(_this).toggleClass('on');                            
					}
				},
				timeout: 3000
			});

		});

		var moreBusy = false;
		var page = 2;
		$('#checkMoreBtn').click(function() {
			if(moreBusy) {
				return;
			}
			var listStyle = $('.list-box').attr('liststyle');
			var _this = this;
			moreBusy = true;
			$('.list-box').after('<div class="loading-part">加载中...</div>');
			$.ajax({
				type: 'POST',
				url: "",
				dataType: 'json',
				data: {
					page: page,
					ajax: 'yes'
				},
				success: function(result) {
					moreBusy = false;
					$('.list-box').nextAll('.loading-part').remove();
					page++;
					var list = result.data.list,
						html = '';
					switch(listStyle) {

						case '1': //大图展示
							var listDom = listItemHtmlFactory(result.data, listStyle);
							$('.list-box ul').append(listDom);

							break;

						case '2': //列表展示
							var listDom = listItemHtmlFactory(result.data, listStyle);
							$('.list-box .listprod ').append(listDom);

							break;
					}

					if(result.data.total <= (page - 1) * 40) {
						$('#checkmore').hide();
					}
				},
				error: function() {
					moreBusy = false;
					$('.list-box').nextAll('.loading-part').remove();
				}
			});

		});

		function listItemHtmlFactory(data, listStyle, model) {
			var list = data.list,
				$tempJqDomWraper = $('<div></div>');

			switch(listStyle) {

				case '1': //大图展示
					for(var k in list) {
						//var listItem = ( model ? ($('<div></div>').html(model).children().clone()) : $('.list-item:first').clone() );
						var listItem = (model ? $(model).clone() : $('.list-item:first').clone());

						listItem.find('.pos-name').html((list[k].city_name ? '[' + list[k].city_name + '] ' : '') + (list[k].high_light ? list[k].high_light.replace(/\\/g, "") : list[k].schedular_name.replace(/\\/g, "")));
						listItem.find('.pos-img').attr('src', imgBaseUrl + list[k].pic);
						listItem.find('.pos-img').attr('alt', list[k].schedular_name.replace(/\\/g, ""));
						listItem.find('.pos-img').attr('title', list[k].schedular_name);
						//listItem.find('.pos-time').text(dateFormat.dateFormat('Y.m.d H:i',list[k].show_time));
						listItem.find('.pos-time').text(list[k].format_show_time);
						listItem.find('.pos-item-link').attr('href', itemBaseUrl + list[k].id);

						listItem.find('.pos-item-link .icon-presell,.pos-item-link .icon-presell,.pos-item-link .logo_i').remove();

						//                    switch(parseInt(list[k].sell_status))
						//                    {
						//                        case 0:
						//                            listItem.find('.pos-item-link').prepend('<p class="icon-destine"></p>');
						//                        break;
						//
						//                        case 2:
						//                            listItem.find('.pos-item-link').prepend('<p class="icon-presell"></p>');
						//                        break;
						//
						//                        case 1:
						//                            if(list[k].method == '1' && list[k].cate_parent_id == '38')
						//                            {
						//                                listItem.find('.pos-item-link').prepend('<i class="logo_i ju_icon"></i>');
						//                            }
						//                            else if (juo.isHostIcon(list[k].method))
						//                            {
						//                                listItem.find('.pos-item-link').prepend('<i class="logo_i"></i>');
						//                            }
						//                            
						//                        break;
						//                    }

						listItem.find('.pos-item-link').prepend(list[k].ico);
						if(parseFloat(list[k].min_price) == 0 && parseFloat(list[k].max_price) == 0) {
							listItem.find('.price').text('票价待定');
						} else if(parseFloat(list[k].min_price) != parseFloat(list[k].max_price)) {
							listItem.find('.price').html('<span class="rmb">¥</span><span class="num pos-cost">' + parseFloat(list[k].min_price) + '</span>起');
						} else {
							listItem.find('.price').html('<span class="rmb">¥</span><span class="num pos-cost">' + parseFloat(list[k].min_price) + '</span>');
						}

						$tempJqDomWraper.append(listItem);
					}

					break;

				case '2': //列表展示
					for(var k in list) {

						var listItem = (model ? $(model).clone() : $('.list-item:first').clone());
						listItem.find('.pos-name').html(list[k].high_light ? list[k].high_light.replace(/\\/g, "") : list[k].schedular_name.replace(/\\/g, ""));
						listItem.find('.pos-img').attr('src', imgBaseUrl + list[k].pic);
						listItem.find('.pos-img').attr('alt', list[k].schedular_name);
						listItem.find('.pos-img').attr('title', list[k].schedular_name.replace(/\\/g, ""));
						listItem.find('.pos-venue').html(list[k].high_light_v ? '场 馆：' + " [" + list[k].city_name + "] " + list[k].high_light_v.replace(/\\/g, "") : '场 馆：' + " [" + list[k].city_name + "] " + list[k].v_name);
						//listItem.find('.pos-time').text('时 间：'+dateFormat.dateFormat('Y.m.d H:i',list[k].show_time));
						listItem.find('.pos-time').text('时 间：' + list[k].format_show_time);
						listItem.find('.pos-item-link').attr('href', itemBaseUrl + list[k].id);

						if(parseFloat(list[k].min_price) == parseFloat(list[k].max_price) && parseFloat(list[k].min_price) == 0) {
							listItem.find('.pos-price').html('票价：票价待定');
						} else {
							if(parseFloat(list[k].min_price) == parseFloat(list[k].max_price)) {

								listItem.find('.pos-price').html('票 价：<span class="rmb">￥</span><span class="num pos-cost">' + parseFloat(list[k].min_price) + '</span>');
							} else {
								listItem.find('.pos-price').html('票 价：<span class="rmb">￥</span><span class="num pos-cost">' + parseFloat(list[k].min_price) + '~' + parseFloat(list[k].max_price) + '</span>');
							}

						}

						listItem.find('.clit-img .icon-presell,.clit-img .icon-presell,.clit-img .logo_i').remove();

						//                    switch(parseInt(list[k].sell_status))
						//                    {
						//                        case 0:
						//                            listItem.find('.clit-img').prepend('<p class="icon-destine"></p>');
						//                        break;
						//
						//                        case 2:
						//                            listItem.find('.clit-img').prepend('<p class="icon-presell"></p>');
						//                        break;
						//
						//                        case 1:
						//                            if (list[k].method == '1' && list[k].cate_parent_id == '38')
						//                            {
						//                                listItem.find('.clit-img').prepend('<i class="logo_i ju_icon"></i>');
						//                            }
						//                            else if (juo.isHostIcon(list[k].method))
						//                            {
						//                                listItem.find('.clit-img').prepend('<i class="logo_i"></i>');
						//                            }
						//                            
						//                        break;
						//                    }

						listItem.find('.clit-img').prepend(list[k].ico);

						if(data.followData[list[k].id]) {
							listItem.find('.follow-btn').addClass('is-following').attr('scid', list[k].id);
							listItem.find('.follow-btn a').text('已关注');
						} else {
							listItem.find('.follow-btn').removeClass('is-following').attr('scid', list[k].id);
							listItem.find('.follow-btn a').html('<i class="yen">+</i>关注')
						}

						listItem.find('.pos-support-icon').html('');

						if(list[k].ticket_url) {
							listItem.find('.pos-support-icon').append('<span class="tag"><i class="ico-tag-seat"></i>在线选座</span>');
						}

						//if (list[k].)
						//{
						//    listItem.find('.pos-support-icon').append('<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>');
						//}

						if(list[k].e_ticket == 1) {
							listItem.find('.pos-support-icon').append('<span class="tag"><i class="ico-tag-prepaid"></i>电子票</span>');
						}
						if(list[k].is_student_certification == 1) {
							listItem.find('.pos-support-icon').append('<span class="tag"><i class="ico-tag-student"></i>学生票</span>');
						}

						if(list[k].is_part_scores_exchange == 1) {
							listItem.find('.pos-support-icon').append('<span class="tag"><i class="ico-tag-code"></i>积分兑换</span>');
						}

						if(list[k].is_abolish == 1) {
							listItem.find('.clit-btn').addClass('overdue');
							listItem.find('.pos-buy-btn').addClass('btn-ban');
							listItem.find('.pos-buy-btn').text('演出取消');
						} else if(list[k].show_time < data.time) {
							listItem.find('.clit-btn').addClass('overdue');
							listItem.find('.pos-buy-btn').addClass('btn-ban');
							listItem.find('.pos-sell-status').text('已售罄');
							listItem.find('.pos-buy-btn').text('立即购票');
						} else {
							listItem.find('.clit-btn').removeClass('overdue');
							listItem.find('.pos-buy-btn').removeClass('btn-ban');
							listItem.find('.pos-buy-btn').text('立即购票');
							listItem.find('.pos-sell-status').text(data.sellStatusConf[data.sellStatusData[list[k].id]]);
						}
						$tempJqDomWraper.append(listItem);
					}
					break;
			}

			return $tempJqDomWraper.html();
		}

		//大家都在找
		$.ajax({
			type: 'POST',
			url: 'http://search.juooo.com/Index/getEveryoneLookFor',
			dataType: 'json',
			data: {
				city: selectedCity
			},
			success: function(result) {
				if(result.code == 'ok') {
					var html = everyoneLookForItemFactory(result.data);
					$('.everyone-look-for-box').html(html);
				}

			}
		});

		function everyoneLookForItemFactory(list) {
			var html = '';
			n = 1;
			for(var k in list) {
				var mark = '';
				if(n == 1) {
					mark = 'active';
				}

				html += '<li class="hide ' + mark + '" id="box' + n + '">' +
					'<a href="' + itemDomain + list[k].id + '" title="" target="_blank" class="img"><img alt="' + list[k].schedular_name + '" title="' + list[k].schedular_name + '" src="' + imgDomain + list[k].pic + '" delayLoad="' + imgDomain + list[k].pic + '">' +
					//    '<p>['+list[k].c_name+'] '+list[k].schedular_name+'</p>'+
					'<p>' + list[k].schedular_name.replace(/\\/g, "") + '</p>' +
					'</a>' +
					'<div class="info">' +
					'<p>时　间：' + dateFormat.dateFormat('Y.m.d H:i', list[k].show_time) + ' </p>' +
					(list[k].v_name ? '<p>场　馆：<a class="c-666" href="' + venueDomain + 'show/' + list[k].venue_id + '" target=_blank >' + list[k].v_name + '</a></p>' : '') +
					'<p>票　价：<span class="rmb">¥</span><span class="num">' + parseFloat(list[k].low_price) + '</span><span class="qi"> 起</span></p>' +
					'</div>' +
					'</li>';
				n++;

			}
			return html;
		}

		//最新资讯
		$.ajax({
			type: 'POST',
			url: getNewsUrl,
			dataType: 'json',
			data: {
				city: selectedCity
			},
			success: function(result) {
				if(result.code == 'ok') {
					var html = newsItemFactory(result.data);
					$('.news-head-box').html(html.head);
					$('.news-list-box').html(html.body);
				}

			}
		});

		function newsItemFactory(list) {
			var head = '';
			n = 1,
				body = '';
			for(var k in list) {
				if(n == 1) {
					head = '<a class="img-link" target="_blank" href="' + homeDomain + 'news/show/' + list[k].id + '" title="">' +
						'<img class="news-img" src="' + imgDomain + list[k].image + '" alt="">' +
						'</a>' +
						'<div class="title">' +
						'<a class="link" target="_blank" href="' + homeDomain + 'news/show/' + list[k].id + '" title="" >' + list[k].title + '</a>' +
						'</div>';
				} else {
					body += '<li class="item"><a class="link"  target="_blank" href="' + homeDomain + 'news/show/' + list[k].id + '"  title="' + list[k].title + '"><span class="bullets"></span>' + list[k].title + '</a></li>';
				}

				n++;

			}
			return {
				head: head,
				body: body
			};
		}

		//精彩专题
		$.ajax({
			type: 'POST',
			url: getTopicUrl,
			dataType: 'json',
			data: {
				city: selectedCity
			},
			success: function(result) {
				if(result.code == 'ok') {
					var html = topicItemFactory(result.data);
					$('.topic-head-box').html(html.head);
					$('.topic-list-box').html(html.body);
				}

			}
		});

		function topicItemFactory(list) {
			var head = '';
			n = 1,
				body = '';
			for(var k in list) {
				if(n == 1) {
					head = '<a class="img-link" href="' + list[k].url + '" target="_blank" title="">' +
						'<img class="news-img" src="' + imgDomain + list[k].pic + '" alt="">' +
						'</a>' +
						'<div class="title">' +
						'<a class="link" href="' + list[k].url + '" title="" target="_blank">' + list[k].name + '</a>' +
						'</div>';
				} else {
					body += '<li class="item"><a class="link" href="' + list[k].url + '" target="_blank" title="' + list[k].name + '"><span class="bullets"></span>' + list[k].name + '</a></li>';
				}

				n++;

			}
			return {
				head: head,
				body: body
			};
		}

		//近期演出推荐
		(function() {
			return;
			$.ajax({
				type: 'POST',
				url: getRecentShowUrl,
				dataType: 'json',
				data: {
					city: selectedCity
				},
				success: function(result) {
					if(result.code == 'ok') {
						var html = recentShowItemFactory(result.data);
						$('.recent-show-list-box').html(html);
						$('.recent-show-list-box-wrap').show();
					}

				}
			});
		}());

		function recentShowItemFactory(list) {
			var html = '';
			n = 1;
			for(var k in list) {
				var mark = '';
				if(n == 1) {
					mark = 'active';
				}

				html += '<li class="bt0">' +
					'<a href="' + itemDomain + list[k].id + '" target="_blank" title=""><img title="" original="" src="' + imgDomain + list[k].pic + '" delayLoad="' + imgDomain + list[k].pic + '" style="display: inline-block;">' +
					'<p></p>' +
					'</a>' +
					'<a class="news-title-link" href="' + itemDomain + list[k].id + '" target="_blank">' + list[k].schedular_name.replace(/\\/g, "") + '</a>' +
					'<div class="time">时间：' + dateFormat.dateFormat('Y.m.d H:i', list[k].show_time) + '</div>' +
					'</li>';
				n++;

			}
			return html;
		}

		function htmlspecialchars_decode(str) {
			str = str.replace(/&amp;/g, '&');
			str = str.replace(/&lt;/g, '<');
			str = str.replace(/&gt;/g, '>');
			str = str.replace(/&quot;/g, "''");
			str = str.replace(/&#039;/g, "'");
			return str;
		}

		// 点击更多  显示所有城市
		$('#morecity').on('click', function() {
			var $this = $(this);

			if($this.hasClass('js-fold')) {
				$('.city-options-box span').eq(22).nextAll().not('#morecity').toggleClass('hide');
				$this.removeClass('js-fold').text('»').attr('title', '更多城市');
			} else {
				$('.city-options-box span').eq(22).nextAll().not('#morecity').toggleClass('hide');
				$this.addClass('js-fold').text('«').attr('title', '收起城市列表');
			}
		});

	})
</script>
</body>

</html>
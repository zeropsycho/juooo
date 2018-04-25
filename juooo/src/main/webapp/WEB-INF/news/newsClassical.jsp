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
    <link rel="dns-prefetch" href="//basic.juooo.com/" />
    <title>最新古典音乐演出资讯_最新古典音乐娱乐新闻事件报道_古典音乐明星娱乐新闻_聚橙网</title>
    <meta name="keywords" content="古典音乐资讯,古典音乐演出信息,古典音乐娱乐新闻事件,古典音乐娱乐新闻报道,古典音乐明星娱乐新闻" />
    <meta name="description" content="聚橙网提供最新的古典音乐演出资讯，最新古典音乐娱乐新闻事件报道，古典音乐明星娱乐新闻，古典音乐演出预告门票订票等信息。" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/resource/news/css/base.css">
    <link rel="stylesheet" href="<%=path%>/resource/news/css/base_1.css">
            <link rel="stylesheet" type="text/css" href="<%=path%>/resource/news/css/list.css">
        
    
    <script>
        var searchSuggestionUrl = '/',
            itemDomain          = '/',
            imgDomain           = '/',
            homeDomain          = '/',
            starDomain          = '/',
            venueDomain         = '/',
            searchDomain        = '/',
            buyDomain           = '/',
            cardDomain          = '/',
            activityDomain      = '/',
            scoresDomain        = '/',
            aroundDomain        = '/',
            topicDomain         = '/',
            passportDomain      = '/',
            basicDomain         = '/',
            clickDomain         = '/',
            systemVar           = {
                'host_icon_arr' : [1],
        };
    </script>
    <script>
        if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
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
<body style = "">

<!-- Head头部 -->
<div class="header two-header" style="padding-bottom: 0;">
    <!-- top头部 -->
    <!--顶部广告位-->
<div class="top-advert">
    
</div>
<style>
    .top-header .head .dropdown-tab .qr-code.language{height: auto;padding:0;width: 95px}
    .s_language{width: 95px;text-align: center;color: #666;}
    .top-header .head .dropdown-tab .qr-code.language li{
        height: 40px;line-height: 40px;text-align: center;background: #f5f5f5;border-top:1px solid #ebebeb;
    }
    .top-header .head .dropdown-tab .qr-code.language li a{display:block;}

     .top-header .head .dropdown-tab .qr-code.language li:hover a{
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
                    <a href="register.html" class="nav-link">注册</a>
                </div>
            </div>
            <!-- 未登录 end -->
            <!-- 已登录 -->
            <div class="ds-inlineb hide" id="js-has-login">
                <div class="nav-items">
                    <span class="c9">你好,</span>
                    <a href="myjuooo.html" target="_blank" class="nav-link no-border-left" id="js-get-username">用户名</a>
                    <a href="#"><span class="c9 vip-level" id="js-get-level" style="background-image: url('<%=path%>/resource/news/images/raoknvmxb0kachvkaaarxyznjhk783.png');"></span></a>
                </div>
                <div class="nav-items">
                    <a href="login.html" class="nav-link c9">退出</a>
                </div>
            </div>
            <!-- 已登录 end -->

            <div class="nav-items">
                <a href="myorderlist.html" class="nav-link" target="_blank">我的订单</a>
            </div>
            <div class="nav-items hover-color js-net">
                <a href="javascript:;" class="nav-link">网站导航<i class="bg-icon net-nav-icon"></i></a>
                <ul class="net-list js-net-list">
                    <li class="net-item">
                        <div class="title">频道</div>
                       <div class="channel">
                            <a href="f" class="new-items" target="_blank" title="聚特惠">聚特惠</a>
                            <a href="..\run\activity.html" class="new-items" target="_blank" title="学生专区">学生专区</a>
                            <a href="..\run\card.html" class="new-items" target="_blank" title="欢聚橙卡">欢聚橙卡</a>
                            <a href="..\run\calendars.html" class="new-items" target="_blank" title="演出日历">演出日历</a>
                            <a href="..\run\star.html" class="new-items" target="_blank" title="明星库">明星库</a>
                            <a href="..\news\newslist.html" class="new-items" target="_blank" title="资讯库">资讯库</a>
                            <a href="..\run\perform.html" class="new-items" target="_blank" title="剧目库">剧目库</a>
                            <a href="..\run\venue.html" class="new-items" target="_blank" title="场馆库">场馆库</a>
                            <a href="..\run\scores.html" class="new-items" target="_blank" title="积分商城">积分商城</a>
                            <a href="..\run\zhuanti.html" class="new-items" target="_blank" title="精彩专题">精彩专题</a>
                        </div>
                    </li>
                    <li class="net-item sline"></li>
                    <li class="net-item">
                        <div class="title">品类站</div>
                        <div class="kind">
                                                                                                <a href="http://www.juooo.com/popular" class="new-items" target="_blank">流行音乐</a>
                                                                                                                               <a href="..\product_sub_categories\classical.html" class="new-items" target="_blank">古典音乐</a>
                                                                                                                                <a href="..\product_sub_categories\drama.html" class="new-items" target="_blank">舞台剧</a>
                                                                                                                                <a href="..\product_sub_categories\kids.html" class="new-items" target="_blank">儿童亲子</a>
                                                                                                                                <a href="..\product_sub_categories\musical.html" class="new-items" target="_blank">音乐剧</a>
                                                                                    </div>
                    </li>
                    <li class="net-item sline"></li>
                    <li class="net-item">
                        <div class="title">城市站</div>
                        <div class="city">
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">深圳</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">广州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">上海</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">北京</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">成都</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">杭州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">重庆</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">长沙</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">武汉</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">苏州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">南宁</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">大连</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">石家庄</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">连云港</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">宁波</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">镇江</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">天津</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">西安</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">昆明</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">南京</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">福州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">泉州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">厦门</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">合肥</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">沈阳</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">无锡</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">贵阳</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">常州</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">东莞</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">福建</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">哈尔滨</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">宜昌</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">清远</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">河源</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">盐城</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">商丘</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">安顺</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">龙岩</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">罗城</a>
                                                            <a href="..\all_product\dance.html" class="new-items" target="_blank">乌兰浩特</a>
                                                    </div>
                    </li>
                </ul>
            </div>
            <div class="nav-items width94 js-phone">
                <a href="javascript:;" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
                <div class="phone-code js-phone-code"><img src="picture/mobile.png" alt=""></div>
            </div>
        </div>
        <input type="hidden" id="js-city-url" value="..\juooo\index.html">
        <input type="hidden" id="js-retakepass-url" value="http://passport.juooo.com/User/retakepass">
        <input type="hidden" id="js-qq-url" value="#">
        <input type="hidden" id="js-weixin-url" value="#">
        <input type="hidden" id="js-sina-url" value="#">
        <input type="hidden" id="js-register-url" value="register.html">
        <input type="hidden" id="js-login-url" value="http://passport.juooo.com/user/makelogin">
        <input type="hidden" id="js-alipay-url" value="">
    </div>
</div>
<!-- 顶部栏 end -->    <!-- top头部 End-->
    <!-- 顶部广告 -->
        <div class="w1200 nav-banner-wrap js-nav-banner">
        <a href="http://search.juooo.com/?k=Cats" class="nav-banner">
            <span class="close js-nav-close"><i class="bg-icon close-icon"></i>关闭</span>
            <img src="<%=path%>/resource/news/images/raoknvpv08yapzijaab2npswgzq863.jpg" alt="">
        </a>
    </div>
        <!-- 顶部广告 end -->
    <!-- 头部 -->
    <div class="new-header nav-shadow">
        <div class="content-box w1200">
            <a href="..\juooo\index.html"><div class="logo-box"></div></a>
            <div class="city-box">
                <div class="choose-city js-choose-city">
                    <span class="city-text">全国</span><i class="bg-icon tri"></i>
                    <div class="allcity-box js-allcity-box" id="js-get-header-city">

                    </div>
                </div>
                <div class="command-city"><a href="..\juooo\index.html" class="command-link" id="home-rec-city"><i class="bg-icon place"></i>推荐全国站</a></div>
            </div>
            <div class="search-box search">
                <div class="search-bar">
                    <div class="search-input"><input class="js-search search-box" name="q" id="search_keywords" searchAction='/' autocomplete="off" type="text" placeholder="请输入演出、艺人、场馆名称…" x-webkit-speech="" x-webkit-grammar="builtin:translate"></div>
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
                                                <a href="..\run\scores.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raokmvo4as6apatsaaad-nuerxk400.png);"></i>
                    <p class="module-text">积分商城</p>
                </a>
                                                                <a href="..\run\card.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raoknvpdesiapduxaaacbvjf9_q310.png);"></i>
                    <p class="module-text">欢聚橙卡</p>
                </a>
                                                                <a href="..\run\activity.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raoknvo4atiafs20aaadtbeyuba106.png);"></i>
                    <p class="module-text">聚特惠</p>
                </a>
                                                                <a href="..\run\Student-index.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raokmvo4aucasjuoaaagqpuj61c127.png);"></i>
                    <p class="module-text">学生专区</p>
                </a>
                                                                <a href="..\run\zhuanti.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raoknvo4auiaf7p3aaadcka4fcq252.png);"></i>
                    <p class="module-text">精彩专题</p>
                </a>
                                                                <a href="..\run\calendars.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/news/images/raokmvo4avcaevpeaaaeezoxq4k876.png);"></i>
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
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qduaspnaaaaeto5fqlu795_2.png);"></i>
										<span class="kind-text">演唱会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/music.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qfeacmibaaaefux5vuu038_2.png);"></i>
										<span class="kind-text">音乐会</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/drama.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qg6aac9iaaaedcanr-c618_2.png);"></i>
										<span class="kind-text">话剧歌剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/child.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qiaafuhtaaag30h30mi241_2.png);"></i>
										<span class="kind-text">儿童亲子</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/musical.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qj2ahhqhaaagybomok8111_2.png);"></i>
										<span class="kind-text">音乐剧</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/variety.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qmkabw9saaagsgbqhxe942_2.png);"></i>
										<span class="kind-text">戏曲综艺</span>
										<i class="bg-icon more-icon"></i>
									</a>
									<a href="../All_product/exhibition.html" class="kind-link js-kind-link" target="_blank">
										<i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/news/images/raokmvn7qn2aeg2uaaaeesj_ld4456_2.png);"></i>
										<span class="kind-text">展览</span>
										<i class="bg-icon more-icon"></i>
									</a>

								</div>
								<div class="right-detail js-right-detail">
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qewahyweaaavxkqyorc553_1.jpg)">
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
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qgcaoj55aaaqu6vnjnw831_2.jpg)">
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
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qhaafro2aaafkohcdbo611_2.jpg)">
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
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qiyaehz1aaavub-rf-u430_2.jpg)">
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
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raokmvn759eap0m-aaas0qyo8la429_2.jpg)">
										<div class="col">
											<a href="../All_product/musical.html" class="details-link" target="_blank">
												<span class="line"></span> 音乐剧
												<!--<span>(20)</span>-->
											</a>
										</div>
									</div>
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qm6auwpcaaadmaz5k2s662_2.jpg)">
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
									<div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/news/images/raoknvn7qoaae51-aaahavn4ayw172_2.jpg)">
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
								<img src="<%=path%>/resource/news/images/raoknvpb_02auf1faajhopvn-jm883_2.gif" alt="" class="entry-img">
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

<script type="text/javascript" src="<%=path%>/resource/news/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/news/js/modules-config.js"></script>
<script type="text/javascript">
    //获取全站LOGO
    seajs.use(['jquery','title','juo'], function($) {
        var logoSymbol = 'JLOGO';
        getLogoAdvert(logoSymbol);

        function getLogoAdvert(symbol)
        {
            $.ajax({
                type:'POST',
                url:"https://m.juooo.com/Advert/getAdMap",
                dataType:'jsonp',
                data:{symbol : symbol, ajax_type : 'jsonp'},
                jsonp:'callback',
                async:false,
                success:function(result)
                {
                    if(result.code == 1 && result.data)
                    {
                        var advertInfo  = '<div class="logo"><a href="'+result.data.url+'"><img src="<%=path%>/resource/news/images/a93b27117d244319b5a54df672ca3c91.gif' + result.data.pic + '" alt="'+ result.data.ad_name + '" title="'+ result.data.ad_name + '"></a></div>';
                    }
                    else
                    {
                        var advertInfo =  '<div class="logo"><a href="http://www.juooo.com/"><img src="<%=path%>/resource/news/images/juooo-logo.png"></a></div>';
                    }
                    $("#js-head-logo .dropdown-tab").before(advertInfo);
                }
            });
        }
    });
</script>

  <div class="w1204 g-news mt20">
  	<div class="news">
  		<div class="menu-tab">
  			  				<a  href="http://www.juooo.com/news/newslist/">全部资讯</a>
  			  				<a  href="http://www.juooo.com/news/newslist/35">流行音乐</a>
  			  				<a class="active" href="http://www.juooo.com/news/newslist/36">古典音乐</a>
  			  				<a  href="http://www.juooo.com/news/newslist/37">舞台剧</a>
  			  				<a  href="http://www.juooo.com/news/newslist/38">儿童亲子</a>
  			  		</div>
  		  			<div class="news-box">
	  			<div class="item">
	  				<div class="date"><sup>3</sup><sub>2018</sub></div>
	  				<div class="box">
		  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25883" target="_blank">徐惠新、周红文化评弹鉴赏会2018演出行程</a></h3>
		  						<div class="time">发表时间：2018.03.01</div>
		  						<div class="content">
		  							徐惠新、周红是评弹界的“佼佼者”。无论是将传统舞台与多媒体、精致的红木家具、花道、香道的结合，还是与西洋乐器、中国南音的对话，抑或是邀请沪上著名文化主持人淳子、配音演员曹雷一起加入演出，两位评弹表演艺术家都不断尝试为“评弹”这一传统的曲艺形式，寻找新的表现形式和新观众。		  							<a href="http://www.juooo.com/news/show/25883"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25882" target="_blank">琴语—克罗地亚小提琴手风琴二重奏2018演出安排</a></h3>
		  						<div class="time">发表时间：2018.03.01</div>
		  						<div class="content">
		  							马雅与克罗地亚著名小提琴家TonkoNinid曾合作二重奏演出。克罗地亚著名的作曲家都曾为他专门谱写作品。1991年马雅开始担任了GSZlatkoBalokvid手风琴乐团的指挥并为乐团取得了辉煌的成绩获得了一系列重要的国内国际奖项。其中1997年5月29日在联合国教科文组织巴黎大厦的演出为他和乐团赢得了赞誉。		  							<a href="http://www.juooo.com/news/show/25882"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					  						  				  				</div>
	  			</div>
  			</div>
  		  			<div class="news-box">
	  			<div class="item">
	  				<div class="date"><sup>1</sup><sub>2018</sub></div>
	  				<div class="box">
		  					  						  					  						  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25791" target="_blank">七朵归来，《不一样的我》2018深圳演唱会4月惊艳开演</a></h3>
		  						<div class="time">发表时间：2018.01.19</div>
		  						<div class="content">
		  							七朵组合不同于国内大多数韩式女团，她们坚持中国古风，其作品充满古典韵味，反映中国女子的柔美，挖掘正在复苏的中国文化，她们试图用传统音乐和舞蹈，诠释一个年轻人的中国。		  							<a href="http://www.juooo.com/news/show/25791"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25759" target="_blank">2018深圳音乐厅音乐会演出安排 音乐厅演出票价</a></h3>
		  						<div class="time">发表时间：2018.01.15</div>
		  						<div class="content">
		  							聚橙网为大家整理了2018深圳音乐厅音乐会演出剧目，时间及票价安排，喜欢现场音乐会的观众，可以先看看自己喜欢的乐团是否在深圳音乐厅进行2018 年的演出吧！		  							<a href="http://www.juooo.com/news/show/25759"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25753" target="_blank">2018动漫主题音乐会《龙猫和他的小伙伴》系列巡演正在进行中！</a></h3>
		  						<div class="time">发表时间：2018.01.11</div>
		  						<div class="content">
		  							森林里藏匿着一种神奇的生物，它的名字叫多多洛，也叫龙猫。2018年《龙猫和他的小伙伴》动漫主题音乐会正在各地巡演中，赶快加入这波回忆音乐会吧~
		  							<a href="http://www.juooo.com/news/show/25753"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25745" target="_blank">“丝路狂想”马克西姆2018跨界钢琴演奏会行程安排（附曲目单）</a></h3>
		  						<div class="time">发表时间：2018.01.11</div>
		  						<div class="content">
		  							2018年，马克西姆将带着他的作品来到中国，优雅的古典音乐和现代的时尚元素相结合，极具张力和感染力的表演必将为我们带来绝佳的体验！		  							<a href="http://www.juooo.com/news/show/25745"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25741" target="_blank">2018年3月“千与千寻”宫崎骏·久石让动漫主题音乐会登录广州~</a></h3>
		  						<div class="time">发表时间：2018.01.10</div>
		  						<div class="content">
		  							“我寻到的光明，一直就和我在一起。”宫崎骏说也许是Always with me这首歌，给了他千寻的故事。2018年3月10日，“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会将在广州郭兰英剧院开幕，让我们重归浪漫之声吧。		  							<a href="http://www.juooo.com/news/show/25741"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25695" target="_blank">肖邦传奇—邓泰山钢琴独奏音乐会2018演出安排 附曲目单</a></h3>
		  						<div class="time">发表时间：2018.01.02</div>
		  						<div class="content">
		  							可以用高雅和精确定义的一场演出，真正遇到了一名技术娴熟的钢琴家，一名键盘上的诗人。邓泰山2018音乐会演出安排...		  							<a href="http://www.juooo.com/news/show/25695"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					  						  					  						  					  						  				  				</div>
	  			</div>
  			</div>
  		  			<div class="news-box">
	  			<div class="item">
	  				<div class="date"><sup>12</sup><sub>2017</sub></div>
	  				<div class="box">
		  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25642" target="_blank">欢庆的时刻-新年交响音乐会 深圳迎新年</a></h3>
		  						<div class="time">发表时间：2017.12.20</div>
		  						<div class="content">
		  							深圳城市爱乐乐团是一个年轻的乐团，她顺应社会潮流而生，以传播高雅音乐、推动社会文明为使命，为深圳美好的明天奏响辉煌的乐章。		  							<a href="http://www.juooo.com/news/show/25642"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25584" target="_blank">2017-2018维也纳之声交响乐团新年音乐会 维也纳施特劳斯管弦乐团音乐会安排</a></h3>
		  						<div class="time">发表时间：2017.12.11</div>
		  						<div class="content">
		  							维也纳施特劳斯管弦乐团新年音乐会，血统纯正的施特劳斯乐团经典回归，维也纳施特劳斯管弦乐团新年音乐会		  							<a href="http://www.juooo.com/news/show/25584"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25527" target="_blank">她是李云迪小师妹，经常被拿来与郎朗做比较</a></h3>
		  						<div class="time">发表时间：2017.12.06</div>
		  						<div class="content">
		  							有人赞誉她为中国的钢琴公主，但她本人却并不喜欢被贴上这个标签。她说："我从不觉得自己是公主，因为公主通常给人 '花瓶'的印象，这不是我想要的标签，如果非要贴标签把我和其他人分开，我希望可以是有思想的、有人性的、有血有肉的。"		  							<a href="http://www.juooo.com/news/show/25527"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  					  						  					<div class="info">
		  						<h3><a href="http://www.juooo.com/news/show/25526" target="_blank">2017年12月深圳音乐会演出信息 音乐会门票订购</a></h3>
		  						<div class="time">发表时间：2017.12.06</div>
		  						<div class="content">
		  							2017年的最后一个月，带上自己的男/女朋友走进剧院，听一场高雅高水准的音乐剧吧！聚橙网为大家整理了2017年12月深圳音乐会演出时间，地点及订票安排，快来看看有没有你喜欢的吧！		  							<a href="http://www.juooo.com/news/show/25526"> [查看更多]</a>
		  						</div>
		  					</div>
				  				  				  				</div>
	  			</div>
  			</div>
  		  	<div class="pages">
  		   <a href='' class='cur'>1</a><a href='/news/newslist/36?page=2'>2</a><a href='/news/newslist/36?page=3'>3</a><a href='/news/newslist/36?page=4'>4</a><a href='/news/newslist/36?page=5'>5</a>      <a class='page-t'>...</a><a href='/news/newslist/36?page=198'>198</a><a href='/news/newslist/36?page=2' class='pages-next'><i class='icon-arrow'></i></a>      </div>
  	</div>
    <div class="news-right">
    	    	<div class="bline news-week">
    		<h4 class="mt">近期演出推荐</h4>
    		<ul>
    			    				<li class="bt0">
    					<a target="_blank" href="http://item.juooo.com/83912">
							<span><img src="<%=path%>/resource/news/images/raokmvpwwg6ac1jaaacudez-bx4498.jpg" alt="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北京站	" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北京站	"></span>
							<p>【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演-北</p>
						</a>
						<div class="time">时间：2018.04.11 19:30</div>
					</li>
    			    				<li class="bt0">
    					<a target="_blank" href="http://item.juooo.com/84445">
							<span><img src="<%=path%>/resource/news/images/raokmvi2su2afpbyaageqsqstte513.jpg" alt="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站" title="【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站"></span>
							<p>【万有音乐系】“千与千寻”宫崎骏·久石让动漫视听系列主题音乐会 南京站</p>
						</a>
						<div class="time">时间：2018.04.13 15:00</div>
					</li>
    			    				<li class="bt0">
    					<a target="_blank" href="http://item.juooo.com/84446">
							<span><img src="<%=path%>/resource/news/images/raoknvonwysadp9saaci7j_njes435.jpg" alt="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站"></span>
							<p>【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会 南京站</p>
						</a>
						<div class="time">时间：2018.04.13 19:30</div>
					</li>
    			            </ul>
    	</div>
    	    </div>
  </div>
	<div class="new-footer">
		<div class="wrap1">
			<div class="s1 w1200">
				<div class="con con1">
					<div class="title1">帮助中心</div>
					<div class="help-list">
						<a href="http://www.juooo.com/help/51" class="help-items ml0" target="_blank">新手指南</a>
						<a href="http://www.juooo.com/help/67" class="help-items" target="_blank">支付方式</a>
						<a href="http://www.juooo.com/help/78" class="help-items" target="_blank">售后服务</a>
						<a href="http://www.juooo.com/help/61" class="help-items ml0" target="_blank">购票指南</a>
						<a href="http://www.juooo.com/help/72" class="help-items" target="_blank">配送方式</a>
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
							<img src="<%=path%>/resource/news/images/ticket.png" alt="">
						</div>
						<p class="code-text">聚橙票务</p>
					</div>
					<div class="box1">
						<div class="img-box">
							<img src="<%=path%>/resource/news/images/show.png" alt="">
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
<script src='<%=path%>/resource/news/js/stat.js' language='JavaScript' charset='gb2312'></script>

<!-- 品友 访客统计  新版-->
<script type='text/javascript'>
(function(w,d,s,l,a){
    w._CommandName_=l;w[l]=w[l]||function(){(w[l].q=w[l].q||[]).push(arguments);
	w[l].track = function(){(w[l].q[w[l].q.length-1].t=[]).push(arguments)};return w[l]},w[l].a=a,w[l].l=1*new Date();
	var c = d.createElement(s);c.async=1;
	c.src='//fm.ipinyou.com/j/a.js';
	var h = d.getElementsByTagName(s)[0];h.parentNode.insertBefore(c, h);
})(window,document,'script','py','wn84T..2SKw9KcG0NuT559gULJ5aX');
py('event','viewPage');
</script>

<!-- AG网盟 -->
<script> 
    (function(a,b,c,d,e){ 
        var s= b.createElement(c);s.async=1;s.src='//t.agrantsem.com/tg.js?ang_tj=true&c='+d+'&t='+e; 
        var r= b.getElementsByTagName(c)[0];r.parentNode.insertBefore(s,r); 
    })(window,document,'script','AG_400767_XIVB','1'); 
</script>

<script>
	var _jc = _jc || [];
	_jc.push([ '_setAccount', 'juooo' ]);
	_jc.push([ '_cid', '0' ]);
	_jc.push([ '_ocn', '' ]);
	_jc.push([ '_occid', '0' ]);
	_jc.push([ '_ocpu', '0' ]);
	_jc.push([ '_ocpn', '0' ]);
	(function() {
		var ma = document.createElement('script');
		ma.type = 'text/javascript';
		ma.async = true;
		ma.src = 'https://click.juooo.com/'+ 'public/Home/web/<%=path%>/resource/news/js/ma.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ma, s);
	})();
</script>
</div>

<!--返回头部-->
<script type="text/javascript" src="<%=path%>/resource/news/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/news/js/modules-config.js"></script>


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
	_MEIQIA('withoutBtn');//开启无按钮模式
	_MEIQIA('getPanelVisibility', function(visibility){
		if (visibility === 'visible') {
			console.log('聊天窗口处于显示状态');
		} else {
			console.log('聊天窗口处于隐藏状态');
		}
	});
	_MEIQIA('init');//初始化

</script>

<script>
    // $(function(){
    seajs.use(['jquery', 'swiperNew','mouseWheel','adaptivebg','title','juo'], function($) {
        /**
         * mark:导航，头部，底部交互
         * author：wancui
         * modify：LiuWei
         * time: 2017/8/4
         */

        //网站导航
        $('.js-net').on('mouseenter',function(){
            $(this).addClass('active');
            $('.js-net-list').addClass('active');
        }).on('mouseleave',function(){
            $(this).removeClass('active');
            $('.js-net-list').removeClass('active');
        });

        //二维码显示
        $('.js-phone').on('mouseenter',function(){
            $(this).addClass('active');
            $('.js-phone-code').addClass('active');
        }).on('mouseleave',function(){
            $(this).removeClass('active');
            $('.js-phone-code').removeClass('active');
        });

        //关闭广告
        $('.js-nav-close').on('click',function(e){
            e.preventDefault();
            $('.js-nav-banner').hide();
        });

        // 选择城市
        $('.js-choose-city').on('mouseenter',function(){
            $('.js-allcity-box').addClass('active');
        }).on('mouseleave',function(){
            $('.js-allcity-box').removeClass('active');
        });

        //选择城市“关闭”按钮
        $('.js-close-city').on('click',function(){
            $('.js-allcity-box').removeClass('active');
        });

        //搜索框(ie8)
        $('.js-search').on('input propertychange focus',function(){
            $('.js-search-result').addClass('active');
        }).on('blur',function(){
            $('.js-search-result').removeClass('active');
        });

        //自定义模块(非index页)
        $('.js-module-more').on('mouseenter',function(){
            $(this).addClass('active');
            $('.js-module-box').addClass('active');
        });
        $('.js-module-box').on('mouseleave',function(){
            $(this).removeClass('active');
            $('.js-module-more').removeClass('active');
        });

        //头部 侧边导航
        $('.js-kind-link').on('mouseenter',function(){
            $('.js-kind-link').removeClass('active');
            $(this).addClass('active');
            $('.js-right-detail').addClass('active');
            $('.js-kind-details').removeClass('active');
            $('.js-kind-details').eq($(this).index()).addClass('active');
        });
        $('.js-kind-list').on('mouseleave',function(){
            $('.js-right-detail,.js-kind-details,.js-kind-link').removeClass('active');
        });

        //头部侧边导航(非首页)
        $('.js-nav-item').on('mouseenter',function(){
            $(this).find('.js-nav-link').addClass('active');
            $(this).find('.js-kind-list').addClass('active');
        }).on('mouseleave',function(){
            $(this).find('.js-nav-link').removeClass('active');
            $(this).find('.js-kind-list').removeClass('active');
        });

        //banner轮播图
        var slideFlag = true;
        var bannerSwiper = new Swiper('.banner-container',{
            pagination: '.pagination',
            wrapperClass: 'banner-wrapper',//包裹层
            slideClass: 'banner-item',//滑块设置
            mode: 'horizontal',
            initialSlide : 0,
            loop: true,
            autoplay : 6000,//自动播放间隔时间
            speed: 800,
            grabCursor: true,
            paginationClickable: true,
            autoplayDisableOnInteraction : false,
            onSlideChangeStart: function(swiper){
                var curSlide = swiper.activeSlide();
                var bgColor = $(curSlide).attr('data-bg-color');
                console.log(bgColor)
                $('.main-banner').css('background-color',bgColor);
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
            onSlideChangeEnd: function(){
                slideFlag = true;
            }
        });

        $('.banner-prev').on('click', function(e){
            e.preventDefault();
            if(slideFlag){
                bannerSwiper.swipePrev();
                slideFlag = false;
            }
        });

        $('.banner-next').on('click', function(e){
            e.preventDefault();
            if(slideFlag){
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
        if($('.main-banner').length > 0){
            //var initBgColor = $('.main-banner .banner-item').eq(0).attr('data-bg-color');
            var initBgColor = $('.main-banner .banner-item.swiper-slide-active').attr('data-bg-color');
            console.log(initBgColor)
            $('.main-banner').css('background-color',initBgColor);
            if($('.main-banner .default-img').length > 0){
                $('.main-banner').css('background-color',$('.main-banner .default-img').attr('data-bg-color'));
            }
        }
        /* 头部js end */

        //返回头部
        $('#js-top').on('click',function(){
            $('body,html').animate({scrollTop:0});
        });
//          美洽
        $('#juo-meiqia').on('click', function(){
            _MEIQIA('showPanel');//打开美洽聊天窗
        });

        //获取顶部广告信息
        var  cityId = "";
        var  cateId = "";
        var  scid   = "";
        var  topAdSymbol = "JAT";
        getSiteTopAdvertInfo(cateId,cityId,scid,topAdSymbol);

        //获取全站右侧浮标广告位
        var allSiteRightSymbol = 'JRF';
        getSiteRightAdvertInfo(allSiteRightSymbol);

        function getSiteTopAdvertInfo(cateId,cityId,scid,symbol)
        {
            $.ajax({
                type:'POST',
                url:"https://m.juooo.com/Advert/getAdMap",
                dataType:'jsonp',
                data:
                    {
                        cateId    : cateId,
                        cityId    : cityId,
                        scid      : scid,
                        symbol    : symbol,
                        ajax_type : 'jsonp',
                    },
                jsonp:'callback',
                async:false,
                success:function(result)
                {
                    if(result.code == 1 && result.data)
                    {
                        var advertInfo = '';
                        advertInfo += '<a target="_blank" style="text-align:center;display: block;"';
                        advertInfo += 'href="' + result.data.url + '">';
                        advertInfo += '<img style="width:1200px;heihgt:80px;"';
                        advertInfo += 'src="<%=path%>/resource/news/images/a93b27117d244319b5a54df672ca3c91.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
                        advertInfo += '</a>';
                        $(".top-advert").append(advertInfo);
                    }
                }
            });
        }


        function getSiteRightAdvertInfo(symbol)
        {
            $.ajax({
                type:'POST',
                url:"https://m.juooo.com/Advert/getAdMap",
                dataType:'jsonp',
                data:{symbol : symbol, ajax_type : 'jsonp'},
                jsonp:'callback',
                async:false,
                success:function(result)
                {
                    if(result.code == 1 && result.data)
                    {
                        var html  = '<a class="xjj"';
                        html += 'href="' + result.data.url + '" target="_blank">';
                        html += '<img src="<%=path%>/resource/news/images/a93b27117d244319b5a54df672ca3c91.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
                        html += '</a>';
                        $('.js-weixin-icon').before(html);
                    }
                }
            });
        }



        //热门明星
        var starSwiper = new Swiper('#star1',{
            pagination: '.sp1',//翻页器
            wrapperClass: 'star-wrapper',//包裹层
            slideClass: 'star-item',//滑块设置
            mode: 'horizontal',
            autoplay : 6000,//自动播放间隔时间
            loop: true,
            grabCursor: true,
            paginationClickable: true
        });

        var starSwiper2 = new Swiper('#star2',{
            pagination: '.sp2',//翻页器
            wrapperClass: 'star-wrapper',//包裹层
            slideClass: 'star-item',//滑块设置
            mode: 'horizontal',
            autoplay : 6000,//自动播放间隔时间
            loop: true,
            grabCursor: true,
            paginationClickable: true
        });

        //热门评论
        var reviewSwiper = new Swiper('#review1',{
            pagination: '.rp1',//翻页器
            wrapperClass: 'review-wrapper',//包裹层
            slideClass: 'review-item',//滑块设置
            mode: 'horizontal',
            autoplay : 6000,//自动播放间隔时间
            loop: true,
            grabCursor: true,
            paginationClickable: true
        });


        //其他城市悬停
        $('.oc-btn,.oc-wrap').on('mouseenter',function(){
            $('.oc-wrap').css('display','block');
        }).on('mouseleave',function(){
            $('.oc-wrap').css('display','none');
        })

        /**
         * mark:判断浏览器的方法
         * author: LiuWei
         * time: 2017/8/2
         */
        function browserType(){
            var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
            var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
            // var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
            var isIE=window.ActiveXObject || "ActiveXObject" in window
            // var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
            var isEdge = userAgent.indexOf("Edge") > -1; //判断是否IE的Edge浏览器
            var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
            var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器
            var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1&&!isEdge; //判断Chrome浏览器

            if (isIE){
                var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
                reIE.test(userAgent);
                var fIEVersion = parseFloat(RegExp["$1"]);
                if(userAgent.indexOf('MSIE 6.0')!=-1){
                    return "IE6";
                }else if(fIEVersion == 7) {
                    return "IE7";
                }else if(fIEVersion == 8) {
                    return "IE8";
                }else if(fIEVersion == 9) {
                    return "IE9";
                }else if(fIEVersion == 10) {
                    return "IE10";
                }else if(userAgent.toLowerCase().match(/rv:([\d.]+)\) like gecko/)){
                    return "IE11";
                }else{
                    return "0"
                }//IE版本过低
            }//isIE end

            if (isFF) { return "FF";}
            if (isOpera) { return "Opera";}
            if (isSafari) { return "Safari";}
            if (isChrome) { return "Chrome";}
            if (isEdge) { return "Edge";}
        }


        //返回顶部
        $('.item-top').on('click',function(){
            $('body,html').animate({scrollTop:0},600);
        })


        //悬浮到swiper的分页器上模拟点击事件
        /*		$('.swiper-pagination-switch').on('mouseenter',function(e){
                    $(this).trigger('click');
                })*/



    });
</script>


</body>
</html></body>
<script type="text/javascript">
	seajs.use(['jquery','juo','index'], function($,juo) {

	})
	</script>
</html>

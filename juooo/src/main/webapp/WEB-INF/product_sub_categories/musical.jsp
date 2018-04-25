	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%String path = request.getContextPath(); %><%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
	<html lang="zh-CN">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	    <meta name="renderer" content="webkit">
	    <link rel="dns-prefetch" href="//basic.juooo.com/" />
	    <title>音乐剧演出_儿童音乐剧_音乐剧场_舞台剧演出信息_歌剧门票订购_聚橙网</title>
	    <meta name="keywords" content="音乐剧,舞剧,舞台剧,歌剧,音乐剧门票,音乐剧演出,儿童音乐剧,音乐剧门票订购" />
	    <meta name="description" content="聚橙网提供音乐剧演出门票订票服务，包括音乐剧演出门票订票和预订，及时更新最新的音乐剧演出时间和票价，订票电话4001858666。" />
	    <link rel="stylesheet" type="text/css" href="<%=path%>/resource/product_sub_categories/css/base.css">
	    <link rel="stylesheet" href="<%=path%>/resource/product_sub_categories/css/base_1.css">
	            <link rel="stylesheet" type="text/css" href="<%=path%>/resource/product_sub_categories/css/base-second.css">
	                <link rel="stylesheet" type="text/css" href="<%=path%>/resource/product_sub_categories/css/category.css">
	                <link rel="stylesheet" type="text/css" href="<%=path%>/resource/product_sub_categories/css/index-new.css">
	        
	    
	    <script>
	        var searchSuggestionUrl = '../all_product/Index/suggestion',
	            itemDomain          = 'http://item.juooo.com/',
	            imgDomain           = 'http://image.juooo.com',
	            homeDomain          = '../juooo/index.html',
	            starDomain          = '../run/star.html',
	            venueDomain         = '../run/venue.html',
	            searchDomain        = '../all_product/',
	            buyDomain           = 'http://buy.juooo.com/',
	            cardDomain          = '../run/card.html',
	            activityDomain      = '../run/activity.html',
	            scoresDomain        = '../run/scores.html',
	            aroundDomain        = 'http://around.juooo.com/',
	            topicDomain         = '../run/zhuanti.html',
	            passportDomain      = 'http://passport.juooo.com/',
	            basicDomain         = '//basic.juooo.com/',
	            clickDomain         = 'https://click.juooo.com/',
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
	<div class="header " style="padding-bottom: 0;">
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
	                    <a href="../user/myjuooo.html" target="_blank" class="nav-link no-border-left" id="js-get-username">用户名</a>
	                    <a href="http://myjuooo.juooo.com/User/level"><span class="c9 vip-level" id="js-get-level" style="background-image: url('');"></span></a>
	                </div>
	                <div class="nav-items">
	                    <a href="http://passport.juooo.com/User/logout" class="nav-link c9">退出</a>
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
	                            <a href="../run/activity.htmlStudent/index" class="new-items" target="_blank" title="学生专区">学生专区</a>
	                            <a href="../run/card.html" class="new-items" target="_blank" title="欢聚橙卡">欢聚橙卡</a>
	                            <a href="../run/calendars.html" class="new-items" target="_blank" title="演出日历">演出日历</a>
	                            <a href="../run/star.html" class="new-items" target="_blank" title="明星库">明星库</a>
	                            <a href="#" class="new-items" target="_blank" title="资讯库">资讯库</a>
	                            <a href="../run/perform.html" class="new-items" target="_blank" title="剧目库">剧目库</a>
	                            <a href="../run/venue.html" class="new-items" target="_blank" title="场馆库">场馆库</a>
	                            <a href="../run/scores.html" class="new-items" target="_blank" title="积分商城">积分商城</a>
	                            <a href="../run/zhuanti.html" class="new-items" target="_blank" title="精彩专题">精彩专题</a>
	                        </div>
	                    </li>
	                    <li class="net-item sline"></li>
	                    <li class="net-item">
	                        <div class="title">品类站</div>
	                        <div class="kind">
	                                                                                                <a href="popular.html" class="new-items" target="_blank">流行音乐</a>
	                                                                                                                                <a href="classical.html" class="new-items" target="_blank">古典音乐</a>
	                                                                                                                                <a href="drama.html" class="new-items" target="_blank">舞台剧</a>
	                                                                                                                                <a href="kids.html" class="new-items" target="_blank">儿童亲子</a>
	                                                                                                                                <a href="musical.html" class="new-items" target="_blank">音乐剧</a>
	                                                                                    </div>
	                    </li>
	                    <li class="net-item sline"></li>
	                    <!--<li class="net-item">
	                        <div class="title">城市站</div>
	                        <div class="city">
	                                                            <a href="../juooo/index.htmlsz" class="new-items" target="_blank">深圳</a>
	                                                            <a href="../juooo/index.htmlgz" class="new-items" target="_blank">广州</a>
	                                                            <a href="../juooo/index.htmlsh" class="new-items" target="_blank">上海</a>
	                                                            <a href="../juooo/index.htmlbj" class="new-items" target="_blank">北京</a>
	                                                            <a href="../juooo/index.htmlcd" class="new-items" target="_blank">成都</a>
	                                                            <a href="../juooo/index.htmlhz" class="new-items" target="_blank">杭州</a>
	                                                            <a href="../juooo/index.htmlcq" class="new-items" target="_blank">重庆</a>
	                                                            <a href="../juooo/index.htmlcs" class="new-items" target="_blank">长沙</a>
	                                                            <a href="../juooo/index.htmlwh" class="new-items" target="_blank">武汉</a>
	                                                            <a href="../all_product/?city=25" class="new-items" target="_blank">苏州</a>
	                                                            <a href="../all_product/?city=27" class="new-items" target="_blank">南宁</a>
	                                                            <a href="../all_product/?city=31" class="new-items" target="_blank">大连</a>
	                                                            <a href="../juooo/index.htmlsjz" class="new-items" target="_blank">石家庄</a>
	                                                            <a href="../all_product/?city=39" class="new-items" target="_blank">连云港</a>
	                                                            <a href="../all_product/?city=41" class="new-items" target="_blank">宁波</a>
	                                                            <a href="../all_product/?city=48" class="new-items" target="_blank">镇江</a>
	                                                            <a href="../all_product/?city=50" class="new-items" target="_blank">天津</a>
	                                                            <a href="../juooo/index.htmlxa" class="new-items" target="_blank">西安</a>
	                                                            <a href="../juooo/index.htmlkm" class="new-items" target="_blank">昆明</a>
	                                                            <a href="../juooo/index.htmlnj" class="new-items" target="_blank">南京</a>
	                                                            <a href="../all_product/?city=61" class="new-items" target="_blank">福州</a>
	                                                            <a href="../all_product/?city=62" class="new-items" target="_blank">泉州</a>
	                                                            <a href="../all_product/?city=63" class="new-items" target="_blank">厦门</a>
	                                                            <a href="../all_product/?city=10001" class="new-items" target="_blank">合肥</a>
	                                                            <a href="../all_product/?city=10004" class="new-items" target="_blank">沈阳</a>
	                                                            <a href="../juooo/index.htmlwx" class="new-items" target="_blank">无锡</a>
	                                                            <a href="../all_product/?city=10008" class="new-items" target="_blank">贵阳</a>
	                                                            <a href="../all_product/?city=10011" class="new-items" target="_blank">常州</a>
	                                                            <a href="../all_product/?city=10019" class="new-items" target="_blank">东莞</a>
	                                                            <a href="../juooo/index.htmlfj" class="new-items" target="_blank">福建</a>
	                                                            <a href="../all_product/?city=10027" class="new-items" target="_blank">哈尔滨</a>
	                                                            <a href="../all_product/?city=10073" class="new-items" target="_blank">宜昌</a>
	                                                            <a href="../all_product/?city=10080" class="new-items" target="_blank">清远</a>
	                                                            <a href="../all_product/?city=10090" class="new-items" target="_blank">河源</a>
	                                                            <a href="../all_product/?city=10097" class="new-items" target="_blank">盐城</a>
	                                                            <a href="../all_product/?city=10116" class="new-items" target="_blank">商丘</a>
	                                                            <a href="../all_product/?city=10137" class="new-items" target="_blank">安顺</a>
	                                                            <a href="../all_product/?city=10145" class="new-items" target="_blank">龙岩</a>
	                                                            <a href="../all_product/?city=10148" class="new-items" target="_blank">罗城</a>
	                                                            <a href="../all_product/?city=10149" class="new-items" target="_blank">乌兰浩特</a>
	                                                            <a href="../all_product/?city=10151" class="new-items" target="_blank">随州</a>
	                                                    </div>
	                    </li>-->
	                </ul>
	            </div>
	            <div class="nav-items width94 js-phone">
	                <a href="javascript:;" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
	                <div class="phone-code js-phone-code"><img src="<%=path%>/resource/product_sub_categories/images/mobile.png" alt=""></div>
	            </div>
	        </div>
			<input type="hidden" id="js-city-url" value="http://www.juooo.com/">
	        <input type="hidden" id="js-retakepass-url" value="http://passport.juooo.com/User/retakepass">
	        <input type="hidden" id="js-qq-url" value="http://passport.juooo.com/Oauth/login?type=qq">
	        <input type="hidden" id="js-weixin-url" value="http://passport.juooo.com/Oauth/login?type=weixin">
	        <input type="hidden" id="js-sina-url" value="http://passport.juooo.com/Oauth/login?type=sina">
	        <input type="hidden" id="js-register-url" value="../user/register.html">
	        <input type="hidden" id="js-login-url" value="http://passport.juooo.com/user/makelogin">
	        <input type="hidden" id="js-alipay-url" value="">
	    </div>
	</div>
	<!-- 顶部栏 end -->    <!-- top头部 End-->
	    <!-- 顶部广告 -->
	        <div class="w1200 nav-banner-wrap js-nav-banner">
	        <a href="../all_product/?k=Cats" class="nav-banner">
	            <span class="close js-nav-close"><i class="bg-icon close-icon"></i>关闭</span>
	            <img src="<%=path%>/resource/product_sub_categories/images/raoknvpv08yapzijaab2npswgzq863.jpg" alt="">
	        </a>
	    </div>
	        <!-- 顶部广告 end -->
	    <!-- 头部 -->
	    <div class="new-header nav-shadow">
	        <div class="content-box w1200">
	            <a href="../juooo/index.html"><div class="logo-box"></div></a>
	            <div class="city-box">
	                <div class="choose-city js-choose-city">
	                    <span class="city-text">全国</span><i class="bg-icon tri"></i>
	                    <div class="allcity-box js-allcity-box" id="js-get-header-city">

	                    </div>
	                </div>
	                <div class="command-city"><a href="../juooo/index.html" class="command-link" id="home-rec-city"><i class="bg-icon place"></i>推荐全国站</a></div>
	            </div>
	            <div class="search-box search">
	                <div class="search-bar">
	                    <div class="search-input"><input class="js-search search-box" name="q" id="search_keywords" searchAction='../all_product/' autocomplete="off" type="text" placeholder="请输入演出、艺人、场馆名称…" x-webkit-speech="" x-webkit-grammar="builtin:translate"></div>
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
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvo4as6apatsaaad-nuerxk400.png);"></i>
	                    <p class="module-text">积分商城</p>
	                </a>
	                                                                <a href="../run/card.html" class="module-link">
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvpdesiapduxaaacbvjf9_q310.png);"></i>
	                    <p class="module-text">欢聚橙卡</p>
	                </a>
	                                                                <a href="../run/activity.html" class="module-link">
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvo4atiafs20aaadtbeyuba106.png);"></i>
	                    <p class="module-text">聚特惠</p>
	                </a>
	                                                                <a href="../run/activity.htmlStudent/index" class="module-link">
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvo4aucasjuoaaagqpuj61c127.png);"></i>
	                    <p class="module-text">学生专区</p>
	                </a>
	                                                                <a href="../run/zhuanti.html" class="module-link">
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvo4auiaf7p3aaadcka4fcq252.png);"></i>
	                    <p class="module-text">精彩专题</p>
	                </a>
	                                                                <a href="../run/calendars.html" class="module-link">
	                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvo4avcaevpeaaaeezoxq4k876.png);"></i>
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
	                                                                                    <a href="../all_product/vocalConcert.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qduaspnaaaaeto5fqlu795.png);"></i>
	                                <span class="kind-text">演唱会</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/music.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qfeacmibaaaefux5vuu038.png);"></i>
	                                <span class="kind-text">音乐会</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/drama.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qg6aac9iaaaedcanr-c618.png);"></i>
	                                <span class="kind-text">话剧歌剧</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/child.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qiaafuhtaaag30h30mi241.png);"></i>
	                                <span class="kind-text">儿童亲子</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/musical.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qj2ahhqhaaagybomok8111.png);"></i>
	                                <span class="kind-text">音乐剧</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/variety.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qmkabw9saaagsgbqhxe942.png);"></i>
	                                <span class="kind-text">戏曲综艺</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                    <a href="../all_product/exhibition.html" class="kind-link js-kind-link" target="_blank">
	                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn7qn2aeg2uaaaeesj_ld4456.png);"></i>
	                                <span class="kind-text">展览</span>
	                                <i class="bg-icon more-icon"></i>
	                            </a>
	                                                                                </div>
	                        <div class="right-detail js-right-detail">
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qewahyweaaavxkqyorc553.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/vocalConcert.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        流行                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/vocalConcert.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        摇滚                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/vocalConcert.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        民谣                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/vocalConcert.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        民族                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/vocalConcert.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        其他                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qgcaoj55aaaqu6vnjnw831.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/music.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        交响                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/music.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        独奏                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/music.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        其他                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qhaafro2aaafkohcdbo611.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/drama.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        话剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/drama.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        歌剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/drama.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        歌舞剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/drama.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        其他                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qiyaehz1aaavub-rf-u430.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/child.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        儿童剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/child.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        亲子活动                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/child.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        其他                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raokmvn759eap0m-aaas0qyo8la429.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/musical.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        音乐剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qm6auwpcaaadmaz5k2s662.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        京剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        昆曲                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        越剧                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        相声小品                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        综艺                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                                                                                                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        马戏杂技                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/variety.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        其他                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/product_sub_categories/images/raoknvn7qoaae51-aaahavn4ayw172.jpg)">
	                                                                                                                                <div class="col">
	                                                                        <a href="../all_product/exhibition.html" class="details-link" target="_blank">
	                                        <span class="line"></span>
	                                        展览                                        <!--<span>(20)</span>-->
	                                    </a>
	                                                                    </div>
	                                                                                                                            </div>
	                                                                                </div>
	                    </div>
	                    <!-- 侧边导航 -->
	                </li>
	                                                <li class="nav-item ">
	                    <a href="../product_sub_categories/popular.html"   class="nav-link " title="流行音乐" target="_blank">流行音乐</a>
	                </li>
	                                                                <li class="nav-item ">
	                    <a href="../product_sub_categories/drama.html"   class="nav-link " title="古典音乐" target="_blank">古典音乐</a>
	                </li>
	                                                                <li class="nav-item ">
	                    <a href="../product_sub_categories/drama.html"   class="nav-link " title="舞台剧" target="_blank">舞台剧</a>
	                </li>
	                                                                <li class="nav-item ">
	                    <a href="../product_sub_categories/kids.html"   class="nav-link " title="儿童亲子" target="_blank">儿童亲子</a>
	                </li>
	                                                                <li class="nav-item active">
	                    <a href="../product_sub_categories/musical.html"   class="nav-link " title="音乐剧" target="_blank">音乐剧</a>
	                </li>
	                                                <!-- 右侧年卡入口 -->
	                                <li class="nav-item entry-li">
	                    <a href="../run/card.html" class="nav-link entry" target="_blank" title="">
	                        <img src="<%=path%>/resource/product_sub_categories/images/raoknvpb_02auf1faajhopvn-jm883.gif" alt="" class="entry-img">
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

	<script type="text/javascript" src="<%=path%>/resource/product_sub_categories/js/sea.js" id="seajsnode"></script>
	<script type="text/javascript" src="<%=path%>/resource/product_sub_categories/js/modules-config.js"></script>
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
	                        var advertInfo  = '<div class="logo"><a href="'+result.data.url+'"><img src="<%=path%>/resource/product_sub_categories/images/42933b027775471c819cb1de4989bd75.gif' + result.data.pic + '" alt="'+ result.data.ad_name + '" title="'+ result.data.ad_name + '"></a></div>';
	                    }
	                    else
	                    {
	                        var advertInfo =  '<div class="logo"><a href="../juooo/index.html"><img src="<%=path%>/resource/product_sub_categories/images/juooo-logo.png"></a></div>';
	                    }
	                    $("#js-head-logo .dropdown-tab").before(advertInfo);
	                }
	            });
	        }
	    });
	</script>
	<!-- Head头部 End-->

	<style>
	    .listprod ul li a .img_banner{
	        height: 268px;
	        width: 100%;
	        display: block;
	        overflow: hidden;
	    }
	    .pcity-left{
	        padding-top: 10px;
	        width: 960px;
	    }
	    .city-right{
	        background: #fff;
	        margin-top: 30px;
	        width: 235px;
	        height: 393px;
	    }
	    .media-list-vertical .media-title{
	        padding-bottom: 10px;
	    }
	    .media-list-vertical .media-text .block-list .item{
	        margin-bottom: 10px;
	    }
	</style>


	<body>
	    <!-- 主内容部分 -->
	    <div class="">
	        <!-- 轮播图-->
	            <div class="w-default">
	     <!-- banner图切换 -->
	     <div class="show-banner">
	         <div class="swipe slide" id="swipe-example" data-ride="swipe">
	             <!-- Indicators -->
	             <ol class="swipe-indicators">
	             	            	            		            		<li class="active" data-target="#swipe-example" data-slide-to="0"></li>
	            	            		            		<li class="" data-target="#swipe-example" data-slide-to="1"></li>
	            	            		            		<li class="" data-target="#swipe-example" data-slide-to="2"></li>
	            	             </ol>

	             <!-- Wrapper for slides -->
				 <div class="swipe-inner" role="listbox">
	            		            	                            	<div class="item active">
	                		
	        				<a href="#" target="_blank"> 
	                			<img src="<%=path%>/resource/product_sub_categories/images/raokmvplssgagnezaaecktnxwri347.jpg" alt="世界经典原版音乐剧《猫》Cats" title="世界经典原版音乐剧《猫》Cats">
	            			</a>
	            		</div>
	                 	                            	<div class="item ">
	                		
	        				<a href="#" target="_blank"> 
	                			<img src="<%=path%>/resource/product_sub_categories/images/raokmvplxzsaclmfaakkbqxx6e4135.jpg" alt="百老汇原版摇滚音乐剧《吉屋出租》二十周年" title="百老汇原版摇滚音乐剧《吉屋出租》二十周年">
	            			</a>
	            		</div>
	                 	                            	<div class="item ">
	                		
	        				<a href="#" target="_blank"> 
	                			<img src="<%=path%>/resource/product_sub_categories/images/raokmvocqbsacwk-aafu4sbrpy4889.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》" title="法语原版经典音乐剧《罗密欧与朱丽叶》">
	            			</a>
	            		</div>
	                            	 </div>
	             <!-- Controls -->
	             <a class="left swipe-control" data-slide="prev" href="#swipe-example" role="button" >
	                 <div class="prev"></div>
	             </a>
	             <a class="right swipe-control" data-slide="next" href="#swipe-example" role="button" >
	                 <div class="next"></div>
	             </a>
	         </div>
	     </div>
	     <!-- banner图切换 End -->
	</div>        <!-- 轮播图 end-->

	        <!--中部广告位-->
	        <div class="mid-advert-info">

	        </div>
	        <!--广告位 END-->

	        <div style="background: #fafafa;min-height:450px">
	        <div class="w1204">
	            
	            <div class="pcity-left">
	                <div class="listprod clearfix mt20 ">
	                    <ul class="list-ul js-ul"><li><a href="#" target="_blank" title="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳"> <span class="img_banner"><img alt="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVoCbWWAYiDmAADZVO-9QdM948.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVnpnQyAXy1JAABYOJPzD50405.jpg"></span><p>[深圳] 法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳</p></a><div class="price"><span class="rmb">¥</span><span class="num">280 </span>起</div><div class="tm">2018.03.29 19:30</div></li><li><a href="#" target="_blank" title="音乐剧《阴阳师》~平安绘卷~深圳站"> <span class="img_banner"><img alt="音乐剧《阴阳师》~平安绘卷~深圳站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg"></span><p>[深圳] 音乐剧《阴阳师》~平安绘卷~深圳站</p></a><div class="price"><span class="rmb">¥</span><span class="num">380 </span>起</div><div class="tm">2018.03.30 19:00</div></li><li><a href="http://item.juooo.com/82402" target="_blank" title="百老汇浪漫音乐剧《I Do！I Do！》中文版-上海站"> <span class="img_banner"><img alt="百老汇浪漫音乐剧《I Do！I Do！》中文版-上海站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKNVoDsBaAZUdaAAB_C1KzBws404.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKNVoDsBaAZUdaAAB_C1KzBws404.jpg"></span><p>[上海] 百老汇浪漫音乐剧《I Do！I Do！》中文版-上海站</p></a><div class="price"><span class="rmb">¥</span><span class="num">80 </span>起</div><div class="tm">2018.04.06 19:30</div></li><li><a href="#" target="_blank" title="法语原版经典音乐剧《罗密欧与朱丽叶》--- 上海站"> <span class="img_banner"><img alt="法语原版经典音乐剧《罗密欧与朱丽叶》--- 上海站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKNVoCbUmAIe9aAADZVO-9QdM670.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKNVoCbUmAIe9aAADZVO-9QdM670.jpg"></span><p>[上海] 法语原版经典音乐剧《罗密欧与朱丽叶》--- 上海站</p></a><div class="price"><span class="rmb">¥</span><span class="num">80 </span>起</div><div class="tm">2018.04.06 19:30</div></li><li><a href="#" target="_blank" title="音乐剧《阴阳师》~平安绘卷~上海站"> <span class="img_banner"><img alt="音乐剧《阴阳师》~平安绘卷~上海站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg"></span><p>[上海] 音乐剧《阴阳师》~平安绘卷~上海站</p></a><div class="price"><span class="rmb">¥</span><span class="num">380 </span>起</div><div class="tm">2018.04.07 19:00</div></li><li><a href="#" target="_blank" title="世界经典原版音乐剧《猫》Cats 深圳站"> <span class="img_banner"><img alt="世界经典原版音乐剧《猫》Cats 深圳站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKNVqnrtSAZYsWAABOVxYoM9k058.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKNVpDD7OAPdCQAAKe8K5rA40568.jpg"></span><p>[深圳] 世界经典原版音乐剧《猫》Cats 深圳站</p></a><div class="price"><span class="rmb">¥</span><span class="num">380 </span>起</div><div class="tm">2018.04.14 14:00</div></li><li><a href="http://item.juooo.com/85050" target="_blank" title="【迎春套票】百老汇经典音乐剧《猫》Cats+法语原版经典音乐剧《罗密欧与朱丽叶》套票优惠—深圳站"> <span class="img_banner"><img alt="【迎春套票】百老汇经典音乐剧《猫》Cats+法语原版经典音乐剧《罗密欧与朱丽叶》套票优惠—深圳站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVqg6puAekkiAACGvv3C2zQ839.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVqg6puAekkiAACGvv3C2zQ839.jpg"></span><p>[深圳] 【迎春套票】百老汇经典音乐剧《猫》Cats+法语原版经典音乐剧《罗密欧与朱丽叶》套票优惠—深圳站</p></a><div class="price"><span class="rmb">¥</span><span class="num">600 </span>起</div><div class="tm">2018.04.19 19:30</div></li><li><a href="http://item.juooo.com/85219" target="_blank" title="音乐剧《阴阳师》~平安绘卷~北京站"> <span class="img_banner"><img alt="音乐剧《阴阳师》~平安绘卷~北京站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVqRQPyAX99lAAZFs2EB00M216.jpg"></span><p>[北京] 音乐剧《阴阳师》~平安绘卷~北京站</p></a><div class="price"><span class="rmb">¥</span><span class="num">380 </span>起</div><div class="tm">2018.04.20 19:00</div></li><li><a href="http://item.juooo.com/84203" target="_blank" title="世界经典原版音乐剧《猫》Cats 西安站"> <span class="img_banner"><img alt="世界经典原版音乐剧《猫》Cats 西安站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKmVpcRFuAP4uJAABZteDeHu4872.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKmVpLWKmAQYneAACbCuqodDQ673.jpg"></span><p>[西安] 世界经典原版音乐剧《猫》Cats 西安站</p></a><div class="price"><span class="rmb">¥</span><span class="num">380 </span>起</div><div class="tm">2018.04.28 19:30</div></li><li><a href="#" target="_blank" title="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站"> <span class="img_banner"><img alt="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" delayload="<%=path%>/resource/product_sub_categories/images/rAoKNVpDD7OAPdCQAAKe8K5rA40568.jpg" src="<%=path%>/resource/product_sub_categories/images/rAoKNVpDD7OAPdCQAAKe8K5rA40568.jpg"></span><p>[杭州] 法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站</p></a><div class="price"><span class="rmb">¥</span><span class="num">180 </span>起</div><div class="tm">2018.04.29 14:30</div></li></li></ul>
	                </div>
	            </div>

	            <div class="city-right" style="">
	                <div class="media-list-vertical" style="width: 220px;margin:0 auto">
	                    
	                                        <div class="media-img-wrap">
	                        <a href="#" target="_blank">
	                            <img class="media-img" src="<%=path%>/resource/product_sub_categories/images/rAoKNVpcgcKAd9Y_AAA5hZRO6rs439.jpg">
	                        </a>
	                    </div>
	                    <div class="media-title">
	                        <a class="link link-primary" href="#" target="_blank">城市戏剧节，666元极致乐享通票</a>
	                    </div>
	                    
	                    <div class="media-text media-text-right">
	                        <ul class="block-list">
	                            
	                                                                                    <li class="item">
	                                <a class="link link-primary" href="#" target="_blank">
	                                    <span class="bullet-circle"></span>
	                                    <span class="bullet-text">母亲节专场丨歌神许冠杰巡演上海站3月23日11:00正式开票！</span>
	                                </a>
	                            </li>
	                                                        <li class="item">
	                                <a class="link link-primary" href="#" target="_blank">
	                                    <span class="bullet-circle"></span>
	                                    <span class="bullet-text">行走的邓丽君曲库，这才是追星的最高境界</span>
	                                </a>
	                            </li>
	                                                        
	                        </ul>

	                        <div class="btn-wrap">
	                            <ul class="btn-list">
	                                                                 
	                                                                                                        <li class="btn-item"><a class="link" href="#">cats</a></li>
	                                                                                                        <li class="btn-item"><a class="link" href="#">名扬四海</a></li>
	                                                                                                        <li class="btn-item"><a class="link" href="#">金牌制作人</a></li>
	                                                                                                        <li class="btn-item"><a class="link" href="#">吉屋出租</a></li>
	                                                                                                           
	                            </ul>
	                        </div>

	                    </div>
	                </div>
	            </div>
	            <div class="cfix"></div>
	        </div>
	        </div>
	    </div>
	    <!-- footer -->
	    	<div class="new-footer">
			<div class="wrap1">
				<div class="s1 w1200">
					<div class="con con1">
						<div class="title1">帮助中心</div>
						<div class="help-list">
							<a href="../help/registrationProcess.html” class="help-items ml0" target="_blank">新手指南</a>
							<a href="../help/onlinePayment.html"  class="help-items" target="_blank">支付方式</a>
							<a href="../help/statementOfReturnAndShortage.html"  class="help-items" target="_blank">售后服务</a>
							<a href="../help/onlineOrdering.html"  class="help-items ml0" target="_blank">购票指南</a>
							<a href="../help/homeDeliveryService.html"class="help-items" target="_blank">配送方式</a>
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
								<img src="<%=path%>/resource/product_sub_categories/images/ticket.png" alt="">
							</div>
							<p class="code-text">聚橙票务</p>
						</div>
						<div class="box1">
							<div class="img-box">
								<img src="<%=path%>/resource/product_sub_categories/images/show.png" alt="">
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
							<a href="#" class="brand-items" target="_blank">小橙堡</a>
							<a href="#" class="brand-items" target="_blank">万有音乐系</a>
							<a href="#" class="brand-items" target="_blank">聚橙音乐剧</a>
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
							                			                	<a class="tab-items" href="#" target="_blank" title="关于我们">关于我们</a>
			                		                	<a class="tab-items" href="#" target="_blank" title="联系我们">联系我们</a>
			                		                	<a class="tab-items" href="#" target="_blank" title="加入我们">加入我们</a>
			                		                	<a class="tab-items" href="#" target="_blank" title="服务条款">服务条款</a>
			                	                						<!-- <a href="javascript:;" class="tab-items" target="_blank">加盟聚橙</a> -->
							<a href="#" class="tab-items" target="_blank">媒体报道</a>
							<a href="#" class="tab-items" target="_blank">合作伙伴</a>
							<a href="#" class="tab-items" target="_blank">友情链接</a>
							<a href="#" class="tab-items" target="_blank">网站地图</a>
		                
					</div>
					<div class="h4">
						<p class="tab-text">Copyright 2007-2018 © 深圳市聚橙演艺联盟票务有限公司 | 粤ICP备17063893号-2</p>
						<div class="text-box">
							<i class="bg-icon gongan"></i>
							<p class="tab-text">粤公网安备 44030502000578号</p>
						</div>
					</div>
					<div class="h5">
						<a class="safe-items bg-icon police" href="#" target="_blank" title="深圳网络警察报警平台"></a>
	            		<a class="safe-items bg-icon watch" href="#" target="_blank" title="公共信息安全网络监察"></a>
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
	<script src='<%=path%>/resource/product_sub_categories/js/stat.js' language='JavaScript' charset='gb2312'></script>

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
			ma.src = '<%=path%>/resource/product_sub_categories/js/ma.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ma, s);
		})();
	</script>
	</div>

	<!--返回头部-->
	<script type="text/javascript" src="<%=path%>/resource/product_sub_categories/js/sea.js" id="seajsnode"></script>
	<script type="text/javascript" src="<%=path%>/resource/product_sub_categories/js/modules-config.js"></script>


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
	        var  topAdSymbol = "JCAT";
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
	                        advertInfo += 'src="<%=path%>/resource/product_sub_categories/images/42933b027775471c819cb1de4989bd75.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
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
	                        html += '<img src="<%=path%>/resource/product_sub_categories/images/42933b027775471c819cb1de4989bd75.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
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
	</html>    <!-- footer end -->
	    <script type="text/javascript">
	        var rootUrl       = "http://image.juooo.com",
	            categoryStr   = "musical",
	            itemDomain    = "http://item.juooo.com/",
	            searchDomain  = "../all_product/",
	            cateId        = "79",
	            getMusShowUrl = "../juooo/index.htmlHome/Category/getMusicSchedular",
	            symbol        = 'JCAM';

	        seajs.use(['jquery','dateFormat','TGLazyLoad','juo','swipe','tabsCommon','tabsSlide','index'], function($,dateFormat,lazyLoad,juo) {

	            getMusicShowList();

	            getAdvertInfo(cateId,symbol);

	            var oli = $('.js-ul').find('li');
	            if(oli.length >4){
	                $('.city-right').remove();
	                $('.js-ul').parents('.pcity-left').css('width','1200px')
	            }
	            //近期演出
	            function getMusicShowList()
	            {
	                var tmp = {categoryStr:categoryStr,cateId:cateId};
	                $.ajax({
	                    type: "POST",
	                    url: getMusShowUrl,
	                    data: tmp,
	                    dataType: "json",
	                    success: function(data){
	                        if(data.ok)
	                        {
	                            var html ='';
	                            if(data.list.length > 0)
	                            {

	                                $.each( data.list, function( index,val ){
	                                    html+='<li>';
	                                    html+='<a href="' + itemDomain+val['id'] + '" target="_blank" title="'+ val.schedular_name +'">';
	                                    html+=' <span class="img_banner">';
	                                    html+='<img alt="'+ val.schedular_name +'" delayLoad="' + rootUrl + val['pic'] + '">';
	                                    html+='</span>';
	                                    html+='<p>['+ val.city_name +'] '+ val.schedular_name.replace(/\\/g,"") +'</p>';
	                                    html+='</a>';
	                                    html+='<div class="price">';
	                                    html+='<span class="rmb">¥</span>';
	                                    html+='<span class="num">'+ parseFloat(val.low_price) +' </span>起';
	                                    html+='</div>';
	                                    html+='<div class="tm">' + dateFormat.dateFormat('Y.m.d H:i',val.show_time) + '</div>';
	                                    html+='</li>';
	                                })
	                                $(".js-ul").html(' ');
	                                $(".js-ul").html(html); 
	                                $('img').scrollLoading();
	                            }
	                        }
	                        $(".loading").hide();
	                    }
	                })      
	            }

	            function getAdvertInfo(cateId,symbol)
	            {
	                $.ajax({
	                    type:'POST',
	                    url:"https://m.juooo.com/Advert/getAdMap",
	                    dataType:'jsonp',
	                    data:
	                        {
	                            cateId : cateId, 
	                            symbol : symbol,
	                            ajax_type : 'jsonp',
	                        },
	                    jsonp:'callback',
	                    async:false,
	                    success:function(result)
	                    {  
	                        var advertInfo = '';
	                        if(result.code == 1 && result.data)
	                        {
	                            advertInfo += '<a target="_blank" style="text-align:center;display: block;margin-top: 20px;"';
	                            advertInfo += 'href="'+result.data.url+'">';
	                            advertInfo += '<img style="width:1200px;heihgt:80px;"';
	                            advertInfo += 'src="<%=path%>/resource/product_sub_categories/images/42933b027775471c819cb1de4989bd75.gif'+result.data.pic+'" title="'+result.data.ad_name+'" alt="'+result.data.ad_name+'" >';
	                            advertInfo += '</a>';
	                        }
	                        $(".mid-advert-info").append(advertInfo);
	                    }
	                });
	            }
	        })
	        
	    function htmlspecialchars_decode(str)
	    {           
	        str = str.replace(/&amp;/g, '&'); 
	        str = str.replace(/&lt;/g, '<');
	        str = str.replace(/&gt;/g, '>');
	        str = str.replace(/&quot;/g, "''");  
	        str = str.replace(/&#039;/g, "'");  
	        return str;  
	    }

	    </script>
	</body>

	</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!-- Head头部 -->
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <link rel="dns-prefetch" href="//basic.juooo.com/" />
    <title>聚橙网-票务网_演唱会门票_演出订票平台_演出资讯_订票热线400-185-8666</title>
    <meta name="keywords" content="聚橙网,票务网,演唱会,演唱会门票,演出网,订票网,音乐会,儿童剧,舞台剧,音乐剧,亲子节目" />
    <meta name="description" content="聚橙网打造国内专业的票务网和演出订票平台，为您提供各种演唱会、流行音乐会、古典音乐、舞台剧、儿童剧演出官方在线购票服务，实时更新最新门票预定、演出信息和订票信息，安全快捷，订票热线400-185-8666。" />
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" href="css/base_1.css">
            <link rel="stylesheet" type="text/css" href="css/base-second.css">
                <link rel="stylesheet" type="text/css" href="css/index-new.css">
                <link rel="stylesheet" type="text/css" href="css/index.css">
                <link rel="stylesheet" type="text/css" href="css/idangerous.swiper.css">
        
    
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
                    <a href="http://myjuooo.juooo.com/User/myjuooo" target="_blank" class="nav-link no-border-left" id="js-get-username">用户名</a>
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
                            <a href="f" class="new-items" target="_blank" title="聚特惠">聚特惠</a>
                            <a href="../run/activity.htmlStudent/index" class="new-items" target="_blank" title="学生专区">学生专区</a>
                            <a href="../run/card.html" class="new-items" target="_blank" title="欢聚橙卡">欢聚橙卡</a>
                            <a href="../run/calendars.html" class="new-items" target="_blank" title="演出日历">演出日历</a>
                            <a href="../run/star.html" class="new-items" target="_blank" title="明星库">明星库</a>
                            <a href="../news/newslist.html" class="new-items" target="_blank" title="资讯库">资讯库</a>
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
                                                            <a href="../juooo/index.htmlsz" class="new-items" target="_blank">深圳</a>
                                                            <a href="../juooo/index.htmlgz" class="new-items" target="_blank">广州</a>
                                                            <a href="../juooo/index.htmlsh" class="new-items" target="_blank">上海</a>
                                                            <a href="../juooo/index.htmlbj" class="new-items" target="_blank">北京</a>
                                                            <a href="../juooo/index.htmlcd" class="new-items" target="_blank">成都</a>
                                                            <a href="../juooo/index.htmlhz" class="new-items" target="_blank">杭州</a>
                                                            <a href="../juooo/index.htmlcq" class="new-items" target="_blank">重庆</a>
                                                            <a href="../juooo/index.htmlcs" class="new-items" target="_blank">长沙</a>
                                                            <a href="../juooo/index.htmlwh" class="new-items" target="_blank">武汉</a>
                                                            <a href="http://search.juooo.com/?city=25" class="new-items" target="_blank">苏州</a>
                                                            <a href="http://search.juooo.com/?city=27" class="new-items" target="_blank">南宁</a>
                                                            <a href="http://search.juooo.com/?city=31" class="new-items" target="_blank">大连</a>
                                                            <a href="../juooo/index.htmlsjz" class="new-items" target="_blank">石家庄</a>
                                                            <a href="http://search.juooo.com/?city=39" class="new-items" target="_blank">连云港</a>
                                                            <a href="http://search.juooo.com/?city=41" class="new-items" target="_blank">宁波</a>
                                                            <a href="http://search.juooo.com/?city=48" class="new-items" target="_blank">镇江</a>
                                                            <a href="http://search.juooo.com/?city=50" class="new-items" target="_blank">天津</a>
                                                            <a href="../juooo/index.htmlxa" class="new-items" target="_blank">西安</a>
                                                            <a href="../juooo/index.htmlkm" class="new-items" target="_blank">昆明</a>
                                                            <a href="../juooo/index.htmlnj" class="new-items" target="_blank">南京</a>
                                                            <a href="http://search.juooo.com/?city=61" class="new-items" target="_blank">福州</a>
                                                            <a href="http://search.juooo.com/?city=62" class="new-items" target="_blank">泉州</a>
                                                            <a href="http://search.juooo.com/?city=63" class="new-items" target="_blank">厦门</a>
                                                            <a href="http://search.juooo.com/?city=10001" class="new-items" target="_blank">合肥</a>
                                                            <a href="http://search.juooo.com/?city=10004" class="new-items" target="_blank">沈阳</a>
                                                            <a href="../juooo/index.htmlwx" class="new-items" target="_blank">无锡</a>
                                                            <a href="http://search.juooo.com/?city=10008" class="new-items" target="_blank">贵阳</a>
                                                            <a href="http://search.juooo.com/?city=10011" class="new-items" target="_blank">常州</a>
                                                            <a href="http://search.juooo.com/?city=10019" class="new-items" target="_blank">东莞</a>
                                                            <a href="../juooo/index.htmlfj" class="new-items" target="_blank">福建</a>
                                                            <a href="http://search.juooo.com/?city=10027" class="new-items" target="_blank">哈尔滨</a>
                                                            <a href="http://search.juooo.com/?city=10073" class="new-items" target="_blank">宜昌</a>
                                                            <a href="http://search.juooo.com/?city=10080" class="new-items" target="_blank">清远</a>
                                                            <a href="http://search.juooo.com/?city=10090" class="new-items" target="_blank">河源</a>
                                                            <a href="http://search.juooo.com/?city=10097" class="new-items" target="_blank">盐城</a>
                                                            <a href="http://search.juooo.com/?city=10116" class="new-items" target="_blank">商丘</a>
                                                            <a href="http://search.juooo.com/?city=10137" class="new-items" target="_blank">安顺</a>
                                                            <a href="http://search.juooo.com/?city=10145" class="new-items" target="_blank">龙岩</a>
                                                            <a href="http://search.juooo.com/?city=10148" class="new-items" target="_blank">罗城</a>
                                                            <a href="http://search.juooo.com/?city=10149" class="new-items" target="_blank">乌兰浩特</a>
                                                            <a href="http://search.juooo.com/?city=10151" class="new-items" target="_blank">随州</a>
                                                    </div>
                    </li>
                </ul>
            </div>
            <div class="nav-items width94 js-phone">
                <a href="javascript:;" class="nav-link"><i class="bg-icon mobile"></i>手机购票</a>
                <div class="phone-code js-phone-code"><img src="images/mobile.png" alt=""></div>
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
<!-- 顶部栏 end -->    <!-- top头部 End-->
    <!-- 顶部广告 -->
        <!--<div class="w1200 nav-banner-wrap js-nav-banner">
        <a href="http://search.juooo.com/?k=Cats" class="nav-banner">
            <span class="close js-nav-close"><i class="bg-icon close-icon"></i>关闭</span>
            <img src="images/raoknvpv08yapzijaab2npswgzq863.jpg" alt="">
        </a>
    </div>-->
        <!-- 顶部广告 end -->
    <!-- 头部 -->
    <div class="new-header">
        <div class="content-box w1200">
            <a href="index.html"><div class="logo-box"></div></a>
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
        </div>
        <!-- 头部导航 -->
        <div class="nav-head">
            <ul class="w1200">
                <li class="nav-item">
                    <a href="javascript:;" class="nav-link">全部商品分类</a>
                    <!-- 侧边导航 -->
                    <div class="kind-list js-kind-list js-nav-link">
                        <div class="left-index">
                                                                                    <a href="../all_product/vocalConcert.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qduaspnaaaaeto5fqlu795.png);"></i>
                                <span class="kind-text">演唱会</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/music.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qfeacmibaaaefux5vuu038.png);"></i>
                                <span class="kind-text">音乐会</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/drama.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qg6aac9iaaaedcanr-c618.png);"></i>
                                <span class="kind-text">话剧歌剧</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/child.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qiaafuhtaaag30h30mi241.png);"></i>
                                <span class="kind-text">儿童亲子</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/musical.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qj2ahhqhaaagybomok8111.png);"></i>
                                <span class="kind-text">音乐剧</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/variety.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qmkabw9saaagsgbqhxe942.png);"></i>
                                <span class="kind-text">戏曲综艺</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/exhibition.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(images/raokmvn7qn2aeg2uaaaeesj_ld4456.png);"></i>
                                <span class="kind-text">展览</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                </div>
                        <div class="right-detail js-right-detail">
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qewahyweaaavxkqyorc553.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/vocalConcert.html&type2=81" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        流行                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/vocalConcert.html&type2=82" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        摇滚                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/vocalConcert.html&type2=83" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        民谣                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/vocalConcert.html&type2=84" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        民族                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/vocalConcert.html&type2=85" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qgcaoj55aaaqu6vnjnw831.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/music.html&type2=45" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        交响                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/music.html&type2=46" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        独奏                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/music.html&type2=49" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qhaafro2aaafkohcdbo611.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/drama.html&type2=53" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        话剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/drama.html&type2=54" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        歌剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/drama.html&type2=66" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        歌舞剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/drama.html&type2=67" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qiyaehz1aaavub-rf-u430.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/child.html&type2=55" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        儿童剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/child.html&type2=56" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        亲子活动                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/child.html&type2=57" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raokmvn759eap0m-aaas0qyo8la429.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/musical.html&type2=80" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        音乐剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qm6auwpcaaadmaz5k2s662.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/variety.html&type2=92" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        京剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/variety.html&type2=93" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        昆曲                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/variety.html&type2=94" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        越剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/variety.html&type2=95" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        相声小品                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/variety.html&type2=96" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        综艺                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/variety.html&type2=97" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        马戏杂技                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/variety.html&type2=98" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details"
                                 style="background-image: url(images/raoknvn7qoaae51-aaahavn4ayw172.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/exhibition.html&type2=100" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        展览                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                </div>
                    </div>
                    <!-- 侧边导航 -->
                </li>
                                                            <li class="nav-item">
                            <a href="../product_sub_categories/popular.html" class="nav-link" title="流行音乐" target="_blank">流行音乐</a>
                        </li>
                                                                                <li class="nav-item">
                            <a href="../product_sub_categories/classical.html" class="nav-link" title="古典音乐" target="_blank">古典音乐</a>
                        </li>
                                                                                <li class="nav-item">
                            <a href="../product_sub_categories/drama.html" class="nav-link" title="舞台剧" target="_blank">舞台剧</a>
                        </li>
                                                                                <li class="nav-item">
                            <a href="../product_sub_categories/kids.html" class="nav-link" title="儿童亲子" target="_blank">儿童亲子</a>
                        </li>
                                                                                <li class="nav-item">
                            <a href="../product_sub_categories/musical.html" class="nav-link" title="音乐剧" target="_blank">音乐剧</a>
                        </li>
                                                    <!-- 右侧年卡入口 -->
                                    <li class="nav-item entry-li">
                        <a href="../run/" class="nav-link entry" target="_blank" title="">
                            <img src="images/raoknvpb_02auf1faajhopvn-jm883.gif" alt="" class="entry-img">
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

<script type="text/javascript" src="js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="js/modules-config.js"></script>
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
                        var advertInfo  = '<div class="logo"><a href="'+result.data.url+'"><img src="images/4e37a66593104ae581be2eca19939a27.gif' + result.data.pic + '" alt="'+ result.data.ad_name + '" title="'+ result.data.ad_name + '"></a></div>';
                    }
                    else
                    {
                        var advertInfo =  '<div class="logo"><a href="../juooo/index.html"><img src="images/juooo-logo.png"></a></div>';
                    }
                    $("#js-head-logo .dropdown-tab").before(advertInfo);
                }
            });
        }
    });
</script>

<!-- 3.x 和 4.x 冲突 -->
<style> 
.media-horizontal .media-title-wrap .media-more.icon-arrow-up
,.title-row .title-more.icon-arrow-up
,.media-title-wrap .title-more.icon-arrow-up
{
    
    transform: rotate(90deg);
    transform-origin:bottom right;

    -ms-transform: rotate(90deg);       /* IE 9 */
    -ms-transform-origin:bottom right;       /* IE 9 */

    -webkit-transform: rotate(90deg);   /* Safari 和 Chrome */
    -webkit-transform-origin:bottom right;   /* Safari 和 Chrome */

    -moz-transform: rotate(90deg);      /* Firefox */
    -moz-transform-origin:bottom right;      /* Firefox */

    -o-transform: rotate(90deg);        /* Opera */
    -o-transform-origin:bottom right;        /* Opera */

    font-size: 16px;
}

.title-row .title-more.icon-arrow-up
{
    right: 14px;
    top: 10px;
}    
 
.media-horizontal .media-title-wrap .media-more.icon-arrow-up
{
    right: 26px;
    top: 4px;
}

.media-title-wrap .title-more.icon-arrow-up
{
    right: 26px;
    top: 2px;
}
</style>
<!-- 3.x 和 4.x 冲突 END -->

<!-- Head头部 End-->
<!--弹窗半透明背景框-->
<div class="shadow-bg "></div>

<!--新用户好礼弹窗-->
<div class="gift-wrap ">
    
</div>
<!--新用户好礼弹窗end-->

<!--新用户优惠券列表弹窗-->
<div class="ticket-wrap">

</div>
<!--新用户优惠券列表弹窗end-->
<!-- 主内容部分 -->
<div class="">
	
	 <!-- 轮播图 -->
   	 <!-- 主轮播 -->
<div class="main-banner">
    <!-- banner轮播 -->
    <div class="banner-container w1200" style="">
                <div class="swiper-wrapper banner-wrapper">
                            <div class="swiper-slide banner-item" data-bg-color="rgb(58,66,86)">
                    <a href="https://click.juooo.com/click/index?url=http://s.juooo.com/FFfQdFA&type=2&ad_id=6938&flag=L"
                       target="_blank" title="世界戏剧日">
                        <!--<img src="images/banner.jpg" alt="世界戏剧日"-->
                        <!-- <img src="images/raokmvq5wkcazbseaaiukkztynu774.jpg" alt="世界戏剧日"
                             title="世界戏剧日"
                             data-adaptive-background="1"
                        > -->
                        <img src="images/raokmvq5wkcazbseaaiukkztynu774.jpg" alt="世界戏剧日"
                             title="世界戏剧日"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(254,254,254)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=miyavi&type=2&ad_id=6910&flag=L"
                       target="_blank" title="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会">
                        <!--<img src="images/banner.jpg" alt="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会"-->
                        <!-- <img src="images/raoknvqywfmayrovaaewkbbihds193.jpg" alt="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会"
                             title="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvqywfmayrovaaewkbbihds193.jpg" alt="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会"
                             title="【万有音乐系】MIYAVI“DAY2”2018世界巡回演唱会"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(28,172,242)">
                    <a href="https://click.juooo.com/click/index?url=http://zhuanti.juooo.com/zhuanti/2018/stuZone/&type=2&ad_id=6919&flag=L"
                       target="_blank" title="学生专区">
                        <!--<img src="images/banner.jpg" alt="学生专区"-->
                        <!-- <img src="images/raoknvqfqwwab0vcaafhyfelbbc512.jpg" alt="学生专区"
                             title="学生专区"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvqfqwwab0vcaafhyfelbbc512.jpg" alt="学生专区"
                             title="学生专区"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(200,22,31)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=scandal&type=2&ad_id=6935&flag=L"
                       target="_blank" title="scandal">
                        <!--<img src="images/banner.jpg" alt="scandal"-->
                        <!-- <img src="images/raokmvq0y4iacvzhaapvj7ftvg0107.jpg" alt="scandal"
                             title="scandal"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvq0y4iacvzhaapvj7ftvg0107.jpg" alt="scandal"
                             title="scandal"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(255,254,255)">
                    <a href="https://click.juooo.com/click/index?url=http://item.juooo.com/84533&type=2&ad_id=6932&flag=L"
                       target="_blank" title="手拉手国际儿童音乐节">
                        <!--<img src="images/banner.jpg" alt="手拉手国际儿童音乐节"-->
                        <!-- <img src="images/raokmvqzdeaafbwkaalc7jz9qio545.jpg" alt="手拉手国际儿童音乐节"
                             title="手拉手国际儿童音乐节"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvqzdeaafbwkaalc7jz9qio545.jpg" alt="手拉手国际儿童音乐节"
                             title="手拉手国际儿童音乐节"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(52,146,109)">
                    <a href="https://click.juooo.com/click/index?url=http://zhuanti.juooo.com/zhuanti/2017/drama/&type=2&ad_id=6890&flag=L"
                       target="_blank" title="第五届城市戏剧节666套票">
                        <!--<img src="images/banner.jpg" alt="第五届城市戏剧节666套票"-->
                        <!-- <img src="images/raokmvpydicafv8kaai4w96vm-s818.jpg" alt="第五届城市戏剧节666套票"
                             title="第五届城市戏剧节666套票"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvpydicafv8kaai4w96vm-s818.jpg" alt="第五届城市戏剧节666套票"
                             title="第五届城市戏剧节666套票"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(13,0,1)">
                    <a href="https://click.juooo.com/click/index?url=http://item.juooo.com/85055&type=2&ad_id=6778&flag=L"
                       target="_blank" title="法语原版经典音乐剧《罗密欧与朱丽叶》">
                        <!--<img src="images/banner.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》"-->
                        <!-- <img src="images/raokmvqvxs6aynrtaaf6srcuchs640.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》"
                             title="法语原版经典音乐剧《罗密欧与朱丽叶》"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvqvxs6aynrtaaf6srcuchs640.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》"
                             title="法语原版经典音乐剧《罗密欧与朱丽叶》"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(14,0,0)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=Cats&type=2&ad_id=6661&flag=L"
                       target="_blank" title="世界经典原版音乐剧《猫》Cats">
                        <!--<img src="images/banner.jpg" alt="世界经典原版音乐剧《猫》Cats"-->
                        <!-- <img src="images/raokmvpv6fmaa50raaeg-yn9o4c143.jpg" alt="世界经典原版音乐剧《猫》Cats"
                             title="世界经典原版音乐剧《猫》Cats"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvpv6fmaa50raaeg-yn9o4c143.jpg" alt="世界经典原版音乐剧《猫》Cats"
                             title="世界经典原版音乐剧《猫》Cats"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(0,27,52)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=阴阳师&type=2&ad_id=6907&flag=L"
                       target="_blank" title="阴阳师">
                        <!--<img src="images/banner.jpg" alt="阴阳师"-->
                        <!-- <img src="images/raoknvqrhq2az55eaaf1-eooqjm173.jpg" alt="阴阳师"
                             title="阴阳师"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvqrhq2az55eaaf1-eooqjm173.jpg" alt="阴阳师"
                             title="阴阳师"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(212,221,228)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=%E4%B8%AD%E5%AD%9D%E4%BB%8B&type=2&ad_id=6873&flag=L"
                       target="_blank" title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会">
                        <!--<img src="images/banner.jpg" alt="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会"-->
                        <!-- <img src="images/raoknvpu5ceaejbnaagedosqxb0464.jpg" alt="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会"
                             title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvpu5ceaejbnaagedosqxb0464.jpg" alt="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会"
                             title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(255,253,255)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=热斑&sort=1&type=2&ad_id=6929&flag=L"
                       target="_blank" title="热斑《Heartless Thing》2018全国巡演">
                        <!--<img src="images/banner.jpg" alt="热斑《Heartless Thing》2018全国巡演"-->
                        <!-- <img src="images/raokmvqvxk2ahojnaal1blmcayq658.jpg" alt="热斑《Heartless Thing》2018全国巡演"
                             title="热斑《Heartless Thing》2018全国巡演"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvqvxk2ahojnaal1blmcayq658.jpg" alt="热斑《Heartless Thing》2018全国巡演"
                             title="热斑《Heartless Thing》2018全国巡演"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(66,66,66)">
                    <a href="https://click.juooo.com/click/index?url=http://item.juooo.com/84486&type=2&ad_id=6881&flag=L"
                       target="_blank" title="罗志祥2018">
                        <!--<img src="images/banner.jpg" alt="罗志祥2018"-->
                        <!-- <img src="images/raokmvpwdaoaffrqaamagkjsdxc286.jpg" alt="罗志祥2018"
                             title="罗志祥2018"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvpwdaoaffrqaamagkjsdxc286.jpg" alt="罗志祥2018"
                             title="罗志祥2018"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(140,205,244)">
                    <a href="https://click.juooo.com/click/index?url=http://zhuanti.juooo.com/zhuanti/2018/pfyh/&type=2&ad_id=6921&flag=L"
                       target="_blank" title="浦发银行购票立减活动">
                        <!--<img src="images/banner.jpg" alt="浦发银行购票立减活动"-->
                        <!-- <img src="images/raoknvqgotqaad58aad8zdbaoho248.jpg" alt="浦发银行购票立减活动"
                             title="浦发银行购票立减活动"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvqgotqaad58aad8zdbaoho248.jpg" alt="浦发银行购票立减活动"
                             title="浦发银行购票立减活动"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(0,60,0)">
                    <a href="https://click.juooo.com/click/index?url=http://search.juooo.com/?k=%E7%AE%80%E5%BC%98%E4%BA%A6&type=2&ad_id=6885&flag=L"
                       target="_blank" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会">
                        <!--<img src="images/banner.jpg" alt="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会"-->
                        <!-- <img src="images/raokmvpwr9kamkdraail0xlakz4137.jpg" alt="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会"
                             title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raokmvpwr9kamkdraail0xlakz4137.jpg" alt="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会"
                             title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会"
                             
                        >
                    </a>
                </div>
                            <div class="swiper-slide banner-item" data-bg-color="rgb(233,237,223)">
                    <a href="https://click.juooo.com/click/index?url=http://zhuanti.juooo.com/zhuanti/2018/Priscilla/&type=2&ad_id=6799&flag=L"
                       target="_blank" title="http://item.juooo.com/83553">
                        <!--<img src="images/banner.jpg" alt="http://item.juooo.com/83553"-->
                        <!-- <img src="images/raoknvqmouyagzyiaaesvtofnqs801.jpg" alt="http://item.juooo.com/83553"
                             title="http://item.juooo.com/83553"
                             data-adaptive-background=""
                        > -->
                        <img src="images/raoknvqmouyagzyiaaesvtofnqs801.jpg" alt="http://item.juooo.com/83553"
                             title="http://item.juooo.com/83553"
                             
                        >
                    </a>
                </div>
                    </div>
                <!-- 翻页按钮 -->
        <a href="javascript:;" class="b-btn banner-prev"></a>
        <a href="javascript:;" class="b-btn banner-next"></a>
        <!-- 翻页按钮end -->

        <div class="pagination"></div>
    </div>
    <!-- banner轮播end -->
</div>
<!-- 主轮播end -->

	 <!-- 轮播图 end-->

    <!-- 运营位入口 -->
        <div class="column-entrance w1200 f-six"
         style="margin-top:25px;margin-bottom:25px;">
                        <a href="http://scores.juooo.com/" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raoknvn7p4-adsylaaaef3ckeoy553.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">积分商城</span>
                                            </p>
                    <p class="c-intro">
                        用积分，享0元购票                    </p>
                </div>
                            </a>
                        <a href="../run/card.html" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raokmvpdeswadxksaaacbvjf9_q121.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">欢聚橙卡</span>
                                                    <span class="c-hot"></span>
                                            </p>
                    <p class="c-intro">
                        33元起看演出                    </p>
                </div>
                            </a>
                        <a href="../run/activity.html" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raoknvn7pyaap0lwaaaev5syqy8784.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">聚特惠</span>
                                            </p>
                    <p class="c-intro">
                        每天不只优惠一点点                    </p>
                </div>
                            </a>
                        <a href="../run/activity.htmlStudent/index" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raokmvn7p1uawkcxaaahnxsjory926.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">学生专区</span>
                                                    <span class="c-hot"></span>
                                            </p>
                    <p class="c-intro">
                        学生购票，低至5折                    </p>
                </div>
                            </a>
                        <a href="http://zhuanti.juooo.com/" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raokmvn7p66ambthaaaefq08vxs686.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">精彩专题</span>
                                            </p>
                    <p class="c-intro">
                        演出专题，精彩汇聚                    </p>
                </div>
                            </a>
                        <a href="../juooo/index.htmlcalendars/" class="column-item">
                                <div class="c-icon fl" style="background-image: url(images/raoknvn7p8-abboraaadzezgg_m353.png);"></div>
                <div class="c-cont fl">
                    <p class="c-title"><span class="c-ttext">演出日历</span>
                                            </p>
                    <p class="c-intro">
                        演出信息，一目了然                    </p>
                </div>
                            </a>
                </div>
        <!-- 运营位入口end -->
	
     <!-- 城市站 -->
     <div class="city  w-default margin-top80 w1200">
         <div class="title-row" id="js-title-row">
             <div class="title" id="rec-city">全国</div>
             <div class="title-after"><a id="rec-url" class="link" href="/" title="全国" target="_blank"></a>
                 <div class="other-city">
                        <a class="link link-primary padding-left30" id="js-other-city">[其他城市]</a>
                        <div class="city-panel">
                            <div class="arrow-up"></div>
                            <div class="city-inner">
                                <p class="c-999">热门城市：</p>
                                <ul class="city-hot-list hot-city" id="city">
                                	<li class="list-item" data-id = "0">
                                       	<a class="block link-primary">全国</a>
                                   	</li>
                                	                                </ul>
							
                                <ul class="city-panel-list other-city-l" >
                                	                                </ul>
                                
                            </div>
                        </div>
                    </div>

             </div>
         </div>

         <!-- 左边演出列表部分 -->
         <div class="city-content city-primary">
             <ul class="list list-4 w-small" id="city-how"><li class="list-item"><div class="item-img-wrap"><a href="../all_product/item.html" title="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳" target="_blank"><i class="logo_i"></i><img class="item-img" src="images/rAoKmVoCbWWAYiDmAADZVO-9QdM948.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳" title="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳"></a><div class="item-img-info"><div><span class="icon icon-position"></span><a class="link" href="../run/venue.htmlshow/1078" target="_blank" title="南山文体中心剧院大剧院">南山文体中心剧院大剧院</a></div><div class="margin-top10"><span class="icon icon-time"></span><a class="link" href="http://item.juooo.com/81207" title="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳" target="_blank">2018.03.29 19:30</a></div></div></div><div class="item-title"><a class="link-primary" href="http://item.juooo.com/81207" title="法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳" target="_blank">法语原版经典音乐剧《罗密欧与朱丽叶》 -深圳</a></div><div class="item-text"><div class="item-detail"><div class="item-left"><div class="link">音乐剧</div></div><div class="item-right price price-primary"><span class="price-kind">￥</span><span class="price-amount">280</span>起</div></div></div></li><li class="list-item"><div class="item-img-wrap"><a href="http://item.juooo.com/82444" title="世界经典原版音乐剧《猫》Cats 深圳站" target="_blank"><i class="logo_i"></i><img class="item-img" src="images/rAoKmVqnrkmAT1aoAABOVxYoM9k529.jpg" alt="世界经典原版音乐剧《猫》Cats 深圳站" title="世界经典原版音乐剧《猫》Cats 深圳站"></a><div class="item-img-info"><div><span class="icon icon-position"></span><a class="link" href="../run/venue.htmlshow/1078" target="_blank" title="南山文体中心剧院大剧院">南山文体中心剧院大剧院</a></div><div class="margin-top10"><span class="icon icon-time"></span><a class="link" href="http://item.juooo.com/82444" title="世界经典原版音乐剧《猫》Cats 深圳站" target="_blank">2018.04.05 19:30</a></div></div></div><div class="item-title"><a class="link-primary" href="http://item.juooo.com/82444" title="世界经典原版音乐剧《猫》Cats 深圳站" target="_blank">世界经典原版音乐剧《猫》Cats 深圳站</a></div><div class="item-text"><div class="item-detail"><div class="item-left"><div class="link">音乐剧</div></div><div class="item-right price price-primary"><span class="price-kind">￥</span><span class="price-amount">380</span>起</div></div></div></li><li class="list-item"><div class="item-img-wrap"><a href="http://item.juooo.com/83889" title="阿凡达探索潘朵拉世界 中国特展" target="_blank"><img class="item-img" src="images/rAoKNVo3bLuAPaGwAACKHDKM37c662.jpg" alt="阿凡达探索潘朵拉世界 中国特展" title="阿凡达探索潘朵拉世界 中国特展"></a><div class="item-img-info"><div><span class="icon icon-position"></span><a class="link" href="../run/venue.htmlshow/2531" target="_blank" title="大中华国际交易广场1樓">大中华国际交易广场1樓</a></div><div class="margin-top10"><span class="icon icon-time"></span><a class="link" href="http://item.juooo.com/83889" title="阿凡达探索潘朵拉世界 中国特展" target="_blank">2018.04.12 22:30</a></div></div></div><div class="item-title"><a class="link-primary" href="http://item.juooo.com/83889" title="阿凡达探索潘朵拉世界 中国特展" target="_blank">阿凡达探索潘朵拉世界 中国特展</a></div><div class="item-text"><div class="item-detail"><div class="item-left"><div class="link">展览</div></div><div class="item-right price price-primary"><span class="price-kind">￥</span><span class="price-amount">106</span>起</div></div></div></li><li class="list-item"><div class="item-img-wrap"><a href="http://item.juooo.com/83462" title="2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳" target="_blank"><i class="logo_i"></i><img class="item-img" src="images/rAoKNVppir2AH99BAACgDinnhEw297.jpg" alt="2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳" title="2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳"></a><div class="item-img-info"><div><span class="icon icon-position"></span><a class="link" href="../run/venue.htmlshow/1078" target="_blank" title="南山文体中心剧院大剧院">南山文体中心剧院大剧院</a></div><div class="margin-top10"><span class="icon icon-time"></span><a class="link" href="http://item.juooo.com/83462" title="2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳" target="_blank">2018.05.10 20:00</a></div></div></div><div class="item-title"><a class="link-primary" href="http://item.juooo.com/83462" title="2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳" target="_blank">2018第五届城市戏剧节 岩井俊二和他的乐队- Hec&amp;Pascal音乐剧场特别呈现-深圳</a></div><div class="item-text"><div class="item-detail"><div class="item-left"><div class="link">演唱会</div></div><div class="item-right price price-primary"><span class="price-kind">￥</span><span class="price-amount">399</span>起</div></div></div></li></ul>
         </div>
         <!-- 左边演出列表部分 END-->

         <!-- 右边专题推荐部分 -->
         <div class="city-right">
             <div class="title-row">
                 <div class="title">专题推荐</div>
                 <a class="title-more icon icon-arrow-up" href="http://zhuanti.juooo.com/" target="_blank" title="更多精彩专题"></a>
             </div>
             <div class="media-list-vertical">
                                                   <div class="media-img-wrap">
                 	<a href="http://zhuanti.juooo.com/zhuanti/2018/Priscilla/" title="陈慧娴演唱会佛山站" target="_blank">
                    	<img class="media-img" delayload="images/rAoKmVplXdyATf_lAAAmsa0uz8I817.jpg" alt="陈慧娴演唱会佛山站" title="陈慧娴演唱会佛山站" src="images/rAoKmVplXdyATf_lAAAmsa0uz8I817.jpg">
                	</a>
                 </div>
                 <div class="media-title">
                     <a class="link link-primary" href="http://zhuanti.juooo.com/zhuanti/2018/Priscilla/" target="_blank" title="陈慧娴演唱会佛山站">陈慧娴演唱会佛山站</a>
                 </div>
                 
                 <div class="media-text  media-text-right">
                     <ul class="block-list">
                                                                                    	<li class="item">
                             <a class="link link-primary" href="http://zhuanti.juooo.com/zhuanti/2017/drama/" target="_blank" title="城市戏剧节，666元极致乐享通票">
                                 <span class="bullet-circle"></span>
                                 <span class="bullet-text">城市戏剧节，666元极致乐享通票</span>	
                             </a>
                         </li>
                                                               	<li class="item">
                             <a class="link link-primary" href="http://zhuanti.juooo.com/zhuanti/2017/rent/" target="_blank" title="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演">
                                 <span class="bullet-circle"></span>
                                 <span class="bullet-text">百老汇原版摇滚音乐剧《吉屋出租》20周年巡演</span>	
                             </a>
                         </li>
                         
                     </ul>
                     <!-- 城市站热搜词 -->
                     <div class="btn-wrap">
                         <ul class="btn-list hot-word">
                         	                          	 							  
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=Cats" target="_blank">Cats</a></li>
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=%E5%90%89%E5%B1%8B%E5%87%BA%E7%A7%9F" target="_blank">吉屋出租</a></li>
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=SCANDAL" target="_blank">SCANDAL</a></li>
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=%E7%BD%97%E5%AF%86%E6%AC%A7%E4%B8%8E%E6%9C%B1%E4%B8%BD%E5%8F%B6" target="_blank">罗密欧与朱丽叶</a></li>
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=%E9%99%88%E6%85%A7%E5%A8%B4" target="_blank">陈慧娴</a></li>
							 							 	<li class="btn-item"><a class="link" href="http://search.juooo.com/?k=%E9%95%BF%E8%85%BF%E5%8F%94%E5%8F%94" target="_blank">长腿叔叔</a></li>
							                          </ul>
                     </div>
                     <!-- 城市站热搜词 END -->
                     
                 </div>
                              </div>
         </div>
         <!-- 右边专题推荐部分 END -->
     </div>
     <!-- 城市站 END -->
     
     <!-- 广告位 -->
     <!--广告位 END-->

     <!-- 巡回演出 -->
     <div class="panel js-tour-show">
         <div class="w-default">
             <!-- 标题部分 -->
             <div class="block-title-wrap">
                 <div class="block-title">巡回演出</div>
             </div>
             <!-- 标题部分 END -->

             <div class="module-warp">
                 <ul>
                 												<li class="s1">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVo8acqAT3O_AAAmNxvXQ-0082.jpg" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" alt="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" src="images/rAoKNVo8acqAT3O_AAAmNxvXQ-0082.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=Sophie%20Zelmani" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" target="_blank">
                                 <h4>【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会</h4>
                                 <p class="num">共<b>10</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s2">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVo8aUiADLRsAAApIT6YxGw088.jpg" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会" src="images/rAoKNVo8aUiADLRsAAApIT6YxGw088.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=%E9%BA%A6%E6%96%AF%E7%B1%B3%E5%85%B0" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会" target="_blank">
                                 <h4>【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会</h4>
                                 <p class="num">共<b>15</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s3">
                         <div class="show-hover">
                             <img delayload="images/rAoKmVpesLKAaMbiAABhrSeBv3k251.jpg" title="【万有音乐系】“海角七号”十周年纪念·岛歌王子中孝介2018巡回演唱会" alt="【万有音乐系】“海角七号”十周年纪念·岛歌王子中孝介2018巡回演唱会" src="images/rAoKmVpesLKAaMbiAABhrSeBv3k251.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=中孝介" title="【万有音乐系】“海角七号”十周年纪念·岛歌王子中孝介2018巡回演唱会" target="_blank">
                                 <h4>【万有音乐系】“海角七号”十周年纪念·岛歌王子中孝介2018巡回演唱会</h4>
                                 <p class="num">共<b>5</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s4">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVpesZuAPL3LAAAlAPW5vZA551.jpg" title="【万有音乐系】刘瑞琦“温暖的房间”2018巡回演唱会" alt="【万有音乐系】刘瑞琦“温暖的房间”2018巡回演唱会" src="images/rAoKNVpesZuAPL3LAAAlAPW5vZA551.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=刘瑞琦" title="【万有音乐系】刘瑞琦“温暖的房间”2018巡回演唱会" target="_blank">
                                 <h4>【万有音乐系】刘瑞琦“温暖的房间”2018巡回演唱会</h4>
                                 <p class="num">共<b>2</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s5">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVpC_gyAWvtOAADNo8G8TdU101.jpg" title="【万有音乐系】Keren Ann 2018 中国巡演" alt="【万有音乐系】Keren Ann 2018 中国巡演" src="images/rAoKNVpC_gyAWvtOAADNo8G8TdU101.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=Keren%20Ann" title="【万有音乐系】Keren Ann 2018 中国巡演" target="_blank">
                                 <h4>【万有音乐系】Keren Ann 2018 中国巡演</h4>
                                 <p class="num">共<b>6</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s6">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVpElUaALpsfAABihaoO-us894.jpg" title="百老汇原版摇滚音乐剧《吉屋出租》二十周年巡演" alt="百老汇原版摇滚音乐剧《吉屋出租》二十周年巡演" src="images/rAoKNVpElUaALpsfAABihaoO-us894.jpg">
                             <a class="shadow" href="http://zhuanti.juooo.com/zhuanti/2017/rent/" title="百老汇原版摇滚音乐剧《吉屋出租》二十周年巡演" target="_blank">
                                 <h4>百老汇原版摇滚音乐剧《吉屋出租》二十周年巡演</h4>
                                 <p class="num">共<b>5</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s7">
                         <div class="show-hover">
                             <img delayload="images/rAoKNVpVcSyAGSj2AACzeDpuCvo571.jpg" title="【小橙堡】《印象莫奈：时光映迹艺术展》" alt="【小橙堡】《印象莫奈：时光映迹艺术展》" src="images/rAoKNVpVcSyAGSj2AACzeDpuCvo571.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=%E8%8E%AB%E5%A5%88" title="【小橙堡】《印象莫奈：时光映迹艺术展》" target="_blank">
                                 <h4>【小橙堡】《印象莫奈：时光映迹艺术展》</h4>
                                 <p class="num">共<b>3</b>场</p>
                             </a>
                         </div>
                     </li>
											<li class="s8">
                         <div class="show-hover">
                             <img delayload="images/rAoKmVpVdZuAdkJbAAA83FsYXc8847.jpg" title="世界经典原版音乐剧《猫》Cats" alt="世界经典原版音乐剧《猫》Cats" src="images/rAoKmVpVdZuAdkJbAAA83FsYXc8847.jpg">
                             <a class="shadow" href="http://search.juooo.com/?k=Cats" title="世界经典原版音乐剧《猫》Cats" target="_blank">
                                 <h4>世界经典原版音乐剧《猫》Cats</h4>
                                 <p class="num">共<b>8</b>场</p>
                             </a>
                         </div>
                     </li>
					                 </ul>
             </div>
         </div>
     </div>
     <!-- 巡回演出 END -->

     <!-- 演唱会 -->
     <div class="panel panel-primary bg-floor" data-id="icon-target">
         <div class="w-default">
             <!-- 热搜词-->
             <div class="block-title-wrap">
                 <div class="block-title">演唱会</div>
                    				 <div class="block-title-info">
		 
			<a class="info-item" href="http://search.juooo.com/?k=%E9%99%88%E6%85%A7%E5%A8%B4" target="_blank">陈慧娴</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E9%BA%A6%E6%96%AF%E7%B1%B3%E5%85%B0" target="_blank">麦斯米兰</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%88%98%E7%91%9E%E7%90%A6" target="_blank">刘瑞琦</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%BD%97%E5%BF%97%E7%A5%A5" target="_blank">罗志祥</a>
	                 	
</div>             </div>
             <!-- 热搜词 END -->

             <!--演唱会 -->
             <div class="panel-content">
             	 <!--推荐演出 -->
             	 <ul class="list list-5 ">
	             	 	   				 <li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85081" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVnpnQyAXy1JAABYOJPzD50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站" src="http://image.juooo.com/group1/M00/00/A7/rAoKmVnpnQyAXy1JAABYOJPzD50405.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/990" target="_blank" title="昆明胜利堂剧院">昆明胜利堂剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85081" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站" target="_blank">2018.05.02 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85081" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站" target="_blank">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">昆明</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">100</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85046" title="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVppsCGANCdGAAB5nGPcgAQ589.jpg" alt="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" title="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" src="images/rAoKNVppsCGANCdGAAB5nGPcgAQ589.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2550" target="_blank" title="北京M-Space场馆">北京M-Space场馆</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85046" title="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" target="_blank">2018.04.07 19:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85046" title="【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站" target="_blank">【万有音乐系】MIYAVI（雅）“DAY2” 2018巡回演唱会 北京站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">北京</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">480</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85224" title="2018罗志祥疯狂世界巡回演唱会厦门站" target="_blank">
                            
              <img class="item-img" delayload="images/rAoKNVqmH02ADLtCAAEF8x3Wpb4765.jpg" alt="2018罗志祥疯狂世界巡回演唱会厦门站" title="2018罗志祥疯狂世界巡回演唱会厦门站" src="http://image.juooo.com/group1/M00/01/BD/rAoKNVqmH02ADLtCAAEF8x3Wpb4765.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/970" target="_blank" title="厦门集美嘉庚体育馆">厦门集美嘉庚体育馆</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85224" title="2018罗志祥疯狂世界巡回演唱会厦门站" target="_blank">2018.05.26 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85224" title="2018罗志祥疯狂世界巡回演唱会厦门站" target="_blank">2018罗志祥疯狂世界巡回演唱会厦门站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">厦门</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">280</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85154" title="【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVqqPsGAfNuwAAD0lTCQO8U609.jpg" alt="【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站" title="【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站" src="images/rAoKNVqqPsGAfNuwAAD0lTCQO8U609.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/308" target="_blank" title="糖果TANGO">糖果TANGO</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85154" title="【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站" target="_blank">2018.06.15 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85154" title="【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站" target="_blank">【万有音乐系】SCANDAL TOUR 2018'HONEY' IN BEIJING '亲爱的'史坎朵2018巡演-北京站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">北京</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">480</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82865" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVpm79OAKhdPAACHMT17x2M701.jpg" alt="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站" src="http://image.juooo.com/group1/M00/00/F9/rAoKmVpm79OAKhdPAACHMT17x2M701.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/199" target="_blank" title="杭州剧院">杭州剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82865" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站" target="_blank">2018.05.05 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/82865" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站" target="_blank">【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">杭州</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">99</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84827" title="2018许冠杰巡回演唱会-上海站（母亲节专场）" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVqver2ANUnVAADY3vZdWmU564.jpg" alt="2018许冠杰巡回演唱会-上海站（母亲节专场）" title="2018许冠杰巡回演唱会-上海站（母亲节专场）" src="images/rAoKNVqver2ANUnVAADY3vZdWmU564.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2434" target="_blank" title="国家会展中心（上海）虹馆EH">国家会展中心（上海）虹馆EH</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84827" title="2018许冠杰巡回演唱会-上海站（母亲节专场）" target="_blank">2018.05.13 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/84827" title="2018许冠杰巡回演唱会-上海站（母亲节专场）" target="_blank">2018许冠杰巡回演唱会-上海站（母亲节专场）</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">上海</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">280</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84156" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVplt4WAKikeAACTXfkqzyg342.jpg" alt="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站" src="images/rAoKNVplt4WAKikeAACTXfkqzyg342.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/499" target="_blank" title="大连开发区大剧院">大连开发区大剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84156" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站" target="_blank">2018.05.05 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/84156" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站" target="_blank">【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">大连</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">100</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85049" title="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" target="_blank">
                            
              <img class="item-img" delayload="images/rAoKNVqWh2aACcbFAACTjW-DYho064.jpg" alt="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" title="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" src="images/rAoKNVqWh2aACcbFAACTjW-DYho064.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/251" target="_blank" title="武汉体育中心体育馆（沌口）">武汉体育中心体育馆（沌口）</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85049" title="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" target="_blank">2018.04.13 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85049" title="2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站" target="_blank">2018杨宗纬 '声声声声'VOCAL 巡唱PLUS-武汉站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">武汉</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">280</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85167" title="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" target="_blank">
                            
              <img class="item-img" delayload="images/rAoKmVqfxFyAeWuRAAFlyABLwt4325.jpg" alt="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" title="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" src="images/rAoKmVqfxFyAeWuRAAFlyABLwt4325.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2350" target="_blank" title="绍兴柯桥中国轻纺城体育中心(体育场)">绍兴柯桥中国轻纺城体育中心(体育场)</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85167" title="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" target="_blank">2018.04.01 19:50</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/85167" title="张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站" target="_blank">张学友「A CLASSIC TOUR学友.经典」世界巡回演唱会 绍兴站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">绍兴</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">380</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83553" title="陈慧娴《Priscilla-ism》演唱会佛山站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVpUd2qAZQtSAACJ44Mak5o099.jpg" alt="陈慧娴《Priscilla-ism》演唱会佛山站" title="陈慧娴《Priscilla-ism》演唱会佛山站" src="images/rAoKmVpUd2qAZQtSAACJ44Mak5o099.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/143" target="_blank" title="佛山市岭南明珠体育馆">佛山市岭南明珠体育馆</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83553" title="陈慧娴《Priscilla-ism》演唱会佛山站" target="_blank">2018.04.21 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/83553" title="陈慧娴《Priscilla-ism》演唱会佛山站" target="_blank">陈慧娴《Priscilla-ism》演唱会佛山站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">佛山</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">280</span>起
              </div>
          </div>
      </div>
      
</li>
   				 </ul>
				 <!--推荐演出end-->
				
                 <!-- 热门明星 one  演出资讯 two-->
                 <ul class="list-2 margin-top50 margin-bottom50">
                 	<!--one-->
                 	<li class="list-item padding-right16"> 
                 		                 		<div class="media-horizontal ">
     <div class="media-title-wrap">
         <div class="media-title">热门明星</div>
         	         <div class="media-more" id="3">
	             		             <ul class="pagination-wrap circle" data-indicators="swipe-indicators">
		             	 		             	 			                  <li class="item" data-target="#swipe-hot-star-one" data-slide-to="0">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             	 			                  <li class="item active" data-target="#swipe-hot-star-one" data-slide-to="1">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             	 			                  <li class="item" data-target="#swipe-hot-star-one" data-slide-to="2">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             </ul>
	             	         </div>
              </div>

	<div class="swipe slide" id="swipe-hot-star-one" data-ride="swipe">
		<div class="swipe-inner">
    					        <div class="media-style-1 item">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/3799" target="_blank" title="简弘亦">
                        <img class="media-img" delayload="images/rAoKNVplXEeAE2gzAABwNg6skoY877.jpg" title="简弘亦" src="images/rAoKNVplXEeAE2gzAABwNg6skoY877.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-primary" href="../run/star.htmlshow/3799" target="_blank">简弘亦</a></div>
                <div class="media-img-info">歌手大陆</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-primary" href="http://search.juooo.com//?k=%E7%AE%80%E5%BC%98%E4%BA%A6" target="_blank">【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-北京站</a></p>
                <p class="media-right-info">
                    <span class="c-danger">7</span>场演出
                    <a class="link-primary c-999" href="http://search.juooo.com/?k=简弘亦" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-10" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84709" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-北京站"></a>
                            <a class=" link station" href="http://item.juooo.com/84709" target="_blank">北京</a>
                            <p>2018.04.28</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/82865" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-杭州站"></a>
                            <a class=" link station" href="http://item.juooo.com/82865" target="_blank">杭州</a>
                            <p>2018.05.05</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84092" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-广州"></a>
                            <a class=" link station" href="http://item.juooo.com/84092" target="_blank">广州</a>
                            <p>2018.05.11</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82191" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会--深圳"></a>
                            <a class=" link station" href="http://item.juooo.com/82191" target="_blank">深圳</a>
                            <p>2018.05.13</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/85321" target="_blank" class="cylinder" title="南京市文化消费政府补贴剧目【万有音乐系】简弘亦 2018巡回演唱会--南京站"></a>
                            <a class=" link station" href="http://item.juooo.com/85321" target="_blank">南京</a>
                            <p>2018.05.18</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82619" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-上海站"></a>
                            <a class=" link station" href="http://item.juooo.com/82619" target="_blank">上海</a>
                            <p>2018.05.19</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83467" target="_blank" class="cylinder" title="【万有音乐系】简弘亦“柔软的国”2018巡回演唱会-长沙站"></a>
                            <a class=" link station" href="http://item.juooo.com/83467" target="_blank">长沙</a>
                            <p>2018.06.02</p>
                            
                        </li>
                                            </ul>
					                    <div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-10"></div>
                    <div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-10"></div>
                	                </div>
            </div>
                    </div>
        		        <div class="media-style-1 item active">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/3549" target="_blank" title="刘瑞琦">
                        <img class="media-img" delayload="images/20160603161310483.jpg" title="刘瑞琦" src="images/20160603161310483.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-primary" href="../run/star.htmlshow/3549" target="_blank">刘瑞琦</a></div>
                <div class="media-img-info">歌手大陆</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-primary" href="http://search.juooo.com//?k=%E5%88%98%E7%91%9E%E7%90%A6" target="_blank">刘瑞琦“温暖的房间”2018巡回演唱会-太原站</a></p>
                <p class="media-right-info">
                    <span class="c-danger">8</span>场演出
                    <a class="link-primary c-999" href="http://search.juooo.com/?k=刘瑞琦" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-11" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item  expired">
                            <a href="http://item.juooo.com/82437" target="_blank" class="cylinder" title="刘瑞琦“温暖的房间”2018巡回演唱会-太原站"></a>
                            <a class=" link station" href="http://item.juooo.com/82437" target="_blank">太原</a>
                            <p>2018.01.06</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84156" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-大连站"></a>
                            <a class=" link station" href="http://item.juooo.com/84156" target="_blank">大连</a>
                            <p>2018.05.05</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84345" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-昆明站"></a>
                            <a class=" link station" href="http://item.juooo.com/84345" target="_blank">昆明</a>
                            <p>2018.05.19</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84601" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲演唱会-哈尔滨站"></a>
                            <a class=" link station" href="http://item.juooo.com/84601" target="_blank">哈尔</a>
                            <p>2018.06.02</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84760" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会—沈阳站"></a>
                            <a class=" link station" href="http://item.juooo.com/84760" target="_blank">沈阳</a>
                            <p>2018.06.09</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83658" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-石家庄站"></a>
                            <a class=" link station" href="http://item.juooo.com/83658" target="_blank">石家</a>
                            <p>2018.06.16</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84887" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-佛山站"></a>
                            <a class=" link station" href="http://item.juooo.com/84887" target="_blank">佛山</a>
                            <p>2018.07.14</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/85104" target="_blank" class="cylinder" title="【万有音乐系】刘瑞琦“温暖的房间”2018亚洲巡回演唱会-合肥站"></a>
                            <a class=" link station" href="http://item.juooo.com/85104" target="_blank">合肥</a>
                            <p>2018.07.21</p>
                            
                        </li>
                                            </ul>
					                    <div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-11"></div>
                    <div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-11"></div>
                	                </div>
            </div>
                    </div>
        		        <div class="media-style-1 item">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/743" target="_blank" title="谭咏麟">
                        <img class="media-img" delayload="images/rAoKOVh0WbuAObv-AAAaIFeBM6Q206.jpg" title="谭咏麟" src="images/rAoKOVh0WbuAObv-AAAaIFeBM6Q206.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-primary" href="../run/star.htmlshow/743" target="_blank">谭咏麟</a></div>
                <div class="media-img-info">歌手港澳台</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-primary" href="http://search.juooo.com//?k=%E8%B0%AD%E5%92%8F%E9%BA%9F" target="_blank">谭咏麟银河岁月40载中国巡回演唱会2018—中山站</a></p>
                <p class="media-right-info">
                    <span class="c-danger">2</span>场演出
                    <a class="link-primary c-999" href="http://search.juooo.com/?k=谭咏麟" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-12" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item  expired active">
                            <a href="http://item.juooo.com/83649" target="_blank" class="cylinder" title="谭咏麟银河岁月40载中国巡回演唱会2018—中山站"></a>
                            <a class=" link station" href="http://item.juooo.com/83649" target="_blank">中山</a>
                            <p>2018.03.17</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item  expired active">
                            <a href="http://item.juooo.com/82948" target="_blank" class="cylinder" title="谭咏麟银河岁月40载巡回演唱会2018·天津站"></a>
                            <a class=" link station" href="http://item.juooo.com/82948" target="_blank">天津</a>
                            <p>2018.03.24</p>
                            
                        </li>
                                            </ul>
					                </div>
            </div>
                    </div>
            </div>
	</div>
    
</div>
                 	</li>
                    <!--one end-->
					
					<!--two-->
					<li class="list-item padding-left16 ">
						                 		<div class="media-horizontal">
    <div class="media-title-wrap">
        <div class="media-title">演出资讯</div>
        <a class="media-more icon icon-arrow-up" href="../news/newslist.html35" target="_blank"></a>
    </div>

    <div class="media-style-4">
    	    	        <div class="media-top">
            <div class="media-img-wrap">
                <a class="block" href="../juooo/index.htmlnews/show/25829" target="_blank">
                    <img class="media-img" delayload="images/rAoKmVpxNBGABszVAAAszRKyf-U015.jpg" title="新春福利@你丨陈慧娴佛山演唱会限量套票来袭，速抢！！！" src="images/rAoKmVpxNBGABszVAAAszRKyf-U015.jpg">
                </a>
            </div>
            <div class="media-img-detail">
                <div class="media-img-title">
                    <a class="link-primary" target="_blank" title="新春福利@你丨陈慧娴佛山演唱会限量套票来袭，速抢！！！" href="../juooo/index.htmlnews/show/25829">新春福利@你丨陈慧娴佛山演唱会限量套票来袭，速抢！！！</a>
                </div>
                <div class="media-img-info">
                	 腊八过完了
大雪下起来了
眼瞅着票圈里的雪景秀了一遍又一遍
晒雪景晒雪人晒冰雕
甚至还有人晒雪人版蛙儿砸……
晒的忘乎所以了                </div>
            </div>
        </div>
        <div class="media-bottom">
            <ul class="block-list block-list-single">
            	            	            	                <li class="list-item">
                    <a class="link-primary" target="_blank" title="歌坛40载演唱会不断，" 校长"谭咏麟"年年皆为二十五""="" href="../juooo/index.htmlnews/show/25772">
                        <span class="bullet-circle"></span>
                        歌坛40载演唱会不断，"校长"谭咏麟"年年皆为二十五"                    </a>
                </li>
                            	                <li class="list-item">
                    <a class="link-primary" target="_blank" title="2018李宇春北京演唱会 新专辑《流行》演唱会即将到来" href="../juooo/index.htmlnews/show/25769">
                        <span class="bullet-circle"></span>
                        2018李宇春北京演唱会 新专辑《流行》演唱会即将到来                    </a>
                </li>
                            </ul>
        </div>
           </div>
   
</div>
                     					</li>
					<!--two end-->

                 </ul>
                 <!-- 热门明星 演出资讯 END -->

                 <div class="panel-bottom">
                     <a class="circle-btn" href="../juooo/index.htmlpopular" target="_blank">查看更多<span class="icon icon-arrow-up"></span></a>
                 </div>
             </div>
             <!-- 演出列表 END -->
         </div>
     </div>
     <!-- 演唱会 END -->

        <!-- 民谣&摇滚 -->
        <div class="panel panel-danger " data-id="icon-target">
            <div class="w-default">
                <!-- 热搜词部分 -->
                <div class="block-title-wrap">
                    <div class="block-title">民谣&摇滚</div>
                       				 	<div class="block-title-info">
		 
			<a class="info-item" href="http://search.juooo.com/?k=%E9%BA%A6%E6%96%AF%E7%B1%B3%E5%85%B0" target="_blank">麦斯米兰</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E8%8B%8F%E8%8F%B2%C2%B7%E7%8F%8A%E6%9B%BC%E5%A6%AE" target="_blank">苏菲·珊曼妮</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E6%89%93%E6%89%B0%E4%B8%80%E4%B8%8B" target="_blank">打扰一下</a>
			<a class="info-item" href="http://search.juooo.com/?k=Keren+An" target="_blank">Keren An</a>
	                 	
</div>                </div>
                <!-- 热搜词部分 END -->

                <!-- 演出列表部分 -->
                <div class="panel-content">
                
                	<!--推荐演出 -->
                	<ul class="list list-5 ">
		             			   				<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84064" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVphZRKAJdDkAACx3hyCtRA616.jpg" alt="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" src="images/rAoKmVphZRKAJdDkAACx3hyCtRA616.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2298" target="_blank" title="正火艺术中心1号馆">正火艺术中心1号馆</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84064" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" target="_blank">2018.04.13 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-danger" href="http://item.juooo.com/84064" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站" target="_blank">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">成都</div>
              </div>
              <div class="item-right price price-danger">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">199</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82875" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVoo-9KAWl4DAABn3d17voE595.jpg" alt="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" src="images/rAoKNVoo-9KAWl4DAABn3d17voE595.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/990" target="_blank" title="昆明胜利堂剧院">昆明胜利堂剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82875" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" target="_blank">2018.06.28 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-danger" href="http://item.juooo.com/82875" title="【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会" target="_blank">【万有音乐系】My Song--Sophie Zelmani 苏菲 · 珊曼妮2018巡回演唱会</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">昆明</div>
              </div>
              <div class="item-right price price-danger">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">100</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82891" title="【万有音乐系】Keren Ann 2018 中国巡演-深圳" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVoo_DSAO47pAABkrdGWhMo017.jpg" alt="【万有音乐系】Keren Ann 2018 中国巡演-深圳" title="【万有音乐系】Keren Ann 2018 中国巡演-深圳" src="images/rAoKNVoo_DSAO47pAABkrdGWhMo017.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1078" target="_blank" title="南山文体中心剧院大剧院">南山文体中心剧院大剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82891" title="【万有音乐系】Keren Ann 2018 中国巡演-深圳" target="_blank">2018.04.29 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-danger" href="http://item.juooo.com/82891" title="【万有音乐系】Keren Ann 2018 中国巡演-深圳" target="_blank">【万有音乐系】Keren Ann 2018 中国巡演-深圳</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-danger">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">180</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82034" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVnpnQyAXy1JAABYOJPzD50405.jpg" alt="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站" src="images/rAoKmVnpnQyAXy1JAABYOJPzD50405.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/165" target="_blank" title="VOX LIVEHOUSE（武昌店）">VOX LIVEHOUSE（武昌店）</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82034" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站" target="_blank">2018.05.06 20:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-danger" href="http://item.juooo.com/82034" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站" target="_blank">【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">武汉</div>
              </div>
              <div class="item-right price price-danger">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">280</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82744" title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVoyJ3aAPcSBAACNsaqVNy4383.jpg" alt="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站" title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站" src="images/rAoKmVoyJ3aAPcSBAACNsaqVNy4383.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1078" target="_blank" title="南山文体中心剧院大剧院">南山文体中心剧院大剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82744" title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站" target="_blank">2018.05.26 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-danger" href="http://item.juooo.com/82744" title="【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站" target="_blank">【万有音乐系】“远扬十年·海角重现”岛歌王子中孝介2018巡回演唱会--深圳站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-danger">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">180</span>起
              </div>
          </div>
      </div>
      
</li>
	   				</ul>
				 	<!--推荐演出end-->
                   
				
                    <!-- 热门明星one 演出专题two -->
                    <ul class="list-2 margin-top50 margin-bottom50">
                       	<!--one-->
                       	<li class="list-item padding-right16  "> 
	                       		                 		<div class="media-horizontal ">
     <div class="media-title-wrap">
         <div class="media-title">热门明星</div>
         	         <div class="media-more" id="3">
	             		             <ul class="pagination-wrap circle" data-indicators="swipe-indicators">
		             	 		             	 			                  <li class="item" data-target="#swipe-hot-star-two" data-slide-to="0">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             	 			                  <li class="item active" data-target="#swipe-hot-star-two" data-slide-to="1">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             	 			                  <li class="item" data-target="#swipe-hot-star-two" data-slide-to="2">
			                  	<a class="" data-target="" href=""></a>
			                  </li>
		                 		             </ul>
	             	         </div>
              </div>

	<div class="swipe slide" id="swipe-hot-star-two" data-ride="swipe">
		<div class="swipe-inner">
    					        <div class="media-style-1 item">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/3441" target="_blank" title="打扰一下乐团">
                        <img class="media-img" delayload="images/20160104135913220.jpg" title="打扰一下乐团" src="images/20160104135913220.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-danger" href="../run/star.htmlshow/3441" target="_blank">打扰一下乐团</a></div>
                <div class="media-img-info">歌手大陆</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-danger" href="http://search.juooo.com//?k=%E6%89%93%E6%89%B0%E4%B8%80%E4%B8%8B%E4%B9%90%E5%9B%A2" target="_blank">【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站</a></p>
                <p class="media-right-info">
                    <span class="c-danger">6</span>场演出
                    <a class="link-danger c-999" href="http://search.juooo.com/?k=打扰一下乐团" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-20" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84064" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-成都站"></a>
                            <a class=" link station" href="http://item.juooo.com/84064" target="_blank">成都</a>
                            <p>2018.04.13</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84341" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-重庆站"></a>
                            <a class=" link station" href="http://item.juooo.com/84341" target="_blank">重庆</a>
                            <p>2018.04.14</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84062" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-深圳站"></a>
                            <a class=" link station" href="http://item.juooo.com/84062" target="_blank">深圳</a>
                            <p>2018.04.21</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83939" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-广州站"></a>
                            <a class=" link station" href="http://item.juooo.com/83939" target="_blank">广州</a>
                            <p>2018.04.22</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84476" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-杭州站"></a>
                            <a class=" link station" href="http://item.juooo.com/84476" target="_blank">杭州</a>
                            <p>2018.04.27</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83910" target="_blank" class="cylinder" title="【万有音乐系】打扰一下2018新专辑《闲人免进》音乐分享会-上海站	"></a>
                            <a class=" link station" href="http://item.juooo.com/83910" target="_blank">上海</a>
                            <p>2018.04.28</p>
                            
                        </li>
                                            </ul>
					                    <div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-20"></div>
                    <div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-20"></div>
                	                </div>
            </div>
                    </div>
        		        <div class="media-style-1 item active">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/2536" target="_blank" title="Keren Ann">
                        <img class="media-img" delayload="images/20121230161849813.jpg" title="Keren Ann" src="images/20121230161849813.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-danger" href="../run/star.htmlshow/2536" target="_blank">Keren Ann</a></div>
                <div class="media-img-info">歌手欧美</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-danger" href="http://search.juooo.com//?k=Keren+Ann" target="_blank">【万有音乐系】keren Ann凯伦·安2018巡演-北京站</a></p>
                <p class="media-right-info">
                    <span class="c-danger">8</span>场演出
                    <a class="link-danger c-999" href="http://search.juooo.com/?k=Keren Ann" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-21" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84758" target="_blank" class="cylinder" title="【万有音乐系】keren Ann凯伦·安2018巡演-北京站"></a>
                            <a class=" link station" href="http://item.juooo.com/84758" target="_blank">北京</a>
                            <p>2018.04.19</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/84833" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-上海站"></a>
                            <a class=" link station" href="http://item.juooo.com/84833" target="_blank">上海</a>
                            <p>2018.04.20</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/83556" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-无锡站"></a>
                            <a class=" link station" href="http://item.juooo.com/83556" target="_blank">无锡</a>
                            <p>2018.04.21</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83545" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-杭州站"></a>
                            <a class=" link station" href="http://item.juooo.com/83545" target="_blank">杭州</a>
                            <p>2018.04.22</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83700" target="_blank" class="cylinder" title="【场地变更】【万有音乐系】Keren Ann 2018 中国巡演-重庆站"></a>
                            <a class=" link station" href="http://item.juooo.com/83700" target="_blank">重庆</a>
                            <p>2018.04.26</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84014" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-成都站"></a>
                            <a class=" link station" href="http://item.juooo.com/84014" target="_blank">成都</a>
                            <p>2018.04.27</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84007" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-广州站"></a>
                            <a class=" link station" href="http://item.juooo.com/84007" target="_blank">广州</a>
                            <p>2018.04.28</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82891" target="_blank" class="cylinder" title="【万有音乐系】Keren Ann 2018 中国巡演-深圳"></a>
                            <a class=" link station" href="http://item.juooo.com/82891" target="_blank">深圳</a>
                            <p>2018.04.29</p>
                            
                        </li>
                                            </ul>
					                    <div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-21"></div>
                    <div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-21"></div>
                	                </div>
            </div>
                    </div>
        		        <div class="media-style-1 item">
            
            <div class="media-left">
                <div class="media-img-wrap">
                    <a class="block" href="../run/star.htmlshow/1833" target="_blank" title="麦斯米兰">
                        <img class="media-img" delayload="images/rAoKNVh0S3eAPa1-AAEgrv47Jjs832.jpg" title="麦斯米兰" src="images/rAoKNVh0S3eAPa1-AAEgrv47Jjs832.jpg">
                    </a>
                </div>
                <div class="media-img-title"><a class="link-danger" href="../run/star.htmlshow/1833" target="_blank">麦斯米兰</a></div>
                <div class="media-img-info">歌手欧美</div>
            </div>
            
                        <div class="media-right">	
            	                <p class="media-right-title"><a class="link-danger" href="http://search.juooo.com//?k=%E9%BA%A6%E6%96%AF%E7%B1%B3%E5%85%B0" target="_blank">【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海&nbsp;2018巡回演唱会-上海站 </a></p>
                <p class="media-right-info">
                    <span class="c-danger">16</span>场演出
                    <a class="link-danger c-999" href="http://search.juooo.com/?k=麦斯米兰" target="_blank">[查看]</a>
                </p>
                
                <div class="tab-slide slide-style-1" id="tab-slide-22" data-ride="tab-slide">
                    <ul class="list-3 js-hot-star">
                    	                    	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/83554" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海&nbsp;2018巡回演唱会-上海站 "></a>
                            <a class=" link station" href="http://item.juooo.com/83554" target="_blank">上海</a>
                            <p>2018.04.18</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/83543" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-杭州站"></a>
                            <a class=" link station" href="http://item.juooo.com/83543" target="_blank">杭州</a>
                            <p>2018.04.20</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item active">
                            <a href="http://item.juooo.com/82189" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 Sea of Silence 寂静如海 2018巡回演唱会"></a>
                            <a class=" link station" href="http://item.juooo.com/82189" target="_blank">宁波</a>
                            <p>2018.04.21</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83613" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰  " sea="" of="" silence"="" 寂静如海="" 2018巡回演唱会-石家庄站"=""></a>
                            <a class=" link station" href="http://item.juooo.com/83613" target="_blank">石家</a>
                            <p>2018.04.22</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83751" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-合肥站"></a>
                            <a class=" link station" href="http://item.juooo.com/83751" target="_blank">合肥</a>
                            <p>2018.04.24</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82169" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会"></a>
                            <a class=" link station" href="http://item.juooo.com/82169" target="_blank">深圳</a>
                            <p>2018.04.27</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83509" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-东莞站"></a>
                            <a class=" link station" href="http://item.juooo.com/83509" target="_blank">东莞</a>
                            <p>2018.04.28</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83642" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-广州站"></a>
                            <a class=" link station" href="http://item.juooo.com/83642" target="_blank">广州</a>
                            <p>2018.04.29</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/85081" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-昆明站"></a>
                            <a class=" link station" href="http://item.juooo.com/85081" target="_blank">昆明</a>
                            <p>2018.05.02</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83444" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-成都站"></a>
                            <a class=" link station" href="http://item.juooo.com/83444" target="_blank">成都</a>
                            <p>2018.05.04</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82936" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-重庆站"></a>
                            <a class=" link station" href="http://item.juooo.com/82936" target="_blank">重庆</a>
                            <p>2018.05.05</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/82034" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会——武汉站"></a>
                            <a class=" link station" href="http://item.juooo.com/82034" target="_blank">武汉</a>
                            <p>2018.05.06</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83367" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence”寂静如海 2018巡回演唱会-长沙站"></a>
                            <a class=" link station" href="http://item.juooo.com/83367" target="_blank">长沙</a>
                            <p>2018.05.09</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83491" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰 “Sea of Silence” 寂静如海 2018巡回演唱会-西安站"></a>
                            <a class=" link station" href="http://item.juooo.com/83491" target="_blank">西安</a>
                            <p>2018.05.11</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/84932" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会-天津站"></a>
                            <a class=" link station" href="http://item.juooo.com/84932" target="_blank">天津</a>
                            <p>2018.05.12</p>
                            
                        </li>
                                            	                        <li class="list-item tab-item">
                            <a href="http://item.juooo.com/83066" target="_blank" class="cylinder" title="【万有音乐系】麦斯米兰“Sea of Silence”寂静如海 2018巡回演唱会"></a>
                            <a class=" link station" href="http://item.juooo.com/83066" target="_blank">北京</a>
                            <p>2018.05.13</p>
                            
                        </li>
                                            </ul>
					                    <div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-22"></div>
                    <div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-22"></div>
                	                </div>
            </div>
                    </div>
            </div>
	</div>
    
</div>
                    	</li>
                    	<!--one end-->

                        <li class="list-item padding-left16 ">
                        	                            <div class="media-horizontal ">
                                <div class="media-title-wrap">
                                    <div class="media-title">专题推荐</div>
                                    <a class="title-more icon icon-arrow-up" href="http://zhuanti.juooo.com/" title="专题推荐" target="_blank"></a>
                                </div>
                                <div class="media-style-2">
                                	<div class="swipe slide" id="swipe-special" data-ride="swipe">
	                                	<div class="swipe-inner">
	                                    	                                    	                                    	 <div class="item active">
	                                            <div class="media-left">
	                                                <div class="media-img-wrap">
	                                                    <a class="block" target="_blank" title="城市戏剧节，666元极致乐享通票" href="http://zhuanti.juooo.com/zhuanti/2017/drama/">
	                                                        <img class="media-img" delayload="images/rAoKNVpcgcKAd9Y_AAA5hZRO6rs439.jpg" alt="城市戏剧节，666元极致乐享通票" title="城市戏剧节，666元极致乐享通票" src="http://image.juooo.com/group1/M00/01/99/rAoKNVpcgcKAd9Y_AAA5hZRO6rs439.jpg">
	                                                    </a>
	                                                </div>
	                                            </div>
	                                            <div class="media-right">
	                                                <div class="media-right-title">
	                                                    <a class="link-danger" target="_blank" title="城市戏剧节，666元极致乐享通票" href="http://zhuanti.juooo.com/zhuanti/2017/drama/">城市戏剧节，666元极致乐享通票</a>
	                                                </div>
	                                                <div class="show-detail">
	                                                    <a class="rect-btn btn-danger block" target="_blank" title="城市戏剧节，666元极致乐享通票" href="http://zhuanti.juooo.com/zhuanti/2017/drama/">了解详情</a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    	                                    	                                    	 <div class="item">
	                                            <div class="media-left">
	                                                <div class="media-img-wrap">
	                                                    <a class="block" target="_blank" title="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演" href="http://zhuanti.juooo.com/zhuanti/2017/rent/">
	                                                        <img class="media-img" delayload="images/rAoKmVoBRmuAOrD3AABR5D4srDU480.jpg" alt="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演" title="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演" src="images/rAoKmVoBRmuAOrD3AABR5D4srDU480.jpg">
	                                                    </a>
	                                                </div>
	                                            </div>
	                                            <div class="media-right">
	                                                <div class="media-right-title">
	                                                    <a class="link-danger" target="_blank" title="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演" href="http://zhuanti.juooo.com/zhuanti/2017/rent/">百老汇原版摇滚音乐剧《吉屋出租》20周年巡演</a>
	                                                </div>
	                                                <div class="show-detail">
	                                                    <a class="rect-btn btn-danger block" target="_blank" title="百老汇原版摇滚音乐剧《吉屋出租》20周年巡演" href="http://zhuanti.juooo.com/zhuanti/2017/rent/">了解详情</a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    	                                    	                                    	 <div class="item">
	                                            <div class="media-left">
	                                                <div class="media-img-wrap">
	                                                    <a class="block" target="_blank" title="音乐剧《罗密欧与朱丽叶》" href="http://zhuanti.juooo.com/zhuanti/2017/LZ/">
	                                                        <img class="media-img" delayload="images/rAoKNVmvk12AZ1HeAABVb7mht10378.jpg" alt="音乐剧《罗密欧与朱丽叶》" title="音乐剧《罗密欧与朱丽叶》" src="images/rAoKNVmvk12AZ1HeAABVb7mht10378.jpg">
	                                                    </a>
	                                                </div>
	                                            </div>
	                                            <div class="media-right">
	                                                <div class="media-right-title">
	                                                    <a class="link-danger" target="_blank" title="音乐剧《罗密欧与朱丽叶》" href="http://zhuanti.juooo.com/zhuanti/2017/LZ/">音乐剧《罗密欧与朱丽叶》</a>
	                                                </div>
	                                                <div class="show-detail">
	                                                    <a class="rect-btn btn-danger block" target="_blank" title="音乐剧《罗密欧与朱丽叶》" href="http://zhuanti.juooo.com/zhuanti/2017/LZ/">了解详情</a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    	                                    </div>
                                	</div>
                                    
                                    <div class="media-pagination">
                                        <ul class="pagination-wrap circle text-center" data-indicators="swipe-indicators">
                                        	                                        	                                        		<li class="item active" data-target="#swipe-special" data-slide-to="0">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        	                                        		<li class="item" data-target="#swipe-special" data-slide-to="1">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        	                                        		<li class="item" data-target="#swipe-special" data-slide-to="2">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        </ul>
                                    </div>
                                </div>
                            </div>
                                                    </li>
                    </ul>
                    <!-- 热门明星 专题 END -->

                    <div class="panel-bottom">
                        <a class="circle-btn" href="../juooo/index.htmlpopular">查看更多<span class="icon icon-arrow-up"></span></a>
                    </div>
                </div>
                <!-- 演出列表 END -->
            </div>
        </div>
        <!-- 民谣&摇滚 END -->

        <!-- 音乐会 -->
        <div class="panel panel-info bg-floor" data-id="icon-target">
            <div class="w-default">
                <!-- 标题部分 -->
                <div class="block-title-wrap">
                    <div class="block-title">音乐会</div>
                    	   				 		<div class="block-title-info">
		 
			<a class="info-item" href="http://search.juooo.com/?k=%E5%AE%AB%E5%B4%8E%E9%AA%8F" target="_blank">宫崎骏</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E9%82%93%E6%B3%B0%E5%B1%B1" target="_blank">邓泰山</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%8D%83%E4%B8%8E%E5%8D%83%E5%AF%BB" target="_blank">千与千寻</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E9%AD%94%E6%8C%87%E7%88%B7%E7%88%B7" target="_blank">魔指爷爷</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%9B%A0%E7%88%B1%E4%B9%8B%E5%90%8D" target="_blank">因爱之名</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E9%BE%99%E7%8C%AB" target="_blank">龙猫</a>
	                 	
</div>                </div>
                <!-- 标题部分 END -->

                <!-- 演出列表部分 -->
                <div class="panel-content">
                	<!--推荐演出 -->
                	<ul class="list list-5 ">
		             			   				<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83838" title="声动北美欢乐秀" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVpN4TiAGMcTAAClZPP-kQ0436.jpg" alt="声动北美欢乐秀" title="声动北美欢乐秀" src="images/rAoKNVpN4TiAGMcTAAClZPP-kQ0436.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2400" target="_blank" title="石家庄大剧院-大剧场">石家庄大剧院-大剧场</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83838" title="声动北美欢乐秀" target="_blank">2018.03.26 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-info" href="http://item.juooo.com/83838" title="声动北美欢乐秀" target="_blank">声动北美欢乐秀</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">石家</div>
              </div>
              <div class="item-right price price-info">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">50</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83721" title="因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVqnNUaAQ97tAACpvzbmKBA821.jpg" alt="因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会" title="因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会" src="images/rAoKNVqnNUaAQ97tAACpvzbmKBA821.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2536" target="_blank" title="乌兰牧骑宫音乐厅">乌兰牧骑宫音乐厅</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83721" title="因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会" target="_blank">2018.03.14 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-info" href="http://item.juooo.com/83721" title="因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会" target="_blank">因爱之名 俄罗斯吉他大师携手长笛女神 浪漫呈现吉他长笛音乐会</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">乌兰</div>
              </div>
              <div class="item-right price price-info">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">30</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83488" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg" alt="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" src="images/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2516" target="_blank" title="哈尔滨国际会展体育中心环球剧场大剧场">哈尔滨国际会展体育中心环球剧场大剧场</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83488" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" target="_blank">2018.03.09 19:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-info" href="http://item.juooo.com/83488" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" target="_blank">【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">哈尔</div>
              </div>
              <div class="item-right price price-info">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">60</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83452" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVo46POAEjjHAAB7ApdApzA138.jpg" alt="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" src="images/rAoKmVo46POAEjjHAAB7ApdApzA138.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2516" target="_blank" title="哈尔滨国际会展体育中心环球剧场大剧场">哈尔滨国际会展体育中心环球剧场大剧场</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83452" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" target="_blank">2018.04.15 19:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-info" href="http://item.juooo.com/83452" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" target="_blank">【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">哈尔</div>
              </div>
              <div class="item-right price price-info">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">50</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83726" title="流金岁月 卡洛斯 鲁本经典音乐会" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVpLWKmAQYneAACbCuqodDQ673.jpg" alt="流金岁月 卡洛斯 鲁本经典音乐会" title="流金岁月 卡洛斯 鲁本经典音乐会" src="images/rAoKmVpLWKmAQYneAACbCuqodDQ673.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2536" target="_blank" title="乌兰牧骑宫音乐厅">乌兰牧骑宫音乐厅</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83726" title="流金岁月 卡洛斯 鲁本经典音乐会" target="_blank">2018.04.18 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-info" href="http://item.juooo.com/83726" title="流金岁月 卡洛斯 鲁本经典音乐会" target="_blank">流金岁月 卡洛斯 鲁本经典音乐会</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">乌兰</div>
              </div>
              <div class="item-right price price-info">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">30</span>起
              </div>
          </div>
      </div>
      
</li>
	   				</ul>
				 	<!--推荐演出end-->
                
                    <!-- 一周排行 演出资讯 -->
                    <ul class="list-2 margin-top50 margin-bottom50">
                        <li class="list-item padding-right16 ">
                            <div class="media-horizontal">
                                <div class="media-title-wrap">
                                    <div class="media-title">一周排行</div>
                                </div>

                                <div class="media-style-3">
                                	                                    <ul class="list-2 tab-slide" id="tab-slide-8" data-ride="tab-slide">
                                                                        	                                    	                                        <li class="list-item padding-left14 tab-item active">
                                            <div class="media-wrap">
                                                <div class="media-left">01</div>
                                                <div class="media-center media-img-wrap">
                                                    <a class="block" href="http://item.juooo.com/83264" title="【万有音乐系】“哈尔的移动城堡”宫崎骏 久石让动漫试听系列主题音乐会-泉州站" target="_blank">
                                                        <img class="media-img" delayload="images/rAoKmVovixGABt8sAAC6JEj8hnM385.jpg" alt="【万有音乐系】“哈尔的移动城堡”宫崎骏 久石让动漫试听系列主题音乐会-泉州站" title="【万有音乐系】“哈尔的移动城堡”宫崎骏 久石让动漫试听系列主题音乐会-泉州站" src="images/rAoKmVovixGABt8sAAC6JEj8hnM385.jpg">
                                                    </a>
                                                </div>
                                                <div class="media-right">
                                                    <p class="media-right-title">
                                                        <a class="link-info" href="http://item.juooo.com/83264" title="【万有音乐系】“哈尔的移动城堡”宫崎骏 久石让动漫试听系列主题音乐会-泉州站" target="_blank">【万有音乐系】“哈尔的移动城堡”宫崎骏 久石让动漫试听系列主题音乐会-泉州站</a>
                                                    </p>
                                                    <div class="price price-info">
                                                        <span class="price-kind">￥</span>
                                                        <span class="price-amount">100</span> 起
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
										                                    	                                    	                                        <li class="list-item padding-left14 tab-item active">
                                            <div class="media-wrap">
                                                <div class="media-left">02</div>
                                                <div class="media-center media-img-wrap">
                                                    <a class="block" href="http://item.juooo.com/83488" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" target="_blank">
                                                        <img class="media-img" delayload="images/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg" alt="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" src="images/rAoKNVonWYSADp9SAACi7J_NjEs435.jpg">
                                                    </a>
                                                </div>
                                                <div class="media-right">
                                                    <p class="media-right-title">
                                                        <a class="link-info" href="http://item.juooo.com/83488" title="【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会" target="_blank">【万有音乐系】“天空之城”宫崎骏·久石让动漫视听系列主题音乐会</a>
                                                    </p>
                                                    <div class="price price-info">
                                                        <span class="price-kind">￥</span>
                                                        <span class="price-amount">60</span> 起
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
										                                    	                                    	                                        <li class="list-item padding-left14 tab-item ">
                                            <div class="media-wrap">
                                                <div class="media-left">03</div>
                                                <div class="media-center media-img-wrap">
                                                    <a class="block" href="http://item.juooo.com/83452" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" target="_blank">
                                                        <img class="media-img" delayload="images/rAoKmVo46POAEjjHAAB7ApdApzA138.jpg" alt="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" src="images/rAoKmVo46POAEjjHAAB7ApdApzA138.jpg">
                                                    </a>
                                                </div>
                                                <div class="media-right">
                                                    <p class="media-right-title">
                                                        <a class="link-info" href="http://item.juooo.com/83452" title="【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演" target="_blank">【万有音乐系】“魔指爷爷之音乐聆画”瑞士魏纳·佰奇2018钢琴巡演</a>
                                                    </p>
                                                    <div class="price price-info">
                                                        <span class="price-kind">￥</span>
                                                        <span class="price-amount">50</span> 起
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
										                                    	                                    	                                        <li class="list-item padding-left14 tab-item ">
                                            <div class="media-wrap">
                                                <div class="media-left">04</div>
                                                <div class="media-center media-img-wrap">
                                                    <a class="block" href="http://item.juooo.com/83177" title="【万有音乐系】肖邦传奇——邓泰山钢琴独奏音乐会" target="_blank">
                                                        <img class="media-img" delayload="images/rAoKNVi_aTmAYz4ZAAFh5dFT3sY007.jpg" alt="【万有音乐系】肖邦传奇——邓泰山钢琴独奏音乐会" title="【万有音乐系】肖邦传奇——邓泰山钢琴独奏音乐会" src="images/rAoKNVi_aTmAYz4ZAAFh5dFT3sY007.jpg">
                                                    </a>
                                                </div>
                                                <div class="media-right">
                                                    <p class="media-right-title">
                                                        <a class="link-info" href="http://item.juooo.com/83177" title="【万有音乐系】肖邦传奇——邓泰山钢琴独奏音乐会" target="_blank">【万有音乐系】肖邦传奇——邓泰山钢琴独奏音乐会</a>
                                                    </p>
                                                    <div class="price price-info">
                                                        <span class="price-kind">￥</span>
                                                        <span class="price-amount">50</span> 起
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
										                                    	                                    	                                        <li class="list-item padding-left14 tab-item ">
                                            <div class="media-wrap">
                                                <div class="media-left">05</div>
                                                <div class="media-center media-img-wrap">
                                                    <a class="block" href="http://item.juooo.com/81332" title="深圳交响乐团2017-2018年音乐季 一带经典系列--“复活”" target="_blank">
                                                        <img class="media-img" delayload="images/rAoKNVmjhtSAYfVrAACWtq8-gLc822.jpg" alt="深圳交响乐团2017-2018年音乐季 一带经典系列--“复活”" title="深圳交响乐团2017-2018年音乐季 一带经典系列--“复活”" src="images/rAoKNVmjhtSAYfVrAACWtq8-gLc822.jpg">
                                                    </a>
                                                </div>
                                                <div class="media-right">
                                                    <p class="media-right-title">
                                                        <a class="link-info" href="http://item.juooo.com/81332" title="深圳交响乐团2017-2018年音乐季 一带经典系列--“复活”" target="_blank">深圳交响乐团2017-2018年音乐季 一带经典系列--“复活”</a>
                                                    </p>
                                                    <div class="price price-info">
                                                        <span class="price-kind">￥</span>
                                                        <span class="price-amount">50</span> 起
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
										                                    </ul>	
                                    
                                                                        	<div class="prev" data-direction="prev" data-toggle="tab-slide-list" data-target="#tab-slide-8"></div>
                                    	<div class="next" data-direction="next" data-toggle="tab-slide-list" data-target="#tab-slide-8"></div>
                                	                                </div>
                            </div>
                        </li>
						
						<!-- 音乐会资讯  -->
						<li class="list-item padding-left16 ">
								                 		<div class="media-horizontal">
    <div class="media-title-wrap">
        <div class="media-title">演出资讯</div>
        <a class="media-more icon icon-arrow-up" href="../news/newslist.html36" target="_blank"></a>
    </div>

    <div class="media-style-4">
    	    	        <div class="media-top">
            <div class="media-img-wrap">
                <a class="block" href="../juooo/index.htmlnews/show/25753" target="_blank">
                    <img class="media-img" delayload="images/rAoKmVpXLa-AQbgtAAA-QsyVK-s302.jpg" title="2018动漫主题音乐会《龙猫和他的小伙伴》系列巡演正在进行中！" src="images/rAoKmVpXLa-AQbgtAAA-QsyVK-s302.jpg">
                </a>
            </div>
            <div class="media-img-detail">
                <div class="media-img-title">
                    <a class="link-info" target="_blank" title="2018动漫主题音乐会《龙猫和他的小伙伴》系列巡演正在进行中！" href="../juooo/index.htmlnews/show/25753">2018动漫主题音乐会《龙猫和他的小伙伴》系列巡演正在进行中！</a>
                </div>
                <div class="media-img-info">
                	 森林里藏匿着一种神奇的生物，它的名字叫多多洛，也叫龙猫。2018年《龙猫和他的小伙伴》动漫主题音乐会正在各地巡演中，赶快加入这波回忆音乐会吧~
                </div>
            </div>
        </div>
        <div class="media-bottom">
            <ul class="block-list block-list-single">
            	            	            	                <li class="list-item">
                    <a class="link-info" target="_blank" title="2018年3月“千与千寻”宫崎骏·久石让动漫主题音乐会登录广州~" href="../juooo/index.htmlnews/show/25741">
                        <span class="bullet-circle"></span>
                        2018年3月“千与千寻”宫崎骏·久石让动漫主题音乐会登录广州~                    </a>
                </li>
                            	                <li class="list-item">
                    <a class="link-info" target="_blank" title="肖邦传奇—邓泰山钢琴独奏音乐会2018演出安排 附曲目单" href="../juooo/index.htmlnews/show/25695">
                        <span class="bullet-circle"></span>
                        肖邦传奇—邓泰山钢琴独奏音乐会2018演出安排 附曲目单                    </a>
                </li>
                            </ul>
        </div>
           </div>
   
</div>
                                             </li>
                        <!-- 音乐会资讯 END -->
                         
                    </ul>
                    <!-- 热门明星 演出资讯 END -->

                    <div class="panel-bottom">
                        <a class="circle-btn" href="../juooo/index.htmlclassical" target="_blank">查看更多 <span class="icon icon-arrow-up"></span></a>
                    </div>
                </div>
                <!-- 演出列表 END -->
            </div>
        </div>
        <!-- 音乐会 END -->

        <!-- 话剧 -->
        <div class="panel panel-primary " data-id="icon-target">
            <div class="w-default">
                <!-- 标题部分 -->
                <div class="block-title-wrap">
                    <!-- <div class="block-title">话剧&戏曲</div> -->
                    <div class="block-title">音乐剧&话剧</div>
                       				 	<div class="block-title-info">
		 
			<a class="info-item" href="http://search.juooo.com/?k=cats" target="_blank">cats</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%BD%97%E5%AF%86%E6%AC%A7%E4%B8%8E%E6%9C%B1%E4%B8%BD%E5%8F%B6" target="_blank">罗密欧与朱丽叶</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%BB%88%E6%88%90%E7%9C%B7%E5%B1%9E" target="_blank">终成眷属</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%99%BE%E8%80%81%E6%B1%87" target="_blank">百老汇</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%90%89%E5%B1%8B%E5%87%BA%E7%A7%9F" target="_blank">吉屋出租</a>
	                 	
</div>                </div>
                <!-- 标题部分 END -->

                <!-- 演出列表部分 -->
                
			 	
                <div class="panel-content">
                	<!--推荐演出 -->
                	<ul class="list list-5 ">
		             			   				<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83703" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" src="images/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2017" target="_blank" title="虹桥艺术中心剧院">虹桥艺术中心剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83703" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" target="_blank">2018.03.22 19:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/83703" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" target="_blank">澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">上海</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">80</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82185" title="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVoCbY2AW8tGAADZVO-9QdM992.jpg" alt="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" title="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" src="images/rAoKmVoCbY2AW8tGAADZVO-9QdM992.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/199" target="_blank" title="杭州剧院">杭州剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82185" title="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" target="_blank">2018.04.29 14:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/82185" title="法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站" target="_blank">法语原版经典音乐剧《罗密欧与朱丽叶》--杭州站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">杭州</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">180</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82014" title="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVntSC2ASHskAADrrpOgpu0379.jpg" alt="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" title="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" src="images/rAoKmVntSC2ASHskAADrrpOgpu0379.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/404" target="_blank" title="上汽·上海文化广场">上汽·上海文化广场</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82014" title="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" target="_blank">2018.09.02 14:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/82014" title="百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站" target="_blank">百老汇经典原版音乐剧《吉屋出租》RENT 二十周年巡演-上海站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">上海</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">80</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84792" title="2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVp4Wz-AVxOFAABYh3pMGpY545.jpg" alt="2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》" title="2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》" src="images/rAoKmVp4Wz-AVxOFAABYh3pMGpY545.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1079" target="_blank" title="南山文体中心剧院小剧院">南山文体中心剧院小剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84792" title="2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》" target="_blank">2018.05.26 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/84792" title="2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》" target="_blank">2018第五届城市戏剧节 莎翁经典X爱情喜剧《终成眷属》</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">99</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/82653" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳" target="_blank">
              <i class="logo_i"></i>              
              <img class="item-img" delayload="images/rAoKmVoWheGAZ3ZUAABq0hth0RQ205.jpg" alt="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳" src="images/rAoKmVoWheGAZ3ZUAABq0hth0RQ205.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1079" target="_blank" title="南山文体中心剧院小剧院">南山文体中心剧院小剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/82653" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳" target="_blank">2018.04.28 20:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-primary" href="http://item.juooo.com/82653" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳" target="_blank">2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-深圳</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-primary">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">99</span>起
              </div>
          </div>
      </div>
      
</li>
	   				</ul>
				 	<!--推荐演出end-->

                    <!--剧评 -->
                    <ul class="list-2 margin-top50 margin-bottom50">
                        <li class="list-item padding-right16 ">
                            <div class="media-horizontal swipe slide" id="swipe-hot-comment" data-ride="swipe">
                                <div class="media-title-wrap">
                                    <div class="media-title">热门剧评</div>
                                    <div class="media-more">
                                    	                                        <ul class="pagination-wrap circle" data-indicators="swipe-indicators">
                                        	                                        	                                        		<li class="item" data-target="#swipe-hot-comment" data-slide-to="0">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        	                                        		<li class="item" data-target="#swipe-hot-comment" data-slide-to="1">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        	                                        		<li class="item active" data-target="#swipe-hot-comment" data-slide-to="2">
                                        			<a class="" data-target=""></a>
                                        		</li>
                                        	                                        </ul>
                                                                            </div>
                                </div>

                                <div class="media-style-5 swipe-inner">
                                	                                	                                	                                    <div class="item">
                                        <div class="media-img-content">
                                            <div class="media-img-wrap">
                                                <a class="block" ass="img-link" href="http://item.juooo.com/83482" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-石家庄" target="_blank">
                                                    <img class="media-img" delayload="images/rAoKNVoSoOGANW9LAABnx1rsyi4180.jpg" alt="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-石家庄" title="2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-石家庄" src="images/rAoKNVoSoOGANW9LAABnx1rsyi4180.jpg">
                                                </a>
                                            </div>
                                            <div class="media-img-info">
                                                <span>我是最美的</span>
                                                <span class="c-999"> 评 </span>
                                                <a class="c-info" href="http://item.juooo.com/83482" target="_blank">2018第五届城市戏剧节 诗·歌·舞变奏三幕剧《木心·人曲》-石家庄</a>
                                            </div>
                                        </div>
                                        <div class="media-content">
                                            <div class="media-text">
                                                寻找木心，寻找自己。零距离私密型小剧场观剧互动性强，重点是戏非常精彩，有趣。一同进入这部戏，我仿佛就是戏的一部分。                                            </div>
                                        </div>
                                    </div>
                                                                    	                                    <div class="item">
                                        <div class="media-img-content">
                                            <div class="media-img-wrap">
                                                <a class="block" ass="img-link" href="http://item.juooo.com/83463" title="2018第五届城市戏剧节 焦媛X王安忆X茅盾文学奖《长恨歌》--深圳" target="_blank">
                                                    <img class="media-img" delayload="images/rAoKmVqvZz6AWUubAACi7jIWSmA541.jpg" alt="2018第五届城市戏剧节 焦媛X王安忆X茅盾文学奖《长恨歌》--深圳" title="2018第五届城市戏剧节 焦媛X王安忆X茅盾文学奖《长恨歌》--深圳" src="images/rAoKmVqvZz6AWUubAACi7jIWSmA541.jpg">
                                                </a>
                                            </div>
                                            <div class="media-img-info">
                                                <span>融化的沥青</span>
                                                <span class="c-999"> 评 </span>
                                                <a class="c-info" href="http://item.juooo.com/83463" target="_blank">2018第五届城市戏剧节 焦媛X王安忆X茅盾文学奖《长恨歌》--深圳</a>
                                            </div>
                                        </div>
                                        <div class="media-content">
                                            <div class="media-text">
                                                人生八苦之【爱别离。求不得】 有时似乎一个眼神就觉得能成就一辈子。 然而每次的希望却总是被慢慢磨灭得消失殆尽。 而后知。 自己选择的是一场接着一场的错误。 爱没能留住。孩子也没能留住。即便是挽留也没有用。 直至过了半生退无可退。 就在悠悠岁月中。 一段段的爱变成无声无泪的恨镶                                            </div>
                                        </div>
                                    </div>
                                                                    	                                    <div class="item active">
                                        <div class="media-img-content">
                                            <div class="media-img-wrap">
                                                <a class="block" ass="img-link" href="http://item.juooo.com/83703" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" target="_blank">
                                                    <img class="media-img" delayload="images/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg" alt="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" title="澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	" src="images/rAoKmVpK8Q-AGnyDAABPxeUqTCs142.jpg">
                                                </a>
                                            </div>
                                            <div class="media-img-info">
                                                <span>离离原上</span>
                                                <span class="c-999"> 评 </span>
                                                <a class="c-info" href="http://item.juooo.com/83703" target="_blank">澳大利亚“国宝级”喜剧《燃烧的疯人院》-上海站	</a>
                                            </div>
                                        </div>
                                        <div class="media-content">
                                            <div class="media-text">
                                                精彩的两个小时！疯人院里的疯子们表演都十分卖力:道格的疯疯癫癫，一幕幕扣人心弦。剧本写在越战期间，澳大利亚的一所疯人院里排练歌剧的故事。每次排练的点滴，从小小的细节刨析每个人物背后所经历的故事。生动饱满，每一个演员都在全情投入，忘我表演。 直到谢幕才知道有角色是一人分饰两角。                                            </div>
                                        </div>
                                    </div>
                                                                    </div>

                            </div>
                        </li>
						
						<!-- 话剧资讯  -->
						<li class="list-item padding-left16 ">
							                 			<div class="media-horizontal">
    <div class="media-title-wrap">
        <div class="media-title">演出资讯</div>
        <a class="media-more icon icon-arrow-up" href="../news/newslist.html37" target="_blank"></a>
    </div>

    <div class="media-style-4">
    	    	        <div class="media-top">
            <div class="media-img-wrap">
                <a class="block" href="../juooo/index.htmlnews/show/25738" target="_blank">
                    <img class="media-img" delayload="images/rAoKmVpVjbKAbEhTAAE60pV4Q4M524.png" title="前任：多年后你跟她情深似海，会不会想到欠我一个未来" src="images/rAoKmVpVjbKAbEhTAAE60pV4Q4M524.png">
                </a>
            </div>
            <div class="media-img-detail">
                <div class="media-img-title">
                    <a class="link-primary" target="_blank" title="前任：多年后你跟她情深似海，会不会想到欠我一个未来" href="../juooo/index.htmlnews/show/25738">前任：多年后你跟她情深似海，会不会想到欠我一个未来</a>
                </div>
                <div class="media-img-info">
                	 和许多考沃德的剧类似，《前任不敲门》讲述的是，夫妻被困在同一个空间之中，相爱相杀的故事。只不过这一次，现任前妻，阴阳相隔。                </div>
            </div>
        </div>
        <div class="media-bottom">
            <ul class="block-list block-list-single">
            	            	            	                <li class="list-item">
                    <a class="link-primary" target="_blank" title="演过大悲西贡西区RENT的她：哪怕过敏也爱《猫》！" href="../juooo/index.htmlnews/show/25720">
                        <span class="bullet-circle"></span>
                        演过大悲西贡西区RENT的她：哪怕过敏也爱《猫》！                    </a>
                </li>
                            	                <li class="list-item">
                    <a class="link-primary" target="_blank" title="《吉屋出租》Angel |人间是炼狱，但天使在人间" href="../juooo/index.htmlnews/show/25719">
                        <span class="bullet-circle"></span>
                        《吉屋出租》Angel |人间是炼狱，但天使在人间                    </a>
                </li>
                            </ul>
        </div>
           </div>
   
</div>
                                             </li>
                        <!-- 话剧资讯 END -->

                    </ul>
                    <!--剧评 演出资讯 END -->

                    <div class="panel-bottom">
                        <a class="circle-btn" href="../juooo/index.htmldrama" target="_blank">查看更多<span class="icon icon-arrow-up"></span></a>
                    </div>
                </div>
                <!-- 演出列表 END -->
            </div>
        </div>
        <!-- 话剧 END -->

        <!-- 儿童剧 -->
        <div class="panel panel-tips bg-floor" data-id="icon-target">
            <div class="w-default">
                <!-- 标题部分 -->
                <div class="block-title-wrap">
                    <div class="block-title">儿童剧</div>
                       				 	<div class="block-title-info">
		 
			<a class="info-item" href="http://search.juooo.com/?k=%E7%99%BD%E9%9B%AA%E5%85%AC%E4%B8%BB" target="_blank">白雪公主</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E9%A3%9E%E8%A1%8C%E5%AD%A6%E6%A0%A1" target="_blank">飞行学校</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%B0%8F%E7%BA%A2%E5%B8%BD" target="_blank">小红帽</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%81%B0%E5%A7%91%E5%A8%98" target="_blank">灰姑娘</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E5%B0%8F%E7%8E%8B%E5%AD%90" target="_blank">小王子</a>
			<a class="info-item" href="http://search.juooo.com/?k=%E7%BB%BF%E9%87%8E%E4%BB%99%E8%B8%AA" target="_blank">绿野仙踪</a>
	                 	
</div>                </div>
                <!-- 标题部分 END -->

                <!-- 演出列表部分 -->
                <div class="panel-content">
                	<!--推荐演出 -->
                	<ul class="list list-5 ">
	             		   				<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/83863" title="【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站" target="_blank">
              <i class="logo_i ju_icon"></i>              
              <img class="item-img" delayload="images/rAoKmVmBK-2AabrEAAC50RWDHq8542.jpg" alt="【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站" title="【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站" src="images/rAoKmVmBK-2AabrEAAC50RWDHq8542.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/2329" target="_blank" title="南宁市中小学校外教育活动中心观演厅">南宁市中小学校外教育活动中心观演厅</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/83863" title="【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站" target="_blank">2018.06.10 10:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-tips" href="http://item.juooo.com/83863" title="【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站" target="_blank">【小橙堡】甜甜旋风公主秀《我是最美公主》-南宁站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">南宁</div>
              </div>
              <div class="item-right price price-tips">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">60</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84877" title="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站" target="_blank">
              <i class="logo_i ju_icon"></i>              
              <img class="item-img" delayload="images/rAoKNVpVb66AEVwMAACFD3-GKXw059.jpg" alt="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站" title="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站" src="images/rAoKNVpVb66AEVwMAACFD3-GKXw059.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1795" target="_blank" title="南山文体中心微剧场">南山文体中心微剧场</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84877" title="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站" target="_blank">2018.12.29 10:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-tips" href="http://item.juooo.com/84877" title="【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站" target="_blank">【小橙堡·微剧场】以色列创意人偶互动剧《私人订制》-深圳站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-tips">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">180</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/85117" title="【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站" target="_blank">
              <i class="logo_i ju_icon"></i>              
              <img class="item-img" delayload="images/rAoKNVqWEySAWovSAACvSrF-0SI196.jpg" alt="【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站" title="【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站" src="images/rAoKNVqWEySAWovSAACvSrF-0SI196.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/377" target="_blank" title="浙话艺术剧院">浙话艺术剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/85117" title="【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站" target="_blank">2018.06.24 15:00</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-tips" href="http://item.juooo.com/85117" title="【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站" target="_blank">【小橙堡】互动儿童音乐剧《胡萝卜星球之神龙披风》 杭州站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">杭州</div>
              </div>
              <div class="item-right price price-tips">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">50</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/84170" title="【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站" target="_blank">
              <i class="logo_i ju_icon"></i>              
              <img class="item-img" delayload="images/rAoKmVpoBQCADNTWAACpGxYS59o206.jpg" alt="【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站" title="【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站" src="images/rAoKmVpoBQCADNTWAACpGxYS59o206.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1162" target="_blank" title="无锡人民大会堂">无锡人民大会堂</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/84170" title="【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站" target="_blank">2018.05.19 10:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-tips" href="http://item.juooo.com/84170" title="【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站" target="_blank">【小橙堡】捷克黑光剧《光影奇遇记》中国版-无锡站</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">无锡</div>
              </div>
              <div class="item-right price price-tips">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">60</span>起
              </div>
          </div>
      </div>
      
</li>
<li class="list-item">
      <div class="item-img-wrap">
          <a href="http://item.juooo.com/81421" title="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" target="_blank">
              <i class="logo_i ju_icon"></i>              
              <img class="item-img" delayload="images/rAoKNVmnrEmAM3eJAAD6UEdJuJ4792.jpg" alt="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" title="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" src="images/rAoKNVmnrEmAM3eJAAD6UEdJuJ4792.jpg">
          </a>
          <div class="item-img-info">
              <div>
                  <span class="icon icon-position"></span>
                  <a class="link venue-link" href="../run/venue.htmlshow/1079" target="_blank" title="南山文体中心剧院小剧院">南山文体中心剧院小剧院</a>
              </div>
              <div class="margin-top10">
                  <span class="icon icon-time"></span>
                  <a class="link" href="http://item.juooo.com/81421" title="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" target="_blank">2018.04.01 10:30</a>
              </div>
          </div>
      </div>
      
      <div class="item-title">
          <a class="link-tips" href="http://item.juooo.com/81421" title="【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳" target="_blank">【小橙堡】奇幻亲子音乐剧《绿野仙踪》--深圳</a>
      </div>
      
      <div class="item-text">
          <div class="item-detail">
              <div class="item-left">
                  <div class="link">深圳</div>
              </div>
              <div class="item-right price price-tips">
                  <span class="price-kind">￥</span>
                  <span class="price-amount">80</span>起
              </div>
          </div>
      </div>
      
</li>
	   				</ul>
				 	<!--推荐演出end-->
                    

                    <!--儿童广告位 -->
                    <ul class="panel-banner list-2 margin-top50 margin-bottom50 ">
                    	                        
                    </ul>
                    <!-- 儿童广告位 END -->
                    
                    <div class="panel-bottom">
                        <a class="circle-btn" href="../juooo/index.htmlkids" target="_blank">查看更多<span class="icon icon-arrow-up"></span></a>
                    </div>
                    
                </div>
                <!-- 演出列表 END -->
            </div>
        </div>
        <!-- 儿童剧 END -->

    </div>

    <!-- 左侧导航栏 -->
    <div class="sidebar-left">
        <!--当滚动到当前指定的品类（如：演唱会）时，给左侧对应的div 类名上在添加 active-->
        <div class="icon-btn icon-btn1">
            <a>
                <span class="sidebar-icon icon-show"></span>
                <span class="sidebar-text">演唱会</span>
            </a>
        </div>
        <div class="icon-btn icon-btn2">
            <a>
                <span class="sidebar-icon icon-guita"></span>
                <span class="sidebar-text">民谣与摇滚</span>
            </a>
        </div>
        <div class="icon-btn icon-btn3 active">
            <a>
                <span class="sidebar-icon icon-concert"></span>
                <span class="sidebar-text">音乐会</span>
            </a>
        </div>
        <div class="icon-btn icon-btn4">
            <a>
                <span class="sidebar-icon icon-drama"></span>
                <span class="sidebar-text">音乐剧&话剧</span>
            </a>
        </div>
        <div class="icon-btn icon-btn5">
            <a>
                <span class="sidebar-icon icon-children"></span>
                <span class="sidebar-text">儿童剧</span>
            </a>
        </div>
    </div>
    <!-- 左侧导航栏end -->

<!-- 主内容部分 END-->
	<!-- footer -->
		<div class="new-footer">
		<div class="wrap1">
			<div class="s1 w1200">
				<div class="con con1">
					<div class="title1">帮助中心</div>
					<div class="help-list">
						<a href="../help/registrationProcess.html" class="help-items ml0" target="_blank">新手指南</a>
						<a href="../juooo/index.htmlhelp/67" class="help-items" target="_blank">支付方式</a>
						<a href="../juooo/index.htmlhelp/78" class="help-items" target="_blank">售后服务</a>
						<a href="../juooo/index.htmlhelp/61" class="help-items ml0" target="_blank">购票指南</a>
						<a href="../juooo/index.htmlhelp/72" class="help-items" target="_blank">配送方式</a>
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
							<img src="images/ticket.png" alt="">
						</div>
						<p class="code-text">聚橙票务</p>
					</div>
					<div class="box1">
						<div class="img-box">
							<img src="images/show.png" alt="">
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
						                			                	<a class="tab-items" href="../juooo/index.htmlfootconfig/1" target="_blank" title="关于我们">关于我们</a>
		                		                	<a class="tab-items" href="../juooo/index.htmlfootconfig/2" target="_blank" title="联系我们">联系我们</a>
		                		                	<a class="tab-items" href="../juooo/index.htmlfootconfig/5" target="_blank" title="加入我们">加入我们</a>
		                		                	<a class="tab-items" href="../juooo/index.htmlfootconfig/3" target="_blank" title="服务条款">服务条款</a>
		                	                						<!-- <a href="javascript:;" class="tab-items" target="_blank">加盟聚橙</a> -->
						<a href="../news/newslist.html" class="tab-items" target="_blank">媒体报道</a>
						<a href="../juooo/index.htmlabout/partner" class="tab-items" target="_blank">合作伙伴</a>
						<a href="../juooo/index.htmlabout/links" class="tab-items" target="_blank">友情链接</a>
						<a href="../juooo/index.htmlabout/map" class="tab-items" target="_blank">网站地图</a>
	                
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
<script src='js/stat.js' language='JavaScript' charset='gb2312'></script>

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
        var s= b.createElement(c);s.async=1;s.src='js/tg.js?ang_tj=true&c='+d+'&t='+e; 
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
		ma.src = 'https://click.juooo.com/'+ 'public/Home/web/js/ma.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ma, s);
	})();
</script>
</div>

<!--返回头部-->
<script type="text/javascript" src="js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="js/modules-config.js"></script>


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
		j.src = 'js/meiqia.js?_=t';
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
        var  topAdSymbol = "JHT";
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
                        advertInfo += 'src="images/4e37a66593104ae581be2eca19939a27.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
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
                        html += '<img src="images/4e37a66593104ae581be2eca19939a27.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
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
</html>	<!-- footer end -->

    <!-- 右侧返回顶部End -->
    <script>
        //     引入index
        seajs.use(['jquery','dateFormat','juo','index'], function($, dateFormat, juo) {

            var $body = $('body');
            $(function(){
                var d_top = $(document).scrollTop(),
                    $targets = $('[data-id="icon-target"]'),
                    first_top = $('[data-id="icon-target"]').eq(0).offset().top,
                    now_top = first_top,
                    $links = $('.sidebar-left .icon-btn'),
                    index,
                    flag = false;
                //showSidebar();
                //affix();

                $(document).on('scroll',function(){
                    d_top = $(document).scrollTop();
                    showSidebar();
                    affix();
                });

                $('.sidebar-left .icon-btn').on('click', function(){
                    if(flag) return;
                    flag = true;
                    index = $(this).index('.sidebar-left .icon-btn');
                    console.log(index);
                    console.log($links.eq(index).offset().top);
                    $links.removeClass('active');
                    $(this).addClass('active');
                    $('body, html').animate({'scrollTop': $targets.eq(index).offset().top}, function() {
                        flag = false;
                    });
                });

                function showSidebar() {
                    if (first_top < d_top + 200) {
                        $('.sidebar-left').fadeIn();
                    } else {
                        $('.sidebar-left').fadeOut();
                    }
                }

                function affix() {
                    for (var i = 0; i < $links.length; i++) {
                        now_top = $targets.eq(i).offset().top;
                        if (now_top <= d_top + 280 && now_top >= d_top - 180) {
                            $links.removeClass('active').eq(i).addClass('active');
                        }
                    }
                }
            });

            var rootUrl   = "http://image.juooo.com";
   			var ticketUrl = "http://item.juooo.com/";
   			var venueUrl  = "../run/venue.htmlshow/";
   			var searchUrl = "http://search.juooo.com/";
       		getCityListData();
            
            //首页中部广告位
            var symbol = 'JHM';
            getHomeAdvertInfo(symbol);

            $(function(){	
            	$(".other-city").on('mouseover',function(){
            		$(".city-panel").show();
            	}).on('mouseout',function(){
            		$(".city-panel").hide();
            	});
            	
            	
            	$("#city").on('click', 'li',function(){
       	            var city_id = $(this).attr('data-id');
                    var city_name = $(this).children().html();             
       	            if(!$(this).hasClass('active')){
       	                $("#city li").removeClass("active");
       	                $(this).addClass('active');
       	                var tmp = {city_id:city_id};
       	             	$.ajax({
    	                    type: "POST",
    	                    url: "../juooo/index.htmlIndex/ajaxGetCityShowData",
    	                    data: tmp,
    	                    dataType: "json",
    	                    success: function(data){
                                //修改顶部文字 和 链接
                                $("#rec-city").html(city_name);
                                if(data.cityRecommUrl)
                                {
                                    $("#rec-url").attr("title",city_name);
                                    $("#rec-url").html('进入'+city_name+'站>');
                                    $("#rec-url").attr('href',data.cityRecommUrl);
                                    $("#js-title-row").removeClass('close-city');
                                    $("#js-other-city").addClass('padding-left30');
                                    $("#rec-url").show();
                                    $(".city .city-panel .arrow-up").css('left', '200px')
                                }
                                else
                                {

                                    $("#rec-url").hide();
                                    $("#js-title-row").addClass('close-city');
                                    $("#js-other-city").removeClass('padding-left30');
                                    $(".city .city-panel .arrow-up").css('left', '93px')
                                }

                                var html = "";
    	                    	if( data.ok && data.list.length>0 )
	                    		{
    	                    		html = getRecShowHtml(data.list);
	                    		}
                                else
                                {
                                    //false空结构占位
                                    html = '<li class="list-item"><div class="item-img-wrap"></div><div class="item-title"></div><div class="item-text"></div></li>';
                                }
                                $("#city-how").html(' ');
                                $("#city-how").html(html);
                                $('img').scrollLoading();
    	                    }
    	                })
       	            }
       	         	$(".city-panel").hide();
       	        }) 
            })

            function getHomeAdvertInfo(symbol)
            {
                $.ajax({
                    type:'POST',
                    url:"https://m.juooo.com/Advert/getAdMap",
                    dataType:'jsonp',
                    data:{symbol:symbol,ajax_type:'jsonp'},
                    jsonp:'callback',
                    async:false,
                    success:function(result)
                    {  
                        if(result.code == 1 && result.data)
                        {
                            var advertInfo = '<div style="height:100px;width:1200px;margin:0 auto">';
                                advertInfo += '<a target="_blank" style="text-align:center;display: block;"';
                                advertInfo += 'href="' + result.data.url + '">';
                                advertInfo += '<img style="width:1200px;heihgt:100px;"';
                                advertInfo += 'src="images/4e37a66593104ae581be2eca19939a27.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
                                advertInfo += '</a></div>';
                            $(".js-tour-show").before(advertInfo);
                        }
                    }
                });
            }

            function getCityListData()
            {
            	var tmp = {};
            	$.ajax({
                    type: "POST",
                    url: "../juooo/index.htmlIndex/ajaxGetCityRecommendData",
                    data: tmp,
                    dataType: "json",
                    success: function(data){
                    	var htmlCityName = $("#rec-city").html();
                    	$("#rec-city").html(data.cityName);
                    	var cityName = '进入'+data.cityName + '站>';
                    	if(data.cityName == "全国")
                    	{
                    		$("#rec-url").hide();
                    		$("#js-title-row").addClass('close-city');
                    		$("#js-other-city").removeClass('padding-left30');
                    		$(".city .city-panel .arrow-up").css('left', '93px');
                    	}
                    	else
                    	{
                            $("#js-title-row").removeClass('close-city');
                            $("#js-other-city").addClass('padding-left30');
                   		    $("#rec-url").show();
                            $(".city .city-panel .arrow-up").css('left', '200px')
                    	}

                        $('#home-rec-city').attr('href', data.cityRecommUrl);
                    	$('#home-rec-city').attr('title', data.cityName);
                    	$('#home-rec-city').html('<i class="bg-icon place"></i>推荐'+data.cityName+'站');

                    	$("#rec-url").attr("title",data.cityName);
                    	$("#rec-url").html(cityName);
                    	$("#rec-url").attr('href',data.cityRecommUrl);
                    	var html = "";
                    	//城市推荐演出
                    	if(data.cityRecommend)
                		{
                    		//if(htmlCityName != data.cityName){
                    			html = getRecShowHtml(data.cityRecommend);
                        		$("#city-how").html(' ');
                        		$("#city-how").html(html);
                        		$('img').scrollLoading();
                    		//}
                		}

                    	//热门城市
                    	if(data.cityList)
                    	{
                    		html = '<li class="list-item" data-id = "0">';
                    		html+='<a class="block link-primary">全国</a>';
                    		html+='</li>';
							$.each(data.cityList, function(index,val){
								html+='<li class="list-item" data-id = "'+val.id+'">';
								html+='<a class="block link-primary">'+val.name+'</a>';
								html+='</li>';
                    		})
                    		$(".hot-city").html(' ');
                    		$(".hot-city").html(html);
                    	}

                    	//其他城市
                    	if(data.cityMoreList)
                    	{
                    		html = '';
                    		var totalData = data.cityTotalScheds;
   	            		 	var cityData  = data.cityMoreList;

	   	            		for(var i = 0, len = cityData.length; i < len; i ++) {
	   	            			var total = 0;
	   	            			var cityId = cityData[i].id;
	   	            			for(var j = 0, lenT = totalData.length; j < lenT; j ++) {
	   	            				if(totalData[j].city_id == cityId) {
	   	            					 total = totalData[j].total;
	   	            					 break;
	   	            				 }
	   	            			}
	   	            			if(total != 0)
	   	            			{
	   	            				html+='<li class="list-item" >';
									html+='<a class="link-primary" title="'+cityData[i].name +'" href="'+searchUrl+'?city='+cityData[i].id+'" target="_blank">'+cityData[i].name;
									html+='<span class="c-999">（'+total+'）</span>';
									html+='</a>';
									html+='</li>';
	   	            			}
	   	            		 }
                    		$(".other-city-l").html(' ');
                    		$(".other-city-l").html(html);
                    	}
                    }
                })
            }
            function getRecShowHtml(cityRecommend)
            {
       			var html ='';
       			var method = '';
       			if(cityRecommend)
       			{
       				$.each(cityRecommend, function(index,val){
       					method = 2;
            			html+='<li class="list-item">';
            			html+='<div class="item-img-wrap">';
            			html+='<a href="'+ticketUrl + val.sche_id +'" title="' + val.show_name + '" target="_blank" >';
            			
//            			if(val['sell_status'] == 0){
//            				method = 1;
//            				html+='<i class="icon-destine"></i>';
//                        }
//            			else
//                        {
//            				html+='';
//                        }
//            			if(val['sell_status'] == 2){
//            				method = 1;
//            				html+='<i class="icon-presell"></i>';
//                        }
//            			else
//                        {
//            				html+='';
//                        }

//                        if(val['method'] == '1' && val['cate_parent_id'] == '38' && method == 2)
//                        {
//                            html+='<i class="logo_i ju_icon"></i>';
//                        }
//            			else if(juo.isHostIcon(val['method']) && method == 2)
//                        {
//                      		html+='<i class="logo_i"></i>';
//                      	}
//            			else
//            			{
//            				html+='';
//            			}

						html+=val.ico;
            			
            			html+='<img class="item-img" src="'+ rootUrl + val.schePic+'" alt="' + val.show_name + '" title="' + val.show_name + '">';
            			html+='</a>';
            			html+='<div class="item-img-info">';
            			html+='<div>';
            			html+='<span class="icon icon-position"></span>';
            			html+='<a class="link" href="'+venueUrl + val.v_id +'" target="_blank" title="'+ val.v_name + '">' + val.v_name+ '</a>';
            			html+='</div>';
            			html+='<div class="margin-top10">';
            			html+='<span class="icon icon-time"></span>';
            			html+='<a class="link"  href="'+ticketUrl + val.sche_id +'" title="' + val.show_name + '" target="_blank" >' + dateFormat.dateFormat('Y.m.d H:i',val.show_time) + '</a>';
            			html+='</div>';
            			html+='</div>';
            			html+='</div>';
            		      
            			html+='<div class="item-title">';
            			html+='<a class="link-primary" href="'+ticketUrl + val.sche_id +'" title="' + val.show_name + '" target="_blank">' + val.show_name + '</a>';
            			html+='</div>';
            			html+='<div class="item-text">';
            			html+='<div class="item-detail">';
            			html+='<div class="item-left">';
            			html+='<div class="link">' + val.cate_parent_name.substring(0,4) + '</div>';
            			html+='</div>';
            			html+='<div class="item-right price price-primary">';
            			html+='<span class="price-kind">￥</span>';
            			html+='<span class="price-amount">' + parseInt(val.low_price) + '</span>起';
            			html+='</div>';
            			html+='</div>';
            			html+='</div>';
            			html+='</li>';
            		})
       			}
       			return html;
            }
        });
    </script>
</body>
</html><script type="text/javascript">
seajs.use(['jquery','Dialog'], function($, Dialog) {
	var isNewRegister = "";
	var sceneActivityUrl = "https://m.juooo.com/Scene/getSceneActivity";
	var userId = "0";
	var activityId;
	if(isNewRegister)
	{   
		var symbol = 'JRGC';
		$.ajax({
	        type:'GET',
	        url:sceneActivityUrl,
	        dataType:'jsonp',
	        data:{symbol : symbol, uid : userId, ajax_type : 'jsonp'},
	        jsonp:'callback',
	        async:false,
	        success:function(result)
	        {  
	            if(result.code == 1 && result.data)
	            {   
	                var htmlOne  = '<div class="close-btn"></div>';
    					htmlOne += '<div class="gift-box">';
        				htmlOne += '<div class="title-wrap">'+result.data.name+'</div>';
        				htmlOne += '<div class="txt-wrap">';
            			htmlOne += '<p>'+result.data.intro+'</p>';
          				htmlOne += '</div>';
        				htmlOne += '<div class="gift-case">';
                        htmlOne += '<img src="images/4e37a66593104ae581be2eca19939a27.gif'+result.data.pic+'"/>';
        				htmlOne += '</div>';
        				htmlOne += '<div class="gift-btn"></div>';
    					htmlOne += '</div>';
    				$('.shadow-bg').addClass('active');
                    $('.gift-wrap').html(htmlOne).addClass('active');
	            }
	        }
	    });
	}

    $(document).on('scroll',function(){
        if($('.shadow-bg').hasClass('active')){
            $(window).scrollTop('0');
        }
    });

	//关闭领取礼物弹窗
	$('body').on('click', '.shadow-bg, .close-btn', function(){
		$('.shadow-bg').remove();
		$('.gift-wrap').remove();
		$('.ticket-wrap').remove();
	});

	$('body').on('click', '.gift-btn', function(){
        $.ajax({
            type: 'GET',
            url: sceneActivityUrl,
            data:{symbol : symbol, type : 'coupon', uid : userId, ajax_type : 'jsonp'},
            dataType:'jsonp',
            jsonp:'callback',
            success: function(result)
            {   
            	$('.gift-wrap').remove();
                if(result.code == 1)
                {   
                	activityId = result.data.activity_id;
                	var htmlTwo  = '<div class="close-btn"></div>';
    					htmlTwo += '<div class="ticket-content">';
        				htmlTwo += '<div class="title-wrap">'+result.data.name+'</div>';
        				htmlTwo += '<div class="top-line"></div>';
        				htmlTwo += '<div class="ticket-box">';
                    	htmlTwo += '<div class="ticket-list">';
                    $.each(result.data.coupon_list, function(key,item){
                    	htmlTwo += '<div class="item">';
                        htmlTwo += '<div class="left">';
                        htmlTwo += '<span class="yuan">¥</span>';
                        htmlTwo += '<span class="num">'+parseFloat(item.coupon_price)+'</span>';
                    	htmlTwo += '</div>';
                    	htmlTwo += '<div class="right">';
                        htmlTwo += '<p class="txt1">满'+parseFloat(item.limit_low_price)+'可用</p>';
                        htmlTwo += '<p class="txt2">'+item.coupon_name+'</p>';
                        htmlTwo += '<p class="txt2">有效期至：'+item.end_valid_time+'</p>';
                        htmlTwo += '</div>';
                        htmlTwo += '</div>';
                    });
	                    htmlTwo += '</div>';
	            		htmlTwo += '<p class="explain"></p>';
	        			htmlTwo += '</div>';
	        			htmlTwo += '<div class="bottom"></div>';
	        			htmlTwo += '<div class="usebtn js-use-coupon"></div>';
	                    htmlTwo += '</div>';
	                   $('.ticket-wrap').html(htmlTwo).addClass('active');
                }
                else
                {
                    Dialog.msg(result.msg);
                }
				
			},
			error:function(e)
			{
				$('.gift-wrap').remove();
                Dialog.msg('拉取礼包优惠券列表失败');
			}
		});
	});

	//点击立即使用
    $('.ticket-wrap').on('click', '.js-use-coupon', function(){
        window.location.href = "http://search.juooo.com/index/index?activity_id="+activityId;
    });

});
</script>
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
    <title>我的聚橙-缺货登记</title>
    <meta name="keywords" content="聚橙网" />
    <meta name="description" content="聚橙网打造国内专业的票务和演出订票平台" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/base.css">
    <link rel="stylesheet" href="<%=path%>/resource/user/css/base_1.css">
            <link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/myjuooo.css">
                
    
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
                    <a href="#"><span class="c9 vip-level" id="js-get-level" style="background-image: url('<%=path%>/resource/user/images/raoknvmxb0kachvkaaarxyznjhk783.png');"></span></a>
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
            <img src="picture/raoknvpv08yapzijaab2npswgzq863.jpg" alt="">
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
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raokmvo4as6apatsaaad-nuerxk400.png);"></i>
                    <p class="module-text">积分商城</p>
                </a>
                                                                <a href="..\run\card.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raoknvpdesiapduxaaacbvjf9_q310.png);"></i>
                    <p class="module-text">欢聚橙卡</p>
                </a>
                                                                <a href="..\run\activity.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raoknvo4atiafs20aaadtbeyuba106.png);"></i>
                    <p class="module-text">聚特惠</p>
                </a>
                                                                <a href="..\run\Student-index.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raokmvo4aucasjuoaaagqpuj61c127.png);"></i>
                    <p class="module-text">学生专区</p>
                </a>
                                                                <a href="..\run\zhuanti.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raoknvo4auiaf7p3aaadcka4fcq252.png);"></i>
                    <p class="module-text">精彩专题</p>
                </a>
                                                                <a href="..\run\calendars.html" class="module-link">
                    <i class="module-icon m-special" style="background-image: url(<%=path%>/resource/user/images/raokmvo4avcaevpeaaaeezoxq4k876.png);"></i>
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
                                                                                    <a href="../all_product/vocalConcert.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qduaspnaaaaeto5fqlu795.png);"></i>
                                <span class="kind-text">演唱会</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/music.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qfeacmibaaaefux5vuu038.png);"></i>
                                <span class="kind-text">音乐会</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/drama.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qg6aac9iaaaedcanr-c618.png);"></i>
                                <span class="kind-text">话剧歌剧</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/child.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qiaafuhtaaag30h30mi241.png);"></i>
                                <span class="kind-text">儿童亲子</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/musical.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qj2ahhqhaaagybomok8111.png);"></i>
                                <span class="kind-text">音乐剧</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/variety.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qmkabw9saaagsgbqhxe942.png);"></i>
                                <span class="kind-text">戏曲综艺</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                    <a href="../all_product/exhibition.html" class="kind-link js-kind-link">
                                <i class="bg-icon kind-icon pop" style="background-image: url(<%=path%>/resource/user/images/raokmvn7qn2aeg2uaaaeesj_ld4456.png);"></i>
                                <span class="kind-text">展览</span>
                                <i class="bg-icon more-icon"></i>
                            </a>
                                                                                </div>
                        <div class="right-detail js-right-detail">
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qewahyweaaavxkqyorc553.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=35&sort=1&type2=81" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        流行                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=35&sort=1&type2=82" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        摇滚                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=35&sort=1&type2=83" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        民谣                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=35&sort=1&type2=84" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        民族                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=35&sort=1&type2=85" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qgcaoj55aaaqu6vnjnw831.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=36&sort=1&type2=45" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        交响                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=36&sort=1&type2=46" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        独奏                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=36&sort=1&type2=49" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qhaafro2aaafkohcdbo611.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=37&sort=1&type2=53" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        话剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=37&sort=1&type2=54" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        歌剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=37&sort=1&type2=66" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        歌舞剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=37&sort=1&type2=67" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qiyaehz1aaavub-rf-u430.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=38&sort=1&type2=55" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        儿童剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=38&sort=1&type2=56" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        亲子活动                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=38&sort=1&type2=57" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raokmvn759eap0m-aaas0qyo8la429.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=79&sort=1&type2=80" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        音乐剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qm6auwpcaaadmaz5k2s662.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=92" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        京剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=93" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        昆曲                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=94" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        越剧                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=95" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        相声小品                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=96" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        综艺                                        <!--<span>(20)</span>-->
                                    </a>
                                                                                                                                                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=97" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        马戏杂技                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=91&sort=1&type2=98" class="details-link" target="_blank">
                                        <span class="line"></span>
                                        其他                                        <!--<span>(20)</span>-->
                                    </a>
                                                                    </div>
                                                                                                                            </div>
                                                                                                                                            <div class="kind-details pop-details js-kind-details" style="background-image: url(<%=path%>/resource/user/images/raoknvn7qoaae51-aaahavn4ayw172.jpg)">
                                                                                                                                <div class="col">
                                                                        <a href="http://search.juooo.com/?type=99&sort=1&type2=100" class="details-link" target="_blank">
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
                    <a href="http://www.juooo.com/popular"   class="nav-link " title="流行音乐" target="_blank">流行音乐</a>
                </li>
                                                                <li class="nav-item ">
                    <a href="http://www.juooo.com/classical"   class="nav-link " title="古典音乐" target="_blank">古典音乐</a>
                </li>
                                                                <li class="nav-item ">
                    <a href="http://www.juooo.com/drama"   class="nav-link " title="舞台剧" target="_blank">舞台剧</a>
                </li>
                                                                <li class="nav-item ">
                    <a href="http://www.juooo.com/kids"   class="nav-link " title="儿童亲子" target="_blank">儿童亲子</a>
                </li>
                                                                <li class="nav-item ">
                    <a href="http://www.juooo.com/musical"   class="nav-link " title="音乐剧" target="_blank">音乐剧</a>
                </li>
                                                <!-- 右侧年卡入口 -->
                                <li class="nav-item entry-li">
                    <a href="..\run\card.html" class="nav-link entry" target="_blank" title="">
                        <img src="picture/raoknvpb_02auf1faajhopvn-jm883.gif" alt="" class="entry-img">
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

<script type="text/javascript" src="<%=path%>/resource/user/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/modules-config.js"></script>
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
                        var advertInfo  = '<div class="logo"><a href="'+result.data.url+'"><img src="picture/d70f498c52d645ac8a2900a596666b6e.gif' + result.data.pic + '" alt="'+ result.data.ad_name + '" title="'+ result.data.ad_name + '"></a></div>';
                    }
                    else
                    {
                        var advertInfo =  '<div class="logo"><a href="..\juooo\index.html"><img src="picture/juooo-logo.png"></a></div>';
                    }
                    $("#js-head-logo .dropdown-tab").before(advertInfo);
                }
            });
        }
    });
</script>
<!--// my juooo-->
<div class="myjuooo w1204">
	<div class="my-menu">
        <h2 class="my-juooo"><a href="myjuooo.html">我的聚橙</a></h2>
        <h2 class="my-order"><a href="myorderlist.html">订单中心</a></h2>
        <ul>
            <li><a class="" href="myorderlist.html"><i></i><b class="arr"></b>我的订单</a></li>
            <li><a class="" href="mycollect.html"><i></i><b class="arr"></b>我的关注</a></li>
            <li><a class=" active " href="mystock.html"><i></i><b class="arr"></b>缺货登记</a></li>
            <li><a class="" href="myreserve.html"><i></i><b class="arr"></b>开售提醒</a></li>
            <li><a class="" href="myintegral.html"><i></i><b class="arr"></b>我的积分</a></li>
        </ul>
        <h2 class="my-comment"><a href="mycomment.html">社区中心</a></h2>
        <ul>
            <li><a class="" href="mycomment.html"><i></i><b class="arr"></b>我的剧评</a></li>
        </ul>
        <h2 class="my-profile"><a href="myprofile.html">账户中心</a></h2>
        <ul>
            <li><a class="" href="myprofile.html"><i></i><b class="arr"></b>个人资料</a></li>
            <li><a class="" href="mysecurity.html"><i></i><b class="arr"></b>账户安全</a></li>
            <li><a class="" href="myaddress.html"><i></i><b class="arr"></b>收货地址</a></li>
            <li><a class="" href="myaccount.html"><i></i><b class="arr"></b>账户余额</a></li>
                        <li><a class="" href="myhappycard.html"><i></i><b class="arr"></b>欢聚橙卡</a></li>
                        <li><a class="" href="mycoupons.html"><i></i><b class="arr"></b>优惠券</a></li>
            <li><a class="" href="myrecharge.html"><i></i><b class="arr"></b>橙卡</a></li>
            
        </ul>
        <h2 class="my-note"><a href="mynote.html">消息提醒</a></h2>
    </div>

    <div class="u-warp2014">
      <div class="u-title">
          <h3>缺货登记</h3>
            <div class="o-t-tips">遇到感兴趣的演出，如果暂时缺货，您可以先进行缺货登记，到货时我们将第一时间与您联系！</div>
        </div>
        
        <div class="m-stock">
         
            
<div class="stockPor">
  <div class="st-tit">
      <ul class="clearfix">
          <li class="st-th1">演出名称<b class="line"></b></li>
            <li class="st-th2">单价(元)<b class="line"></b></li>
            <li class="st-th3">数量<b class="line"></b></li>
            <li class="st-th4">状态<b class="line"></b></li>
        </ul>
    </div>
    <table class="moi-table stock-table" width="100%" border="0" cellspacing="0" cellpadding="0">
<colgroup>
  <col style="width:446px;">
  <col style="width:177px;">
  <col style="width:124px;">
    <col style="width:124px;">
</colgroup>
  <tbody>
  </tbody>
</table>

</div>
        <div class="pages">
					</div>  
    </div>
        
    </div>

</div>
<!--
// my juooo End
-->
    	<div class="new-footer">
		<div class="wrap1">
			<div class="s1 w1200">
				<div class="con con1">
					<div class="title1">帮助中心</div>
					<div class="help-list">
						<a href="..\help\registrationProcess.html" class="help-items ml0" target="_blank">新手指南</a>
						<a href="../help/onlinePayment.html" class="help-items" target="_blank">支付方式</a>
						<a href="../help/statementOfReturnAndShortage.html" class="help-items" target="_blank">售后服务</a>
						<a href="../help/onlineOrdering.html" class="help-items ml0" target="_blank">购票指南</a>
						<a href="../help/homeDeliveryService.html" class="help-items" target="_blank">配送方式</a>
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
<script src='<%=path%>/resource/user/js/stat.js' language='JavaScript' charset='gb2312'></script>

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
		ma.src = '/'+ 'public/Home/web/<%=path%>/resource/user/js/ma.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ma, s);
	})();
</script>
</div>

<!--返回头部-->
<script type="text/javascript" src="<%=path%>/resource/user/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/modules-config.js"></script>


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
                        advertInfo += 'src="picture/d70f498c52d645ac8a2900a596666b6e.gif' + result.data.pic + '" title="' + result.data.ad_name + '" alt="' + result.data.ad_name + '" >';
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
                        html += '<img src="picture/d70f498c52d645ac8a2900a596666b6e.gif' + result.data.pic + '" alt="' + result.data.ad_name + '" title="' + result.data.ad_name + '">';
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
</html><script type="text/javascript" src="<%=path%>/resource/user/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/common.js"></script>
<script type="text/javascript">
var doorUrl	= "http://myjuooo.juooo.com/User/opendoor";
var reloadUrl = "mystock.html";

seajs.use(['juo','Dialog','jquery','index'], function(ex,Dialog,$) {
    $(function(){
      var stockId;
      
      var total = "";
      var pageRows = "10";
      var nowPage = "1";
      
      var totalPage = Math.ceil(total/pageRows);
	  if(nowPage<totalPage){
		  var lastPageNum = pageRows - total%pageRows;
		  var reloadType = 0;
	  }else{
		  var lastPageNum = 0;
		  var reloadType = 1;
	  }
      
      $('.stock-cancel').on('click',function(){
          var index = +new Date();
          stockId = $(this).parent().parent().attr("data-id");
          $(this).parent().parent().attr('del_index',index);

          var content = "<div class=\"cal-confirm\" del_index=\""+index+"\" style=\"text-align:center\"><span style=\"display:inline-block;padding:10px 10px 0 0;\">确认要删此缺货登记吗？</span></div>";
          Dialog.confirm({
                content: content,
                width:220,
                okBtnCallback: function(index){
                  var index0 = $('.cal-confirm').attr('del_index');
                  $('.stock-table tr[del_index='+index0+']').remove();
                  delUserBooking(1, stockId, lastPageNum, reloadType, reloadUrl);
                  Dialog.close(index);
                },
                cancelBtnCallback: function(index){
                  Dialog.close(index);
                }
          });
      });
    });
});
</script>
</body>
</html>

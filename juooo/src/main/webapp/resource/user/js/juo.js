/**
 * @Author: huangjiajia
 * @Description：公共js加载/ 顶部/头部/城市站/延迟加载
 * @Date:   2016/5/3
 * @Last Modified by:   dengkai
 */
define(function(require, exports, module) {
exports.run = function() {

    var $     = require('jquery'),
        $body = $('body');
    require('../module/lazyLoad/asyncLoad');
    require('../module/o-code');
    //require('../module/slide/slide.min');
    //require('../module/tab/tabs.min');
    require('searchSuggestion');

    // 图片延迟加载
    if($('img[delayload^="h"]').length > 0) {
        $('img[delayload^="h"]').scrollLoading();
    }

    //nimi导航下拉
    $(".site-nav ul li").hover(
        function (){
            $(this).addClass("menu-hover")
        },
        function (){
            $(this).removeClass("menu-hover")
        }
    );

    // 头部导航隐藏显示
    $(function(){
        var jflag = false,
            hflag = false;
        $('.j-nav-more').on('mouseover', function() {
            jflag = true;
            $(this).addClass('active');
            $('.j-h-nav-more').stop(true,true).fadeIn();
        }).on('mouseout', function() {
            jflag = false;
            setTimeout(function() {
                if (!jflag && !hflag) {
                    $('.j-h-nav-more').stop(true,true).fadeOut();
                    $('.j-nav-more').removeClass('active');
                }
            }, 100);
        });

        $('.j-h-nav-more').on('mouseover', function() {
            hflag = true;
            $('.j-nav-more').addClass('active');
            $('.j-h-nav-more').stop(true,true).fadeIn();
        }).on('mouseout', function() {
            hflag = false;
            setTimeout(function() {
                if (!jflag && !hflag) {
                    $('.j-h-nav-more').stop(true,true).fadeOut();
                    $('.j-nav-more').removeClass('active');
                }
            }, 100);
        });
    });

    //显示城市站
    $('.j-city').hover(
	function (){
        $(this).addClass("show");
	},
	function (){
        $(this).removeClass("show");
	}
    );

    // 头部搜索框热搜词
    var getSearchHot = function () {
        var CITY_URL = $('#js-city-url').val();

        $.ajax({
            type: "GET",
            async:false,
            dataType: "jsonp",
            jsonp: "callback",
            url: CITY_URL + 'Home/Index/hotWordsHtml',
            data:{},
            success:function (json) {
                $body.find("#js-search-hot-top").append(json.data);

                var defaultKeyWords = $.trim($('#js-search-hot-top li a:first').text());
                if (defaultKeyWords != '')
                {
                    $('#search_keywords').attr('placeholder',defaultKeyWords);
                    $('#search_keywords').attr('defaultKeyWords',defaultKeyWords);
                }
            }
        });
    };

    getSearchHot();



    //点击页面其他地方关闭搜索建议结果 放置位置有待确认 是否需要全站统一管理document的事件 避免冲突，覆盖问题
    $(document).on('click', function () {
        //$('.search-input').removeClass('show');
        //$('.search .search-pop-menu .auto-list').html('');

        $('.search .search-result').hide();
        $('.search .search-result .auto-list').html('');
        $('.search .tips').hide();
    });

    //帮助中心菜单栏
    $(".U-menu2016").find("ul").not(":first").hide();
    $(".U-menu2016").find("a:first").addClass("cur");
    $(".U-menu2016").find("h3").bind("click",function(ev){
        $(this).find("a").addClass("cur");
        $(this).siblings("h3").find("a").removeClass("cur");
        $(this).next("ul:first").slideDown("normal");
        $(this).siblings("h3").next("ul").slideUp("fast");
    ev.stopPropagation();//阻止事件冒泡
    });

    // 导航高亮显示  .header -> .nav-bar -> li -> a.text() == '欢乐年卡'  导航高亮
    var url    = window.location.hostname,
        urlTab = url.split('.')[0];
   
    $('.header .nav-bar li a').each(function () {
        var $this      = $(this),
            $li        = $this.closest('li'),
            thisUrl    = $this.attr('href'),
            thisUrlTab;

        thisUrl.split('//')[1]  && (thisUrlTab = thisUrl.split('//')[1].split('.')[0]);

        if(thisUrlTab == urlTab && urlTab == 'card') {
            $li.addClass('active');
        }
    });

    // 当输入框或者文本框失去焦点的时候，转义<>
   /* var getTransferredString = function (str) {
        return $('<span/>').text( str ).html();
    };

    $body.on('blur', 'input,textarea', function (e) {
        var $this = $(this),
            val   = $this.val();

        if(e.targetName == 'textarea') {
            val = $this.text();
        }

        $this.val(getTransferredString(val));
    })*/

     var getTransferredString = function (str) {
         var html = '',
             i    = 0;

         for(i = 0; i < str.length; i++) {
             if(str[i] == '<' || str[i] == '>') {
                 html += $('<span/>').text( str[i] ).html()
             }
             else {
                 html += str[i];
             }
         }
        return html;  //去除HTML tag;
    };

    $body.on('blur', 'input,textarea', function (e) {
        var $this = $(this),
            val   = $this.val();

        if(e.targetName == 'textarea') {
            val = $this.text();
        }

        $this.val(getTransferredString(val));
    })

}();

    exports.isHostIcon = function (iconId) {
        var $ = require('jquery');

        var hostIconArr = systemVar.host_icon_arr,
            isExistIcon;


        if($.inArray(parseInt(iconId), hostIconArr) != -1 ) {
            isExistIcon = true;
        }
        else {
            isExistIcon = false;
        }
        //console.log(hostIconArr,iconId,isExistIcon,'------');

        return isExistIcon;
    };

    // 判断是否登录
    exports.isLogin = function () {
        var $ = require('jquery');
        var $body = $('body');

        var isLogin = false;

        (function () {
            // 判断是否登陆
/*            if($.getCookie('juoUserName') || $.getCookie('juoNickName')) {
                $body.find('#js-has-login').removeClass('hide');

                if($.getCookie('juoNickName') != '') {
                    $body.find('#js-get-username').html(decodeURIComponent($.getCookie('juoNickName')));
                }
                else {
                    $body.find('#js-get-username').html(decodeURIComponent($.getCookie('juoUserName')));
                }

                isLogin = true;
            }
            else {
                $body.find('#js-login-out').removeClass('hide');
            }*/

            if($.getCookie('juoUserName') || $.getCookie('juoNickName')) {
                $body.find('#js-has-login').removeClass('hide');

                if($.getCookie('juoNickName') != '') {
                    $body.find('#js-get-username').html(decodeURIComponent($.getCookie('juoNickName')));
                }
                else {
                    $body.find('#js-get-username').html(decodeURIComponent($.getCookie('juoUserName')));
                }

                //这里将会员icon从cookie中取出，设置背景
                if($.getCookie('juoLevelLongPic')){
                    console.log($.getCookie('juoLevelLongPic'));
                    $body.find('#js-get-level').css('background-image','url("'+decodeURIComponent($.getCookie('juoLevelLongPic'))+'")');
                    //console.log($body.find('#js-get-level').css('background-image'));
                }


                isLogin = true;
            }
            else {
                $body.find('#js-login-out').removeClass('hide');
            }


        })();

        return isLogin;
    };

});
/*
 * @Author: dengkai
 * @Date:   2016-04-28 15:05:14
 * @Last Modified by:   huangjiajia
 * @Last Modified time: 2016-09-26 15:22:33
 */

define(function(require, exports, module) {
    exports.init = function() {
        var $ = require('jquery'),
            fixbar;
        try {
            require('countDown');
        } catch (e) {
            console.log(e);
        }
        try {
            fixbar = require('fixbar');
            fixbar.init();
        } catch (e) {
            console.log(e);
        }
        // 会员权益toggle
        $(function() {
            var flag = false,
                oli;
            $('.juoVip .discount .arra').on('click', function() {
                oli = $('#bankdiscountlist>li');
                if (flag) {
                    return;
                }
                flag = true;
                if ($(this).find('.arr').hasClass('arrup')) {
                    $(this).find('.arr').removeClass('arrup');
                    $('#bankdiscountlist').animate({ 'height': '28px' }, function() {
                        $('#bankdiscountlist .popover').hide();
                        flag = false;
                    });
                } else {
                    $(this).find('.arr').addClass('arrup');
                    $('#bankdiscountlist').animate({ 'height': 28 * oli.length + 'px' }, function() {
                        $('#bankdiscountlist').css({'height':'auto'});
                        flag = false;
                    });
                }
            });
        });
        //  优惠套餐切换
        $(function() {
//          var li_width = parseInt($('.hidebox ul li').eq(0).width()),
			var li_width = 410,
                // add_width = parseInt($('.hidebox ul p').eq(0).width()),
                add_width=0,
                $wrap_ul,
                marginLeft,
                flag = true;
            $(document).on('click','.packbox .prev', function() {
            	
                if (!flag) {
                    return;
                }
                flag = false;
                $wrap_ul = $(this).siblings('.hidebox').eq(0).find('ul');
                marginLeft = parseInt($wrap_ul.css('margin-left'));
                if (marginLeft < 0) {
                    $wrap_ul.animate({ 'margin-left': marginLeft + li_width + add_width + 'px' }, function() {
                        flag = true;
                    });
                } else {
                    flag = true;
                }
            });

            $(document).on('click','.packbox .next', function() {
            	
                if (!flag) {
                    return;
                }
                flag = false;
                $wrap_ul = $(this).siblings('.hidebox').eq(0).find('ul');
                marginLeft = parseInt($wrap_ul.css('margin-left'));
                if (parseInt(-marginLeft / (li_width + add_width)) < $wrap_ul.find('li').length - 2) {
                    $wrap_ul.animate({ 'margin-left': marginLeft - li_width - add_width + 'px' }, function() {
                        flag = true;
                    });
                } else {
                    flag = true;
                }
            });
        });
        // 选项卡切换
        $(function() {
            $('.js-tabbar').on('click','ul li', function() {
                var $tabbar = $(this).parents().closest('.js-tabbar'),
                    offsetTop = $tabbar.eq(0).offset().top,
                    top = $tabbar.eq(0).parent().offset().top,
                    index = $(this).index(),
                    scrollTop;
                if (!$(this).hasClass('on')) {
                    $tabbar.find('ul li').removeClass('on');
                    $tabbar.find('ul li:eq(' + index + ')').addClass('on');
                    $tabbar.nextAll().css('display', 'none');
                    $tabbar.nextAll().eq(index).css('display', 'block');
                    if ($(document).scrollTop() >= offsetTop) {
                        $('body,html').animate({ 'scrollTop': top });
                    }
                }
            });
        });

        // 巡回城市
        $(function() {
            var $oul = $('.bmore').siblings('.adress').find('ul'),
                length = $oul.find('li').length,
                pre_height = $oul.height(),
                ul_height,
                height = 55,
                flag = false;
            if(length > 5) {
                $('.adress li').eq(5).find('.line').addClass('hide');
            }
            $('.bmore').on('click', function(){
                var $this = $(this);
                $('.adress li').eq(5).find('.line').removeClass('hide');
                if(flag) return;
                flag = true;
                ul_height = $oul.css('height','auto').height();
                $oul.css('height',pre_height);
                $oul.animate({'height': ul_height},function(){
                    $this.slideUp();
                    //$this.css('visibility','hidden');
                });
                
            })
        });



    }

    exports.dCountDown = function (endTime, callback) {

        var $ = require('jquery');

        var $countDown = $('.js-count-down'),
            $days      = $countDown.find('.js-days'),
            $hours     = $countDown.find('.js-hours'),
            $minutes   = $countDown.find('.js-minutes'),
            $seconds   = $countDown.find('.js-seconds'),
            $num1,
            $num2,
            timeObj,
            nowTime    = new Date().getTime() / 1000,
            thread,
            daysArr    = [],
            hoursArr   = [],
            minutesArr = [],
            secondsArr = [];

        function countDown(nowTime,endTime) {
            var leftTime,
                days,
                hours,
                minutes,
                seconds,
                oneDay     = 24 * 60 * 60,
                oneHour    = 60 * 60,
                oneMinute  = 60,
                timeObj    = {};

            leftTime = parseInt(endTime - nowTime);

            days     = Math.floor(leftTime / oneDay);
            hours    = Math.floor((leftTime - days * oneDay) / oneHour);
            minutes  = Math.floor((leftTime - days * oneDay - hours * oneHour) / oneMinute);
            seconds  = Math.floor(leftTime - days * oneDay - hours * oneHour - minutes * oneMinute);

            timeObj.days    = days;
            timeObj.hours   = hours;
            timeObj.minutes = minutes;
            timeObj.seconds = seconds;

            return timeObj;
        }

        thread = setInterval(function () {
            timeObj = countDown(nowTime,endTime);

            endTime--;

            var tempDayArr     = daysArr,
                tempHoursArr   = hoursArr,
                tempMinutesArr = minutesArr,
                tempSecondsArr = secondsArr;

            daysArr    = getTwoNumber(timeObj.days);
            hoursArr   = getTwoNumber(timeObj.hours);
            minutesArr = getTwoNumber(timeObj.minutes);
            secondsArr = getTwoNumber(timeObj.seconds);

            //console.log(timeObj,'timeobj',daysArr,'day',hoursArr,'hours',minutesArr,'min',secondsArr,'s');

            // 显示
            if(tempDayArr[1] != daysArr[1]) {
                $days.find('.js-num-1').removeClass().addClass('js-num-1 icon-num icon-' + daysArr[1]);
                setTimeout(function () {
                    $days.find('.js-num-1').addClass('static');
                },100)
            }

            if(tempHoursArr[0] != hoursArr[0]) {
                $hours.find('.js-num-1').removeClass().addClass('js-num-1 icon-num icon-' + hoursArr[0]);
                setTimeout(function () {
                    $hours.find('.js-num-1').addClass('static');
                },100)
            }
            if(tempHoursArr[1] != hoursArr[1]) {
                $hours.find('.js-num-2').removeClass().addClass('js-num-2 icon-num icon-' + hoursArr[1]);
                setTimeout(function () {
                    $hours.find('.js-num-2').addClass('static');
                },100)
            }

            if(tempMinutesArr[0] != minutesArr[0]) {
                $minutes.find('.js-num-1').removeClass().addClass('js-num-1 icon-num icon-' + minutesArr[0]);
                setTimeout(function () {
                    $minutes.find('.js-num-1').addClass('static');
                },100)
            }
            if(tempMinutesArr[1] != minutesArr[1]) {
                $minutes.find('.js-num-2').removeClass().addClass('js-num-2 icon-num icon-' + minutesArr[1]);
                setTimeout(function () {
                    $minutes.find('.js-num-2').addClass('static');
                },100)
            }

            if(tempSecondsArr[0] != secondsArr[0]) {
                $seconds.find('.js-num-1').removeClass().addClass('js-num-1 icon-num icon-' + secondsArr[0]);
                setTimeout(function () {
                    $seconds.find('.js-num-1').addClass('static');
                },100)
            }
            if(tempSecondsArr[1] != secondsArr[1]) {
                $seconds.find('.js-num-2').removeClass().addClass('js-num-2 icon-num icon-' + secondsArr[1]);
                setTimeout(function () {
                    $seconds.find('.js-num-2').addClass('static');
                },100)
            }

            // 结束
            if(timeObj.days == 0 && timeObj.hours == 0 && timeObj.minutes == 0 && timeObj.seconds == 0) {
                clearInterval(thread);
                callback && callback();
            }

        },1000);

        function getTwoNumber(num) {
            var numArr = [];

            num = parseInt(num);
            if(num < 0) {
                throw new TypeError('输入数字错误');
            }
            else if(num <= 9) {
                numArr[0] = 0;
                numArr[1] = num;
            }
            else {
                numArr[0] = num.toString().charAt(0) * 1;
                numArr[1] = num.toString().charAt(1) * 1;
            }

            return numArr;
        }

        function getNum(num) {
            num = parseInt(num);

            switch (num) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                    return 6;
                case 7:
                    return 7;
                case 8:
                    return 8;
                case 9:
                    return 9;
            }
        }
    }
});

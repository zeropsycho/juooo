/*
 *  juooo index 
 *  v1.0.1
 *  build by adeng<deng982@foxmail.com>
 *  date: 2016-03-02 17:12:24
 */
define(function(require, exports, module) {
	exports.init = function() {

	};
	var $ = require('jquery');

	require('swipe');
	require('tabsCommon');
	require('tabsSlide');

	var $body = $('body');

	/*
	 * 热门明星按时间顺序排列
	 * 获取active的长度
	 * = 0: 显示最后三个
	 * = 1：显示最后三个
	 * = 2：显示最后三个
	 * >=3: 隐藏所有已经过期的演出信息
	 */
	$('.js-hot-star').each(function() {
		var $this = $(this),
			$tabItem = $this.find('.tab-item'),
			tabItemLen = $tabItem.length,
			expiredLen = $this.find('.expired').length,
			activeLen = tabItemLen - expiredLen,
			i = 0;

		$tabItem.removeClass('active');
		if(activeLen <= 3) {
			for(i = 1; i <= 3; i++) {
				$tabItem.eq(tabItemLen - i).addClass('active');
			}
		} else if(activeLen > 3) {
			for(i = 0; i < 3; i++) {
				$tabItem.eq(expiredLen + i).addClass('active');
			}
		}

	});

	$body.on('mouseenter', '.js-stage', function() {
		var $this = $(this),
			$target = $($this.data('target')),
			$targetWrap = $target.closest('.js-stage-wrap');

		$targetWrap.find('[id^="stage"]').removeClass('active');
		$target.addClass('active');

		$body.find('.js-stage').removeClass('active');
	}).on('mouseleave', '.js-stage', function() {
		var $this = $(this),
			$target = $($this.data('target')),
			$targetWrap = $target.closest('.js-stage-wrap');

		$targetWrap.find('[id^="stage"]').removeClass('active').eq(1).addClass('active');
		$body.find('.js-stage').eq(0).addClass('active');
	});

	/*
	 * 控制顶部广告位图片
	 * 获取图片 -> 判断是否过期 -> 剩余图片中随机显示
	 */
	var imgArr = [],
		newImgArr = [],
		todayEndTimeStamp = getTodayEndTimeStamp();

	$('#js-top-img .top-img').each(function(i) {
		var $this = $(this),
			imgObj = {};

		imgObj.src = $this.attr('src');
		imgObj.time = $this.attr('data-time');
		imgObj.index = i;

		imgArr.push(imgObj);
		newImgArr.push(imgObj);
	});

	// 遍历时间数组，更新图片数组
	for(var i = 0, len = imgArr.length; i < len; i++) {

		if(imgArr[i].time < todayEndTimeStamp) {
			newImgArr.splice(i, 1);
		}
	}

	if(newImgArr.length > 0) {
		var randNumber = Math.floor(Math.random() * newImgArr.length);

		$('#js-top-img .top-link').eq(newImgArr[randNumber].index).removeClass('hide');
	}

	/**
	 * 获取当天最晚时间戳
	 */
	function getTodayEndTimeStamp() {
		var today = new Date();

		today.setHours(0);
		today.setMinutes(0);
		today.setSeconds(0);
		today.setMilliseconds(0);

		// 明天0：00点时间戳
		return today.getTime() / 1000 + 24 * 3600;
	}

});
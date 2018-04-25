define(function(require, exports, module) {

	var $ = require('jquery');

	var optionCookie = require('optionCookie');
	var login = require('login');
	var juo = require('juo');

	juo.isLogin();

	var $body = $('body');

	function getCityStation() {
		var cityData,
			CITY_URL = $('#js-city-url').val(),
			postUrl = '';

		$body.find('#js-get-header-city').empty();

		// 判断是顶部headType = 'top-head' 还是头部 headType = 'header'
		postUrl = 'Home/city/areaCityNewHtml';

		$.ajax({
			type: "GET",
			async: false,
			dataType: "jsonp",
			jsonp: "callback",
			url: CITY_URL + postUrl,
			data: {},
			success: function(json) {
				cityData = json.data;

				// 判断是顶部headType = 'top-head' 还是头部 headType = 'header'
				$body.find('#js-get-header-city').append(cityData)

			}
		});

		// 跨域请求方法二
		/*      $.getJSON(CITY_URL + postUrl + '?callback=?', function (json) {
		          cityData = json.data;

		          console.log(json,'method 2');

		          // 判断是顶部headType = 'top-head' 还是头部 headType = 'header'
		          $body.find('#js-get-header-city').append(cityData)
		      });*/

		// 跨域请求方法三
		/*  function getCityData(json) {
		      json = $.parseJSON(json);
		      cityData = json.data;

		      console.log(json,'method 3');

		      // 判断是顶部headType = 'top-head' 还是头部 headType = 'header'
		      $body.find('#js-get-header-city').append(cityData);
		  }

		  $.getJSON(CITY_URL + postUrl + '?callback=getCityData');*/

	}

	getCityStation();

	// 顶部点击登录
	$body.on('click', '#js-login-top,.js-login', function() {
		login.init();
	})
});
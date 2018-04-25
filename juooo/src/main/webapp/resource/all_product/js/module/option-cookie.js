/**
 * Created by huangjiajia on 2016/6/30.
 * Description:get/set Cookie
 */
define(function(require, exports, module) {
	var $ = require('jquery');

	//设置cookie
	$.setCookie = function(cname, cvalue, exdays) {
		var d = new Date(),
			expires = '';

		d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));

		expires = "expires=" + d.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	};

	//获取cookie
	$.getCookie = function(cname) {
		var name = cname + "=",
			ca = document.cookie.split(';'),
			i = 0,
			c = '';

		for(i = 0; i < ca.length; i++) {
			c = ca[i];
			while(c.charAt(0) == ' ') {
				c = c.substring(1);
			}

			if(c.indexOf(name) != -1) {
				return c.substring(name.length, c.length);
			}
		}

		return "";
	};

	//清除cookie
	$.clearCookie = function(name) {
		setCookie(name, "", -1);
	}
});
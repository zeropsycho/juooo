/**
 * Created by huangjiajia on 2016/7/12.
 * Description: 登陆弹框
 */
define(function(require, exports, module) {
	var $ = require('jquery');

	exports.init = function(options) {

		options = options || {};

		var param = {};
		param.success = options.success || function() {};
		param.autoClose = (options.autoClose === false) ? false : true;
		param.autoReload = (options.autoReload === false) ? false : true;

		var $body = $('body'),
			html = '',
			checkUrl = $body.find('#js-login-url').val(),
			reTakePassUrl = $body.find('#js-retakepass-url').val(),
			registerUrl = $body.find('#js-register-url').val(),
			qqUrl = $body.find('#js-qq-url').val(),
			weiXinUrl = $body.find('#js-weixin-url').val(),
			sinaUrl = $body.find('#js-sina-url').val(),
			alipayUrl = $body.find('#js-alipay-url').val();

		// 移除其它登录弹框
		$body.find('#js-login-wrap').remove();

		/*  html += '<div class="login-wrap" id="js-login-wrap">';
		  html += '<div class="login-bg" id="js-login-bg"></div>';
		  html += '<div class="login-window">';
		  html += '<a class="close" id="js-close-login" href="javascript:;"></a>';
		  html += '<div class="poplogin">';
		  html += '<div class="login-form">';
		  html += '<div class="login-title">';
		  html += '<span class="go-reg">还不是聚橙会员？<a href="' + registerUrl + '">点击注册</a></span>';
		  html += '<h4>帐号登录</h4>';
		  html += '</div>';
		  html += '<form>';
		  html += '<ul>';
		  html += '<li class="login-input">';
		  html += '<label class="login-name juofont"></label>';
		  html += '<input class="login-email" id="js-login-username" type="text" placeholder="注册邮箱/手机号">';
		  html += '<i class="login-icon-tips hide"></i>';
		  html += '</li>';
		  html += '<li class="login-input">';
		  html += '<label class="login-name juofont icon-pass"></label>';
		  html += '<input class="login-email" id="js-login-password" type="password" placeholder="登录密码">';
		  html += '<i class="login-icon-tips hide"></i>';
		  html += '</li>';
		  html += '<li class="must hide" id="js-login-tips">';
		  html += '请输入正确的邮箱或手机号';
		  html += '</li>';
		  html += '<li class="login-pass-item">';
		  html += '<a href="' + reTakePassUrl + '" class="pass-fgtpwd">忘记密码？</a>';
		  //html += '<label class="span-radio"><input name="" type="checkbox" value="1">自动登录</label>';
		  html += '</li>';
		  html += '<li>';
		  html += '<a class="btn no-unl btn-big bg-fe5d36 w100" id="js-login-btn" href="javascript:;">登  录</a>';
		  html += '</li>';
		  html += '</ul>';
		  html += '</form>';
		  html += '</div>';
		  html += ' <div class="login-plmb">';
		  html += '<div class="login-title"><h4>使用合作帐号登录</h4></div>';
		  html += '<p class="thired-parts">';
		  html += '<a href="' + qqUrl + '" class="login-qq"><b></b>QQ帐号</a>';
		  html += '<a href="' + sinaUrl + '" class="login-sina"><b></b>新浪微博</a>';
		  html += '<a href="' + weiXinUrl + '" class="login-weixin"><b></b>微 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;信</a>';
		  //html += '<a href="' + alipayUrl + '" class="login-zhifubao"><b></b>支付宝</a>';
		  html += '</p>';
		  html += '</div>';
		  html += '</div>';
		  html += '</div>';
		  html += '</div>';*/

		html += '<div class="login-wrap" id="js-login-wrap" style="display: none">';
		html += '<div class="bg" id="js-login-bg"></div>';
		html += '<div class="login-wrap-new">';
		html += '<a class="close" id="js-close-login" href="javascript:;"></a>';
		html += ' <div class="login-contant-new">';
		html += '<h1 class="little">会员登录<span>还不是聚橙会员？';
		html += '<a href="' + registerUrl + '">点击注册</a></span>';
		html += '</h1>';
		html += '<form>';
		html += '<ul>';
		html += '<li class="login-input">';
		html += '<label class="login-name juofont"></label>';
		html += '<input class="login-email" id="js-login-username" type="text" placeholder="注册邮箱/手机号">';
		html += '<i class="login-icon-tips-new"></i>';
		html += '</li>';
		html += '<li class="login-input">';
		html += '<label class="login-name juofont icon-pass-new"></label>';
		html += '<input class="login-email" id="js-login-password" type="password" placeholder="登录密码">';
		html += '<i class="login-icon-tips-new hide"></i>';
		html += '</li>';
		html += '<li class="must ">';
		html += '<span class="hide" id="js-login-tips" >请输入正确的邮箱或手机号</span>';
		html += '<a href="' + reTakePassUrl + '" class="pass-fgtpwd">忘记密码？</a>';
		html += '</li>';
		html += '<li>';
		html += '<a class="btn no-unl btn-big bg-fe5d36 w100" id="js-login-btn" href="javascript:;">登  录</a>';
		html += '</li>';
		html += '<li class="jion">使用合作帐号登录：';
		html += '<a class="login-qq" href="' + qqUrl + '"><b></b></a>';
		html += '<a class="login-sina" href="' + sinaUrl + '"><b></b></a>';
		html += '<a class="login-weixin" href="' + weiXinUrl + '"><b></b></a>';
		html += '</li>';
		html += '</ul>';
		html += '</form>';
		html += '</div>';
		html += '</div>';
		html += '</div>';

		$body.append(html);
		$body.find('#js-login-wrap').fadeIn();

		// 关闭弹框
		$body.on('click', '#js-close-login,#js-login-bg', function(e) {
			closeLoginDialog();
		});

		var closeLoginDialog = function() {
			$body.find('#js-login-wrap').fadeOut('fast', function() {
				$body.find('#js-login-wrap').remove()
			});
		};

		// 获取焦点隐藏提示文本
		$body.on('focus', '#js-login-wrap input', function() {
			$body.find('#js-login-tips').addClass('hide');
			$body.find('#js-login-wrap .login-icon-tips').addClass('hide');
			$(this).closest('.login-input').removeClass('text-active');
		});

		// 登录
		$body.on('click', '#js-login-btn', function() {
			loginPopoverFun();

		});

		// 回车键触发登录
		$body.on('keyup', '#js-login-wrap input', function(e) {
			if(e.which == 13) {
				loginPopoverFun();
			}
		});

		// 弹框登陆方法
		var loginPopoverFun = function() {
			var $loginWrap = $body.find('#js-login-wrap'),
				$userName = $loginWrap.find('#js-login-username'),
				$password = $loginWrap.find('#js-login-password'),
				$loginTips = $loginWrap.find('#js-login-tips'),
				$loginTipsIcon = $loginWrap.find('.login-icon-tips'),
				autoLogin = '',
				emailReg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
				mobileReg = /^1[34578]\d{9}$/;

			// 用户名 邮箱/手机号  密码：6-20
			if($userName.val() == '') {
				$loginTips.text('请输入邮箱或手机号码').removeClass('hide');
				$loginTipsIcon.first().removeClass('hide');
				$userName.closest('.login-input').addClass('text-active');
				return;
			} else if(!emailReg.test($userName.val()) && !mobileReg.test($userName.val())) {

				$loginTips.text('请输入正确的邮箱或手机号码').removeClass('hide');
				$loginTipsIcon.eq(0).removeClass('hide');
				$userName.closest('.login-input').addClass('text-active');
				return;
			}

			if($password.val() == '') {
				$loginTips.text('请输入登录密码').removeClass('hide');
				$loginTipsIcon.eq(1).removeClass('hide').removeClass('hide');
				$password.closest('.login-input').addClass('text-active');
				return;
			} else if($password.val().length < 6 || $password.val().length > 20) {
				$loginTips.text('请输入正确的密码').removeClass('hide');
				$loginTipsIcon.eq(1).removeClass('hide');
				$password.closest('.login-input').addClass('text-active');
				return;
			}

			$.ajax({
				type: "POST",
				async: true,
				dataType: "jsonp",
				jsonp: "callback",
				url: checkUrl,
				data: {
					'type': 4,
					'username': $userName.val(),
					'password': $password.val(),
					'isCard': 1
				},
				success: function(data) {
					if(data.code == 1) {
						param.success();
						param.autoClose && closeLoginDialog();
						param.autoReload && (window.location.reload());
					} else {
						$loginTips.text(data.msg).removeClass('hide');
						$loginTipsIcon.removeClass('hide');
						return;
					}
				}
			});
		}
	}
});
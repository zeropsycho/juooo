<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>忘记密码-聚橙网</title>
<meta name="keywords" content="聚橙网" />
<meta name="description" content="聚橙网打造国内专业的票务和演出订票平台" />
<link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/login.css">
</head>

<body>
<div class="header">
    <div class="w1204">
        <div class="logo">
            <a href="http://www.juooo.com/" class="juo"></a>
        </div>
        <h2 class="title">忘记密码</h2>
        <a href="http://www.juooo.com/" class="go_home">返回首页</a>
    </div>
</div><div class="page reg_succeed" style="background:#fafafa url(<%=path%>/resource/user/images/raoknvned4uaucpuaakmavlbil8941.jpg)  center 0 no-repeat; padding-top: 60px;">
	<a href="http://search.juooo.com/?k=%E7%BD%97%E5%AF%86%E6%AC%A7%E4%B8%8E%E6%9C%B1%E4%B8%BD%E5%8F%B6" class="link"></a>
	<div class="login_page rster">
		<div class="reg-left">
			<ul id="btns">
								<li class="active"><a data-toggle="tab-list" data-target="#tab_box_02"
					href="#tab_box_02" "  class=""><i class="myfont ico_user"></i>手机找回密码<b
						class="line"></b></a></li>

												
				<li class=''><a data-toggle="tab-list"
					data-target="#tab_box_01" href="#tab_box_01""  ><i
						class="juofont ico_user">&#xe633;</i>邮箱找回密码<b class="line"></b></a></li>
				
				
				<li><a data-toggle="tab-list" data-target="#tab_box_03"
					href="#tab_box_03" " class=""><i class="otherfont ico_user"></i>其他方式<b
						class="line"></b></a></li>
							</ul>
			<div class="go-login">
				<a href="http://www.juooo.com/">取消并返回首页</a>
			</div>
		</div>
		<div class="reg-right">

						<div class="reg-mail" id="tab_box_01">
				<ul>
					<li>
						<div class="reg_inp_bg clearfix">
							<span class="reg_name">登录邮箱：</span> <input class="reg_ipt"
								name="email" id="email" type="text" maxlength="32"
								placeholder="请输入邮箱地址"> <i class="login-icon-tips hide"
								id="tips_email"></i>
						</div>
					</li>
					<li style="margin-top: 20px; padding-top: 1px;">
						<div class="reg_inp_bg clearfix" style="width: 210px;">
							<span class="reg_name">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</span> <input
								style="width: 105px;" class="reg_ipt " id="code" name="code"
								type="text" maxlength="4" placeholder="请输入验证码"> <i
								class="login-icon-tips hide" id="tips_code"></i>
						</div> <a href="javascript:void(0)" class="testcode"><img
							class="reg_yzm captcha" src="picture/ba67311146064643833a09c32a4d3e16.gif"></a>
					</li>
					<li style="margin-top: 20px;"><input type="submit"
						id="email_btn" class="login-button" value="发送验证邮件"></li>

				</ul>
			</div>
			
			
			<div class="reg-mail reg-phone active" id="tab_box_02">
				<ul>
					<li>
						<div class="reg_inp_bg clearfix">
							<span class="reg_name">手机号码：</span> <input class="reg_ipt"
								name="mobile" id="mobile" type="text" maxlength="11"
								placeholder="请输入手机号码"> <i class="login-icon-tips hide"
								id="tips_mobile"></i>
						</div>
					</li>
					<li style="margin-top: 20px; padding-top: 1px;">
						<div class="reg_inp_bg clearfix" style="width: 210px;">
							<span class="reg_name">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</span> <input
								style="width: 105px;" class="reg_ipt " id="codes" name="codes"
								type="text" maxlength="4" placeholder="请输入验证码"> <i
								class="login-icon-tips hide" id="tips_codes"></i>
						</div> <a href="javascript:void(0)" class="testcode"><img
							class="reg_yzm captcha" src="picture/ba67311146064643833a09c32a4d3e16.gif"></a>
					</li>
					<li style="margin-top: 20px;"><input type="submit"
						id="mobile_btn" class="login-button" value="发送验证短信"></li>

				</ul>
			</div>


			<div class="reg-mail reg-other" id="tab_box_03">
				<h5>请联系客服，由客服人员协助找回密码！</h5>
				<div class="reg_inp_bg">
					<i class="icon-reg-qq"></i><a
						href="http://crm2.qq.com/page/portalpage/wpa.php?f=1&ty=1&ap=&as=&kfuin=4001858666&ws=http%3A%2F%2F&referrer=&cref=&pt=&a=&aty=&dm=&sv=&sp=&bt=">客服在线咨询</a>
				</div>
				<div class="reg_inp_bg">
					<i class="icon-reg-tel"></i><b class="r_tel">400-185-8666</b>
				</div>
			</div>

			<div class="reg-mail reg-mail" id="tab_box_04">
				<div class="rk_info">
					<b class="icon_correct_big"></b>
					<h4>
						密码找回邮件已发送至：<span id="after_email"></span>
					</h4>
					<p>请于24小时内登录您的邮箱点击链接完成密码重设</p>
					<p class="r_btn">
						<a href="" id="email_address" class="imgBtn">查看邮箱<b
							class="arrBg"></b></a>
					</p>
				</div>
				<p class="retakepass_tips">
					为了防止邮件被误认为垃圾邮件或广告邮件，请将其设置为信任邮件确保您能正常收到系统发送的验证邮件。<br>如果您长时间没有收到验证邮件，<a
						href="http://passport.juooo.com/User/retakepass">请重新发送</a>
				</p>
			</div>

			<div class="reg-mail reg-phone" id="tab_box_05">
				<div class="rk_info">
					<b class="icon_correct_big"></b>
					<h4>
						短信验证码已发送至：<span id="after_mobile"></span>，请输入验证码完成密码重设
					</h4>
					<p style="padding-top: 5px;">
						<input style="width: 200px;" id="mobile_codes" maxlength="6"
							placeholder="请输入验证码" class="com_ipt" name="" type="text" sid="0">
						<input type="hidden" name="phoneCode" value=""> <span
							class="rk_tip"> <i class="icon_warn_small hide"
							id="icon_word"></i> <span id="show_word"> </span>
						</span>
					</p>
					<p class="r_btn">
						<a class="imgBtn imgBtnCur" id="moblie_submit">提 交<b
							class="arrBg"></b></a>
					</p>
				</div>
				<p class="retakepass_tips">
					如果您长时间没有接收到短信，<a href="http://passport.juooo.com/User/retakepass">请重新发送</a>
					或联系客服：400-185-8666
				</p>
			</div>
			<div class="reg-mail" id="reset_phone_box">
				<div class="cpase">重置登陆密码：</div>
				<div class="cpase">
					登入手机号码：<span id="cpase_phone"></span>
				</div>
				<ul>
					<li style="margin-bottom: 15px">
						<div class="reg_inp_bg clearfix">
							<span class="reg_name">新 密 码：</span> <input class="reg_ipt"
								name="phoneNewPassword" id="phoneNewPassword" type="password"
								placeholder="请输入新密码"> <i class="login-icon-tips hide"
								id="tips_reset_new_password"></i>
						</div>
					</li>
					<li>
						<div class="reg_inp_bg clearfix" style="margin: 0">
							<span class="reg_name">确认密码：</span> <input class="reg_ipt"
								name="phoneRePassword" id="phoneRePassword" type="password"
								placeholder="请再次输入新密码"> <i class="login-icon-tips hide"
								id="tips_reset_re_password"></i>
						</div>
					</li>
					<li style="margin-top: 20px;"><input type="submit"
						id="reset_mobile_btn" class="login-button" value="确认提交"></li>
				</ul>
			</div>

			<div class="cpase hide" id="success_ok">密码修改成功，将在5秒后跳转！</div>

		</div>
	</div>

</div>


<div class="foot">
	<div class="mini-foot">
		<p>
			                        <a href="http://www.juooo.com/footconfig/1" target="_blank" title="关于我们">关于我们</a><span class="line">|</span>
                        <a href="http://www.juooo.com/footconfig/2" target="_blank" title="联系我们">联系我们</a><span class="line">|</span>
                        <a href="http://www.juooo.com/footconfig/5" target="_blank" title="加入我们">加入我们</a><span class="line">|</span>
                        <a href="http://www.juooo.com/footconfig/3" target="_blank" title="服务条款">服务条款</a><span class="line">|</span>
                        			<a href="http://www.juooo.com/about/job" target="_blank">加入我们</a> | 
			<a href="http://www.juooo.com/news/newslist/" target="_blank">媒体报道</a> | 
			<a href="http://www.juooo.com/about/partner" target="_blank">合作伙伴</a> | 
			<a href="http://www.juooo.com/about/map" target="_blank">网站地图</a></p>
		<p>全国统一客服电话：400-185-8666 深圳市聚橙网络技术有限公司</p>
		<p>Copyright 2007-2016 © 聚橙网 粤B2-20070272 | 粤ICP备09218027号</p>
	</div>
</div>
<script type="text/javascript" src="<%=path%>/resource/user/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/modules-config.js"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/jquery.min.js"></script>
<script type="text/javascript">
	//引入juo.min
	seajs.use([ 'juo', 'tabsCommon' ], function(ex) {
		$(function() {
			$('.reg-left li').on('click', function() {
				if ($(this).hasClass('active'))
					return;
				$('.reg-mail').removeClass('active');
			})
		});
	});

	$(function() {
		var returnUrl = "http://passport.juooo.com/";
		var verifyToken = '9edbc6acae9192888f630a352ef7aefc';
		/**
		 * 发送验证邮箱
		 */
		$("#email_btn").click(
				function() {
					var email = $("input[name=email]").val();
					var code = $("#code").val();
					var type = 0;
					if (email == "") {
						$("#tips_email").show();
					} else if (code == "") {
						checkCode('tips_code', code);
					} else {
						$("#email_btn").attr('disabled', true);
						$.post("retakepass", {
							type : type,
							email : email,
							code : code
						}, function(result) {
							if (result.code == 1) {
								$("#after_email").text(result.email);
								$("#email_address")
										.attr('href', result.address);
								$("#tab_box_01").hide();
								$("#tab_box_04").addClass('active');
								$("[href='#tab_box_01']").attr('data-target',
										'#tab_box_04');
								$("[href='#tab_box_01']").attr('href',
										'#tab_box_04');
							} else {
								$("#tips_email").show();
							}
							$("#email_btn").attr('disabled', false);
						}, 'json')
					}

				})

		$("#mobile_codes").blur(function() {
			var obj = $("#icon_word");
			var code = $("#mobile_codes").val();

			if (code == "") {
				$(this).attr('placeholder', '请输入验证码');
				$(this).val('');
				obj.show().css("display", "inline-block");
			} else if (code.length != 6) {
				$(this).attr('placeholder', '请输入正确的验证码');
				$(this).val('');
				obj.show().css("display", "inline-block");
			} else {
				obj.hide();
			}
		})

		$("#moblie_submit").click(function() {
			var obj = $("#icon_word");
			var code = $("#mobile_codes").val();
			var type = 2;
			if (code == "") {
				$(this).attr('placeholder', '请输入验证码');
				$(this).val('');
				obj.show().css("display", "inline-block");
			} else {
				$("#mobile_btn").attr('disabled', true);
				$.post("opencheck.html", {
					type : type,
					code : code
				}, function(result) {
					if (result.code == 1) {
						$("#tab_box_02").hide();
						$("#reset_phone_box").addClass('active');
						$("#reset_phone_box").attr('id', 'tab_box_02');
						$(".reg-phone").eq(1).attr('id', 'reset_phone_box');
					} else {
						obj.show().css("display", "inline-block");
						$("#mobile_codes").val('');
						$("#mobile_codes").attr('placeholder', result.msg);
					}
					$("#mobile_btn").attr('disabled', false);
				}, 'json')
			}
		})
		/**
		 * 重置邮箱发送按钮
		 */
		$("#reset_mobile_btn").click(function() {
			var newPassword = $("#phoneNewPassword").val();
			var rePassword = $("#phoneRePassword").val();
			var mobile = $("#cpase_phone").text();
			var newTipsObj = $("#tips_reset_new_password");
			var oldTipsObj = $("#tips_reset_re_password");
			var type = 1;
			if (newPassword == "") {
				newTipsObj.show();
			} else if (rePassword == "") {
				oldTipsObj.show();
			} else if (newPassword != rePassword) {
				newTipsObj.show();
				oldTipsObj.show();
			} else {
				newTipsObj.hide();
				oldTipsObj.hide();
				$.post("resetpass", {
					type : type,
					mobile : mobile,
					newPassword : newPassword,
					rePassword : rePassword
				}, function(result) {
					if (result.code == 1) {
						$("#success_ok").show();
						window.location.href = returnUrl;
					} else {
						newTipsObj.show();
						oldTipsObj.show();
					}
				}, 'json')

			}

		})

		/**
		 * 发送手机短号
		 */
		$("#mobile_btn").click(function() {
			var mobile = $("input[name=mobile]").val();
			var code = $("#codes").val();
			var type = 1;
			if (mobile == "") {
				$("#tips_mobile").show();
			} else if (code == "") {
				checkCode('tips_codes', code);
			} else {
				$.post("retakepass", {
					type : type,
					mobile : mobile,
					code : code
				}, function(data) {
					if (data.code) {
						$.post("sendsms", {
							type : type,
							mobile : mobile,
							verifyToken:verifyToken
						}, function(result) {
							if (result.code == 1) {
								$("#after_mobile").text(mobile);
								$("#cpase_phone").text(data.mobile);
								$("#tab_box_02").hide();
								$("#tab_box_05").addClass('active');
								$(".reg-phone").eq(0).attr('id', 'tab_box_05');
								$(".reg-phone").eq(1).attr('id', 'tab_box_02');
							} else {
								$("#tips_mobile").show();
							}
						}, 'json');
					} else {
						$("#tips_mobile").show();
					}
				}, 'json')
			}
		})
		/**
		 * 重置邮箱
		 */
		$("#reset_btn").click(function() {
			var newPassword = $("input[name=newPassword]").val();
			var rePassword = $("input[name=rePassword]").val();
			var resetCode = $("input[name=reset_code]").val();
			var resetObj = $("#reset_box");
			var successObj = $("#success_ok");

			if (newPassword == "") {
				$("#tips_new_password").show();
			} else if (rePassword == "") {
				$("#tips_re_password").show();
			} else {
				$.post("resetpass", {
					resetCode : resetCode,
					newPassword : newPassword,
					rePassword : rePassword
				}, function(result) {
					if (result.code) {
						successObj.show();
						$("#reset_btn").attr('disabled', 'disabled');
						window.location.href = returnUrl;
					} else {
						$("#tips_new_password").show();
						$("#tips_re_password").show();
					}

				}, 'json')
			}

		})

		/**
		 * 新密码离开焦点
		 */
		$("input[name=newPassword]").blur(function() {
			var newPassword = $(this).val();
			var obj = $("#tips_new_password");
			if (newPassword == "") {
				obj.show();
			} else if (newPassword.length < 6) {
				$(this).attr('密码太短了，最少6位');
				$(this).val('');
				obj.show();
			} else if (newPassword.length > 20) {
				$(this).attr('placeholder', '密码太长了，最多20位');
				$(this).val('');
				obj.show();
			} else if (newPassword.indexOf(" ") > -1) {
				$(this).attr('placeholder', '密码不支持空格');
				$(this).val('');
				obj.show();
			} else {
				obj.hide();
			}
		})

		/**
		 * 确认密码离开焦点
		 */
		$("#rePassword").blur(function() {
			var newPassword = $("input[name=newPassword]").val();
			var rePassword = $("input[name=rePassword]").val();
			var obj = $("#tips_re_password");
			if (rePassword == "") {
				obj.show();
			} else if (newPassword != rePassword) {
				$(this).attr('placeholder', '两次输入的密码不一致');
				$(this).val('');
				obj.show();
			} else {
				obj.hide();
			}

		})

		/**
		 * 手机号码离开焦点
		 */
		$("input[name=mobile]").blur(function() {
			var mobile = $(this).val();
			var mobileCheck = /^[0-9]*$/;
			var obj = $("#tips_mobile");

			if (mobile.length == 11) {
				if (mobileCheck.test(mobile)) {
					obj.hide();
					return false;
				}
			}
			$(this).attr('placeholder', '请输入正确的手机号码');
			obj.show();
		})

		/**
		 * 邮箱号码离开焦点
		 */
		$("input[name=email]").blur(function() {
			var email = $(this).val();
			var emailCheck = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			var obj = $("#tips_email");

			if (emailCheck.test(email)) {
				obj.hide();
			} else {
				$(this).attr('placeholder', '请输入正确的邮箱账号');
				obj.show();
			}
		})

		//切换验证码
		$(".reg_yzm").click(function() {
			$(".reg_yzm").attr("src", "showVerify.html?rand=" + Math.random());
		})

		//邮件验证码
		$("#code").blur(function() {
			checkCode('tips_code', $(this).val());
		})

		//手机验证码
		$("#codes").blur(function() {
			checkCode('tips_codes', $(this).val());
		})

	});

	/**
	 * 检查验证码准确性
	 * 
	 * @param name
	 * @param code
	 */
	function checkCode(name, code) {
		var obj = $("#" + name);
		if (code.length == 4) {
			$.post("opencheck", {
				code : code
			}, function(result) {
				if (result.code == 1) {
					obj.hide();
				} else {
					$(".reg_yzm").attr("src",
							"showVerify.html?rand=" + Math.random());
					obj.show();
				}
			}, 'json')
		} else {
			$(this).attr('placeholder', '请输入正确的验证码');
			obj.show();
		}
	}
</script>
</body>
</html>

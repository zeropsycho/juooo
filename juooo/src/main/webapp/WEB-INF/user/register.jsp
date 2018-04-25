<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>会员注册-聚橙网</title>
<meta name="keywords" content="聚橙网" />
<meta name="description" content="聚橙网打造国内专业的票务和演出订票平台" />
<link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/resource/user/css/login.css">
</head>

<body>
<div class="header">
    <div class="w1204">
        <div class="logo">
            <a href="..\juooo\index.html" class="juo"></a>
        </div>
        <h2 class="title">会员注册</h2>
        <a href="..\juooo\index.html" class="go_home">返回首页</a>
    </div>
</div><!-- 背景banner交互，后台需设置图片与背景颜色2个属性 -->
<div class="page" style="background:#fafafa url(<%=path%>/resource/user/images/raoknvned4uaucpuaakmavlbil8941.jpg)  center 0 no-repeat">
	<a href="http://search.juooo.com/?k=%E7%BD%97%E5%AF%86%E6%AC%A7%E4%B8%8E%E6%9C%B1%E4%B8%BD%E5%8F%B6" class="link"></a>
	<div class="login_page">
		<div class="login_main">
			<div class="static-form">
				<div class="tt">新用户注册</div>
				<div class="field">
					<i class="myfont ico_user">&#xe60a;</i> <input type="text" value=""
						name="mobile" placeholder="手机号码：" maxlength="11" class="ipt" autocomplete="new-password"/>
				</div>

				<div class="field">
					<i class="myfont ico_user">&#xe614;</i> <input type="text" value=""
						name="verify_code" placeholder="图形码：" maxlength="4" class="ipt"
						style="width: 211px;" /><a href="javascript:void(0)" class="testcode" style="display: none"><img
							class="reg_yzm captcha"  autocomplete="new-password"></a>
				</div>

				<div class="field">
					<i class="myfont ico_user">&#xe614;</i> <input type="text" value=""
						name="code" placeholder="验证码：" maxlength="6" class="ipt"
						style="width: 211px;" autocomplete="new-password" /> <a class="mob-code">获取手机验证码</a>
				</div>
				<div class="field">
					<i class="juofont ico_user">&#xe61e;</i> <input type="password"
						value="" name="password" placeholder="密码：6~20个字符，字母、数字和符号组合"
						maxlength="20" class="ipt" autocomplete="new-password" />
				</div>
				<div class="logTips hide"></div>
				<div class="field">
					<button id="register" class="btn btn-default gbtn">同意协议并注册</button>
				</div>
				<div class="login-links">
					<span class="reg">已有帐号，<a href="login.html">去登录</a></span>
					<a href="http://www.juooo.com/about/termsService" class="forget-pass">《聚橙网服务协议》</a>
				</div>
			</div>

		</div>
	</div>

</div>

<div class="foot">
	<div class="mini-foot">
		<p>
			                        <a href="#" target="_blank" title="关于我们">关于我们</a><span class="line">|</span>
                        <a href="#" target="_blank" title="联系我们">联系我们</a><span class="line">|</span>
                        <a href="#" target="_blank" title="加入我们">加入我们</a><span class="line">|</span>
                        <a href="#" target="_blank" title="服务条款">服务条款</a><span class="line">|</span>
                        			<a href="http://www.juooo.com/about/job" target="_blank">加入我们</a> | 
			<a href="#" target="_blank">媒体报道</a> | 
			<a href="#" target="_blank">合作伙伴</a> | 
			<a href="#" target="_blank">网站地图</a></p>
		<p>全国统一客服电话：400-185-8666 深圳市聚橙网络技术有限公司</p>
		<p>Copyright 2007-2016 © 聚橙网 粤B2-20070272 | 粤ICP备09218027号</p>
	</div>
</div>
<script type="text/javascript" src="<%=path%>/resource/user/js/sea.js" id="seajsnode"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/modules-config.js"></script>
<script type="text/javascript" src="<%=path%>/resource/user/js/jquery.min.js"></script>
<script type="text/javascript">
	//引入juo.min
	seajs.use([ 'juo' ], function(ex) {

	});

	$(function() {

		$.post("opencheck",function(result){
			$(".testcode .reg_yzm").attr("src","showVerify.html?rand=" + Math.random());
			$('.testcode').css('display','inline-block');
		});

		var mobile, verifyCode, password, code, returnUrl;
		var checkVerifyCode = false;
		var obj = $(".logTips");
		var numberCheck = /^[0-9]*$/;
		var count = 60;
		var curCount;
		var InterValObj;
		var type;
		var verifyToken = 'e0568b8af55d79e8fded7ff90b2bf373'
		$("#register").click(function() {
			mobile = $("input[name=mobile]").val();
			code = $("input[name=code]").val();
			verifyCode = $("input[name=verify_code]").val();
			password = $("input[name=password]").val();
			returnUrl = "..\juooo\index.html";
			if (mobile == "") {
				obj.text('请输入手机号码');
				obj.show();
			}else if(verifyCode.length == 4){   
				$.post("opencheck", {
					code : verifyCode
				}, function(result){
					if(result.code != 1)
					{
						$(".testcode .reg_yzm").attr("src","showVerify.html?rand=" + Math.random());
						obj.text('图形验证码错误');
						obj.show();
					}else if(code == "") {
						obj.text('请输入验证码');
						obj.show();
					}else if(password == "") {
						obj.text('请输入密码');
						obj.show();
					}else{
						$.post("", {
							mobile : mobile,
							code : code,
							password : password
						}, function(result) {
							if (result.code == 1) {
								window.location.href = returnUrl;
								obj.hide();
							}else{
								obj.text(result.msg);
								obj.show();
							}
						}, 'json');
					}
				}, 'json');
			}else if(code.length != 4){   
				object.text('请输入正确的图形验证码');
				object.show();
			}

		});

		$(".mob-code").click( function(){
			mobile = $("input[name=mobile]").val();
			verifyCode = $("input[name=verify_code]").val();
			type = 2;
			if (mobile.length == 11)
			{   
				if(verifyCode.length == 4)
				{
					$.post("opencheck", {
						code : verifyCode
					}, function(result){
						if( result.code != 1 )
						{   
							$(".testcode .reg_yzm").attr("src","showVerify.html?rand=" + Math.random());
							obj.text('图形验证码错误');
							obj.show();
						}
						else
						{
							if ($('.mob-code').attr("disabled") != "disabled") 
							{   
								obj.hide();
								$.post("sendsms", {
									type : type,
									mobile : mobile,
									verify_code : verifyCode,
									verifyToken : verifyToken
								}, function(result) {
									if (result.code == 1) {
										curCount = count;
										$(".mob-code").addClass("gray");
										$(".mob-code").attr("disabled",
												"disabled");
										$(".mob-code").text(
												"重新获取" + "（" + curCount + "）");
										InterValObj = window.setInterval(
												setRemainTime, 1000);
									} else {
										obj.text(result.msg);
										obj.show();
									}
								}, 'json');
							}
						}
					}, 'json')
				}
				else
				{
					object.text('请输入正确的图形验证码');
					object.show();
				}	
			}
		});

		$("input[name=mobile]").blur(function() {
			mobile = $(this).val();
			if (mobile == "") {
				obj.text('请输入手机号码');
				obj.show();
			} else if (numberCheck.test(mobile)) {
				if (mobile.length != 11) {
					obj.text('请输入正确的手机号码');
					obj.show();
				} else {
					obj.hide();
				}
			} else {
				obj.text('请输入正确的手机号码');
				obj.show();
			}
		})

		$("input[name=code]").blur(function() {
			code = $(this).val();
			if (code == "") {
				obj.text('请输入验证码');
				obj.show();
			} else if (numberCheck.test(code)) {
				if (code.length != 6) {
					obj.text('请输入正确的验证码');
					obj.show();
				} else {
					obj.hide();
				}
			} else {
				obj.text('请输入正确的验证码');
				obj.show();
			}
		})

		$("input[name=password]").blur(function() {
			password = $(this).val();
			if (password == "") {
				obj.text('请输入密码');
				obj.show();
			} else if (password.length < 6) {
				obj.text('密码太短了，最少6位');
				obj.show();
			} else if (password.length > 20) {
				obj.text('密码太长了，最多20位');
				obj.show();
			} else if (password.indexOf(" ") > -1) {
				obj.text('密码不支持空格');
				obj.show();
			} else {
				obj.hide();
			}
		})

		//切换验证码
		$(".testcode .reg_yzm").click(function(){
			$(".testcode .reg_yzm").attr("src", "showVerify.html?rand=" + Math.random());
		});

		/**
		 * 验证码计时
		 */
		function setRemainTime() {
			if (curCount == 0)
			{
				window.clearInterval(InterValObj);
				$(".mob-code").removeClass("gray");
				$(".mob-code").removeAttr("disabled");
				$(".mob-code").text("获取手机验证码");
				return false;
			}
			else 
			{
				curCount--;
				$(".mob-code").text("重新获取" + "（" + curCount + "）");
			}
		}
	})
</script>
</body>
</html>

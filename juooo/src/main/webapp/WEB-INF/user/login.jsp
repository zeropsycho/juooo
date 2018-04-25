<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><br/><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>会员登录-聚橙网</title>
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
        <h2 class="title">会员登录</h2>
        <a href="..\juooo\index.html" class="go_home">返回首页</a>
    </div>
</div><!-- 背景banner交互，后台需设置图片与背景颜色2个属性 -->
<div class="page" style="background:#fafafa url(<%=path%>/resource/user/images/raoknvned4uaucpuaakmavlbil8941.jpg)  center 0 no-repeat">
	<a href="http://search.juooo.com/?k=%E7%BD%97%E5%AF%86%E6%AC%A7%E4%B8%8E%E6%9C%B1%E4%B8%BD%E5%8F%B6" class="link"></a>
	<div class="login_page">
		<div class="login_main">
			<div class="static-form">
				<div class="tt">帐号登录</div>
				<div class="field">
					<i class="juofont ico_user">&#xe614;</i> <input type="text"
						value="" name="username" placeholder="注册邮箱/手机号" class="ipt"
						maxlength="32" />
				</div>
				<div class="field">
					<i class="juofont ico_user">&#xe61e;</i> <input type="password"
						value="" name="password" placeholder="登录密码" class="ipt"
						maxlength="20" />
				</div>
				<div class="logTips hide"></div>
				<div class="login-links">
					<span class="reg">还不是聚橙会员？<a
						href="register.html">点击注册</a></span><a
						href="http://passport.juooo.com/User/retakepass" class="forget-pass">忘记密码？</a>
				</div>
				<div class="field">
					<button class="btn btn-default gbtn">登 录</button>
				</div>
				<div class="entries">
					<a href="#" class="qq"><b class="juofont">&#xe601;</b>QQ帐号</a> 
					<a href="#" class="sina"><b class="juofont">&#xe60d;</b>新浪微博</a> 
					<a href="#" class="wx"><b class="juofont">&#xe625;</b>微信登录</a>
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
		var username, password;
		var obj = $(".logTips");
		var emailCheck = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		var mobileCheck = /^[0-9]*$/;
		var returnUrl = "..\juooo\index.html";

		//回车键事件  
		$(document).keypress(function(e) {
			if (e.which == 13) {
				$(".btn").click();
			}
		});

		//按钮点击
		$(".btn").click(function() {
			username = $("input[name=username]").val();
			password = $("input[name=password]").val();
			if (username == "") {
				obj.text('请输入邮箱或手机号码');
				obj.show();
			} else if (password == "") {
				obj.text('登录密码不能为空');
				obj.show();
			} else {
				$.post("", {
					username : username,
					password : password,
					isCard : 1
				}, function(result) {
					if (result.code == 1) { //登陆成功
						window.location.href = returnUrl;
						obj.hide();
					} else {
						obj.text(result.msg);
						obj.show();
					}
				}, 'json')
			}
		})

		//账号焦点
		$("input[name=username]").blur(function() {
			username = $(this).val();
			password = $("input[name=password]").val();
			if (username == "") {
				obj.text('请输入邮箱或手机号码');
				obj.show();
			} else if (mobileCheck.test(username)) {
				if (username.length != 11) {
					obj.text('请输入正确的邮箱或手机号码');
					obj.show();
				} else {
					obj.hide();
				}
			} else if (emailCheck.test(username)) {
				obj.hide();
			} else {
				obj.text('请输入正确的邮箱或手机号码');
				obj.show();
			}

		})

		//密码焦点
		$("input[name=password]").blur(function() {
			username = $("input[name=username]").val();
			password = $(this).val();
			if (password == "") {
				obj.text('登录密码不能为空');
				obj.show();
			} else {
				obj.hide();
				if (username == "") {
					obj.text('请输入邮箱或手机号码');
					obj.show();
				} else if (mobileCheck.test(username)) {
					if (username.length != 11) {
						obj.text('请输入正确的邮箱或手机号码');
						obj.show();
					} else {
						obj.hide();
					}
				} else if (emailCheck.test(username)) {
					obj.hide();
				} else {
					obj.text('请输入正确的邮箱或手机号码');
					obj.show();
				}
			}
		})

	})
</script>
</body>
</html>

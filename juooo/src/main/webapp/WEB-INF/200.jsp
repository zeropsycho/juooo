<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	该功能测试成功<br/>
	<form action="<%=path %>/test/test" method="post">
		<input type="hidden" name="hidden" value="200"/>
		<input type="submit" name="submit" value="跳转静态404页面"/>
	</form>
	<img src="<%=path%>/WEB-INF/resource/images/close.png">
</body>
</html>
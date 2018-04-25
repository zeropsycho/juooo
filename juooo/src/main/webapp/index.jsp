<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=path %>/test/test" method="post">
		<input type="hidden" name="hidden" value="view" /> <input
			type="submit" name="sub" value="挑转首页" />
	</form>
	<a href="<c:url value='/juooo/message/select' />">测试数据</a>
	<a href="<c:url value='/message/selectnews'/> ">跳转新闻</a>
	<c:forEach var="messages" items="${mList}">
   		${messages.informationfordetails }
	</c:forEach>
</body>
</html>
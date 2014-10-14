<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Search</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<style>
.bg {
	text-align: center;
}
</style>
<body class="bg" background="images/2.jpg">
	<h4>
		<a href="">回到主页</a>
	</h4>
	<h2>搜索结果</h2>
	<s:iterator value="books" var="c">
		<s:property value="#c.id" />
		<s:property value="#c.name" />
		<s:property value="#c.author" />

		<br>
	</s:iterator>
</body>
</html>

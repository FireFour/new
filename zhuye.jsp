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

<title>lab2</title>
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
<body class="bg" background="images/1.jpg">
	<h1>搜索图书</h1>
	<form action="search">
		<input type="text" name="au" maxlength="100" placeholder="请输入作者名">
		<input type="submit" value="搜索">
	</form>
	<h2>全部书籍</h2>
	<s:iterator value="books" var="c">

		<s:property value="#c.name" />
		<s:property value="#c.author" />
		<a href="one?id=<s:property value="#c.id"/>">详情</a>
		<a href="delete?id=<s:property value="#c.id"/>">删除</a>
		<br>
	</s:iterator>
</body>
</html>

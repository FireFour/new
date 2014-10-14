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

<title>图书详情</title>
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
<body class="bg" background="images/3.jpg">
	<h4>
		<a href="">回到主页</a>
	</h4>
	<h2>
		<s:property value="book.name" />
		图书详情
	</h2>
	<div class="item2">
		书名:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.name" />
	</div>

	<div class="item2">
		出版日期:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.pubtime" />
	</div>
	<div class="item2">
		出版社:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.whopub" />
	</div>
	<div class="item2">
		价格:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.price" />
	</div>
	<div style="margin: 12px 0 15px 0;height: 20px;"></div>

	<h2>作者信息</h2>
	<div class="item2">
		name:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.author" />
	</div>
	<div class="item2">
		年龄:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.age" />
	</div>
	<div class="item2">
		国籍:&nbsp;&nbsp;&nbsp;&nbsp;
		<s:property value="book.country" />
</body>
</html>

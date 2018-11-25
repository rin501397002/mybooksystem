<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'top.jsp' starting page</title>
    <link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
	<style type="text/css">
.header{
	background: url(${ctx}/images/bg-default.jpg) repeat-x;
	height: 60px;
}
	</style>
  </head>
  
  <body>
	<div class="header">
		<div class="header-container">
			<div class="row-fluid">
				<div class="span6 header-text">图书管理系统</div>
				<div class="text-right topmenu">
					用户名:${pfUser.username } <span class="topmenusep">|</span> 
					<a href="" class="topmenu"> 我的配置 </a> 
					<span class="topmenusep">|</span> 
					<a href="${ctx}/index.jsp" class="topmenulast"> 退出登陆 </a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

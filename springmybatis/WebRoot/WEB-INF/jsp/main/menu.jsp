<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'menu.jsp' starting page</title>
	<link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${ctx}/js/jquery-1.11.1.min.js"></script>
	
	<script type="text/javascript">
		$(function(){	
	  	//导航切换
		$(".nav li").click(function(){
			$(".nav li.active").removeClass("active")
			$(this).addClass("active");
	  	});
	  });
	  function openUrl(modelUrl){
	  	 parent.main.location = modelUrl;
	  }
	</script>
	<style type="text/css">
.menu-container {
	/* width: 230px !important; */
	border-right: 1px solid rgb(37, 195, 207) !important;
	height: 100%;
	background-color: #E0EFF6;
}
</style>
  </head>
  
  <body>
	<div class="menu-container">
		<div class="menu">
			<ul class="nav nav-list main-menu">
				<li class="">
					<p>功能导航</p>
				</li>
				<ul class="nav nav-list sub-menu ">
					<c:if test="${pfUser.role==1}">
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/borrowController/list.do')">借书</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/userController/list.do')">历史记录</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/userController/list.do')">还书</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/userController/list.do')">用户管理</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/roleController/list.do')">角色管理</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/libraryController/list.do')">图书馆信息</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/booktypeController/list.do')">图书分类</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/bookController/list.do')">图书管理</a></li>
					</c:if>
					<c:if test="${pfUser.role!=1}">
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/borrowController/list.do')">借书</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/userController/list.do')">历史记录</a></li>
						<li url="#" class=""><a href="javascript:openUrl('${ctx }/userController/list.do')">还书</a></li>
					</c:if>
				</ul>
			</ul>
		</div>
	</div>
</body>
</html>

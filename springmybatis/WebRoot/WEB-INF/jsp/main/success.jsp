<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>主界面</title>

  </head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="${ctx}/mainController/top.do" name="topFrame" scrolling="no">
	<frameset cols="180,*" name="btFrame" frameborder="NO" border="0" framespacing="0">
		<frame src="${ctx}/mainController/menu.do" noresize name="menu" scrolling="yes">
		<frame src="${ctx}/mainController/center.do" noresize name="main" scrolling="yes">
	</frameset>
</frameset>
<noframes>
	<body>
		
	</body>
</noframes>
</html>

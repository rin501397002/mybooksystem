<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'booktype_view.jsp' starting page</title>
    <link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
    <ol class="breadcrumb" style="margin-left: 5px;">
		<li><a href="#">模块</a> /</li>
		<li><a href="#">图书分类</a> /</li>
		<li class="active">查看</li>
	</ol>
	<div id="content1" style="padding: 5px;">
		<div class="row-fluid main-content">
			<div class="pannel">
				<div class="pannel-body">
					<table class="table table-bordered">
						<colgroup>
							<col width="100px">
							<col>
							<col width="100px">
							<col>
							<col width="100px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<td class="text">图书分类</td>
								<td><span>${booktypea.booktypename }</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pannel-footer text-center">
					<a href="" class="btn" onClick="history.go(-1);">返回列表</a>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>

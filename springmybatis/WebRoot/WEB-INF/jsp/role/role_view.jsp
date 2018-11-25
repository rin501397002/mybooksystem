<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'role_view.jsp' starting page</title>
	<link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
	<ol class="breadcrumb" style="margin-left: 5px;">
		<li><a href="#">模块</a> /</li>
		<li><a href="#">角色管理</a> /</li>
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
								<td class="text">角色名称</td>
								<td><span>${roles.rolename }</span></td>
								<td class="text">是否管理员</td>
								<td><span>${roles.ifmanager eq 0 ? '否' : '是'}</span></td>
								<td class="text">借书天数</td>
								<td><span>${roles.borrowday }</span></td>
							</tr>
							<tr>
								<td class="text">备注</td>
								<td colspan="5"><span>${roles.remark }</span></td>
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

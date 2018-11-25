<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'user_view.jsp' starting page</title>
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
								<td class="text">用户名</td>
								<td><span>${users.username }</span></td>
								<td class="text">密码</td>
								<td><span>${users.password }</span></td>
								<td class="text">性别</td>
								<td><span>${users.sex eq 1 ? '男' : '女'}</span></td>
							</tr>
							<tr>
								<td class="text">借书证号</td>
								<td><span>${users.borrownumber }</span></td>
								<td class="text">邮箱</td>
								<td><span>${users.mailbox }</span></td>
								<td class="text">手机号</td>
								<td><span>${users.telephone }</span></td>
							</tr>
							<tr>
								<td class="text">是否可借阅</td>
								<td><span>${users.ifborrow eq true ? '可借' : '不可借'}</span></td>
								<td class="text">借阅数量</td>
								<td><span>${users.number }</span></td>
								<td class="text">角色</td>
								<td><span>${users.role }</span></td>
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

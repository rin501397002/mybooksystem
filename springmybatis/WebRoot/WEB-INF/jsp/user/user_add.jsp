<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'user_add.jsp' starting page</title>
    <link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
  </head>
  
  <body>
    <form action="${ctx }/userController/add.do" method="post">
		<ol class="breadcrumb" style="margin-left: 5px;">
			<li><a href="#">模块</a> /
			</li>
			<li><a href="#">用户管理</a> /
			</li>
			<li class="active">新增</li>
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
								<td>
									<input type="text" class="span12l" value="" name="username" required="" datatype="Require" data-placement="right" data-content="用户名不能为空">
								</td>
								<td class="text">密码</td>
								<td>
									<input type="password" class="span12l" value="" name="password" required="" datatype="Require" data-placement="right" data-content="密码不能为空">
								</td>
								<td class="text">性别</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="sex">
								    	<option value="0" selected="selected">男</option>
										<option value="1" >女</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="text">借书证号</td>
								<td>
									<input type="text" value="" class="span12" required="" name="borrownumber">
								</td>
								<td class="text">邮箱</td>
								<td>
									<input type="text" value="" class="span12" required="" name="mailbox">
								</td>
								<td class="text">手机号</td>
								<td>
									<input type="text" value="" class="span12" required="" name="telephone">
								</td>
							</tr>
							<tr>
								<td class="text">是否可借阅</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="ifborrow">
								    	<option value="0" >否</option>
										<option value="1" selected="selected">是</option>
									</select>
								</td>
								<td class="text">借阅数量</td>
								<td>
									<input type="text" value="" class="span12" required="" name="number">
								</td>
								<td class="text">角色</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="role">
								    	<option value="">---请选择---</option>
										<c:forEach items="${Roles}" var="item">
											<option value="${item.roleid}">${item.rolename}</option>	
										</c:forEach>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pannel-footer text-center">
					<button type="submit" class="btn btn-primary">保 存</button>
					<button type="reset" class="btn">重 置</button>
					<a href="" class="btn" onClick="history.go(-1);">返回列表</a>
				</div>
			</div>
		</div>
	</div>
  	</form>
  </body>
</html>

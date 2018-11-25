<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'user_update.jsp' starting page</title>
	<link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <form action="${ctx }/userController/update.do" method="post">
    	<input type="hidden" name="userid" value="${users.userid }" />
		<ol class="breadcrumb" style="margin-left: 5px;">
			<li><a href="#">模块</a> /
			</li>
			<li><a href="#">用户管理</a> /
			</li>
			<li class="active">修改</li>
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
									<input type="text" class="span12l" value="${users.username }" name="username" required="" datatype="Require" data-placement="right" data-content="用户名不能为空">
								</td>
								<td class="text">密码</td>
								<td>
									<input type="password" class="span12l" value="${users.password }" name="password" required="" datatype="Require" data-placement="right" data-content="密码不能为空">
								</td>
								<td class="text">性别</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="sex">
								    	<option value="1" ${1 eq users.sex ? "selected='selected'":""}>男</option>
										<option value="0" ${0 eq users.sex ? "selected='selected'":""}>女</option>
									</select>
								</td>
							</tr>
							<tr>
								<td class="text">借书证号</td>
								<td>
									<input type="text" value="${users.borrownumber }" class="span12" name="borrownumber" required="" datatype="Require" data-placement="right" data-content="借书证号不能为空">
								</td>
								<td class="text">邮箱</td>
								<td>
									<input type="text" value="${users.mailbox }" class="span12" name="mailbox" required="" >
								</td>
								<td class="text">手机号</td>
								<td>
									<input type="text" value="${users.telephone }" class="span12" name="telephone" required="" datatype="Require" data-placement="right" data-content="手机号不能为空">
								</td>
							</tr>
							<tr>
								<td class="text">是否可借阅</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="ifborrow">
										<option value="1" ${true eq users.ifborrow ? "selected='selected'":""}>是</option>
										<option value="0" ${false eq users.ifborrow ? "selected='selected'":""}>否</option>
									</select>
								</td>
								<td class="text">借阅数量</td>
								<td>
									<input type="text" value="${users.number }" class="span12" name="number" required="" datatype="Require" data-placement="right" data-content="借阅数量不能为空">
								</td>
								<td class="text">角色</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="role">
								    	<option value="">---请选择---</option>
										<c:forEach items="${roless}" var="item">
											<option value="${item.roleid}" ${item.roleid eq users.role ? "selected='selected'":""}>${item.rolename}</option>	
										</c:forEach>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pannel-footer text-center">
					<button type="submit" class="btn btn-primary">修改</button>
					<button type="reset" class="btn">重 置</button>
					<a href="" class="btn" onClick="history.go(-1);">返回列表</a>
				</div>
			</div>
		</div>
	</div>
  	</form>
  </body>
</html>

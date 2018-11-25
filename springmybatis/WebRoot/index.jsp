<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>登陆</title>
    <link href="${ctx}/css/bootstrap-rtl.min.css" rel="stylesheet" /> 
  	<link href="${ctx}/css/style_index.css" rel="stylesheet" />
  	<script type="text/javascript" src="${ctx}/js/jquery-1.11.1.min.js"></script>
  	<script type="text/javascript">
  		window.onload=function(){
  			if(top.location!=self.location){
  				top.location=self.location;
  			}
  		};
  	</script>
	<style>
    .lock{
      position: relative !important;
      top:-27px !important;
      width:80px !important;
      height:80px !important;
      margin-left:23px !important;
    }
  </style>
  </head>
  
  <body id="login-body">
	<div class="login-header">
		<!-- BEGIN LOGO -->
		<div id="logo" class="center">
			LOGO
		</div>
		<!-- END LOGO -->
	</div>

	<!-- BEGIN LOGIN -->
	<div id="login">
		<!-- BEGIN LOGIN FORM -->
		<form id="loginform" class="form-vertical no-padding no-margin" action="${ctx }/userController/login.do" method="post">
			<div class="lock">
				<img src="${ctx}/images/photo.jpg" />
			</div>
			<div class="control-wrap">
				<div class="control-group">
					<div class="controls">
						<div class="input-prepend">
							<span class="add-on"> <i class="icon-user">
									<div
										style="background:url(${ctx}/images/glyphicons-halflings-custom.png);background-position: -168px 0px;widht:25px;height:25px;">
									</div> </i>
							</span> <input style="padding:20px;" name="username" id="input-username" type="text" placeholder="用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="input-prepend">
							<span class="add-on"> <i class="icon-key">
									<div
										style="background:url(${ctx}/images/glyphicons-halflings-custom.png);background-position: -288px -22px;widht:25px;height:25px;">
									</div> </i>
							</span> <input style="padding:20px;" name="password" id="input-password" type="password" placeholder="密码" />
						</div>
						<div class="mtop10">
							<div class="block-hint pull-left small">
								<input type="checkbox" id=""> 记住密码
							</div>
							<div class="block-hint pull-right">
								<a href="javascript:;" class="" id="forget-password">忘记密码</a>
							</div>
						</div>

						<div class="clearfix space5"></div>
					</div>

				</div>
			</div>

			<input type="submit" id="login-btn" class="btn btn-block login-btn" value="登陆" />
		</form>
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div id="login-copyright">2016 &copy; Admin.</div>
	<!-- END COPYRIGHT -->
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'book_view.jsp' starting page</title>
    <link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
    <ol class="breadcrumb" style="margin-left: 5px;">
		<li><a href="#">模块</a> /</li>
		<li><a href="#">图书管理</a> /</li>
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
								<td class="text">图书编号</td>
								<td><span>${booka.booknumber }</span></td>
								<td class="text">书名</td>
								<td><span>${booka.bookname }</span></td>
								<td class="text">作者</td>
								<td><span>${booka.author }</span></td>
							</tr>
							<tr>
								<td class="text">出版社</td>
								<td><span>${booka.press }</span></td>
								<td class="text">出版时间</td>
								<fmt:formatDate var="newdate" value="${booka.presstime}" pattern="yyyy-MM-dd"/>
								<td><span>${newdate }</span></td>
								<td class="text">册数</td>
								<td><span>${booka.bookamount }</span></td>
							</tr>
							<tr>
								<td class="text">定价</td>
								<td><span>${booka.price }</span></td>
								<td class="text">图书分类</td>
								<td><span>${booka.booktype }</span></td>
								<td class="text">图书馆</td>
								<td><span>${booka.library }</span></td>
							</tr>
							<tr>
								<td class="text">页数</td>
								<td><span>${booka.pagenumber }</span></td>
								<td class="text">简介</td>
								<td><span>${booka.intro }</span></td>
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

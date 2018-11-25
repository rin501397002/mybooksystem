<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'book_update.jsp' starting page</title>
    <link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
  	<script type="text/javascript" src="${ctx}/My97DatePicker/WdatePicker.js"></script>

  </head>
  
  <body>
    <form action="${ctx }/bookController/update.do" method="post">
    	<input type="hidden" name="bookid" value="${booka.bookid }" />
    	<fmt:formatDate var="olddate" value="${booka.entrydate}" pattern="yyyy-MM-dd"/>
    	<input type="hidden" name="entrydate" value="${olddate }" />
		<ol class="breadcrumb" style="margin-left: 5px;">
			<li><a href="#">模块</a> /
			</li>
			<li><a href="#">图书管理</a> /
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
								<td class="text">图书编号</td>
								<td>
									<input type="text" class="span12l" value="${booka.booknumber }" name="booknumber" required="" datatype="Require" data-placement="right" data-content="不能为空">
								</td>
								<td class="text">书名</td>
								<td>
									<input type="text" class="span12l" value="${booka.bookname }" name="bookname" required="" datatype="Require" data-placement="right" data-content="不能为空">
								</td>
								<td class="text">作者</td>
								<td>
									<input type="text" class="span12"  value="${booka.author }" name="author"   required="" >
								</td>
							</tr>
							<tr>
								<td class="text">出版社</td>
								<td>
									<input type="text" class="span12"  value="${booka.press }" name="press"   required="" >
								</td>
								<td class="text">出版时间</td>
								<td>
									<fmt:formatDate var="newdate" value="${booka.presstime}" pattern="yyyy-MM-dd"/>
									<input id="d12" type="text" class="span12"  value="${newdate }" name="presstime" style="float: left;width: 180px;">
									<img onclick="WdatePicker({el:'d12'})" src="${ctx}/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
								</td>
								<td class="text">册数</td>
								<td>
									<input type="text" class="span12"  value="${booka.bookamount }" name="bookamount"   required="" >
								</td>
							</tr>
							<tr>
								<td class="text">定价</td>
								<td>
									<input type="text" class="span12"  value="${booka.price }" name="price"   required="" >
								</td>
								<td class="text">图书分类</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="booktype">
								    	<option value="">---请选择---</option>
										<c:forEach items="${booktypesa}" var="item">
											<option value="${item.booktypeid}" ${item.booktypeid eq booka.booktype ? "selected='selected'":""}>${item.booktypename}</option>	
										</c:forEach>
									</select>
								</td>
								<td class="text">图书馆</td>
								<td>
									<select class="form-control" value="" style="width:135px;" name="library">
								    	<option value="">---请选择---</option>
										<c:forEach items="${librariesa}" var="item">
											<option value="${item.libraryid}" ${item.libraryid eq booka.library ? "selected='selected'":""}>${item.libraryname}</option>	
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="text">页数</td>
								<td>
									<input type="text" class="span12"  value="${booka.pagenumber }" name="pagenumber"   >
								</td>
								<td class="text">简介</td>
								<td>
									<input type="text" class="span12"  value="${booka.intro }" name="intro"    >
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="pannel-footer text-center">
					<button type="submit" class="btn btn-primary">修 改</button>
					<button type="reset" class="btn">重 置</button>
					<a href="" class="btn" onClick="history.go(-1);">返回列表</a>
				</div>
			</div>
		</div>
	</div>
  	</form>
  </body>
</html>

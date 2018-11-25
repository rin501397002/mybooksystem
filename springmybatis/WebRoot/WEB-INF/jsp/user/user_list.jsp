<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'user_list.jsp' starting page</title>
    <link rel="stylesheet" href="${ctx}/css/style.css" type="text/css"></link>
	<script type="text/javascript" src="${ctx}/js/jquery.min.js"></script>
	<script type="text/javascript">
//获取选中的数据
function getcheckboxItem(){
    var r=document.getElementsByName("radio"); 
    var ck = new Array();
    var j  =  0;  
    for(var i=0;i<r.length;i++){
        if(r[i].checked){
       		ck[j] = r[i].value; 
       		j++; 
       	}
    }
    return j == 0 ? undefined : ck.join();
}

function select(){
	 var name=document.getElementById("name").value;
	 location="${ctx}/userController/listByname.do?username="+name;
}
function showAdd(){
	location="${ctx}/userController/toadd.do";
}
function showupdate(id){
	if(id==0){
		id=getcheckboxItem();
		if(id.indexOf(",")>0){
			alert('您选择了多条数据，请重新选择在进行操作');
		}else{
			location="${ctx}/userController/toupdate.do?userid="+id;
		}
	}
}
function delete_user(id){
	if(id==0){
		id=getcheckboxItem();
		if(id.indexOf(",")>0){
			if(confirm("是否删除??")){
				window.location.href="${ctx}/userController/delitem.do?ids="+id;
			}
		}else{
			if(confirm("是否删除??")){
				window.location.href="${ctx}/userController/delete.do?userid="+id;
			}
		}
	}
}
function showAll(id){
	if(id==0){
		id=getcheckboxItem();
		if(id.indexOf(",")>0){
			alert('您选择了多条数据，请重新选择在进行操作');
		}else{
			window.location.href="${ctx}/userController/toview.do?userid="+id;
		}
	}
}

</script>
  </head>
  
  <body>
  <form id="form">
	<div class="rightinfo">
		<div class="tools">
			<ul class="toolbar">
				<li><input type="text" style="padding:9px;" id="name" value="${user.username}" placeholder="用户名/借书证号"></li>
				<li onclick="select()">
				 <span><img src="${ctx}/images/search.png" /></span>查询
				</li>
				<li onclick="showAdd()">
				<span><img src="${ctx}/images/t01.png" /></span>添加
				</li>
				<li onclick="showupdate(id)">
				<span><img src="${ctx}/images/t02.png" /></span>修改
				</li>
				<li onclick="delete_user(id)" class="click">
				<span><img src="${ctx}/images/t03.png" /></span>删除
				</li>
				<li onclick="showAll(id)">
				<span><img src="${ctx}/images/ico06.png" width="24" height="24" /></span>详情
				</li>
			</ul>
		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th style="width: 36px;">
						<input name="" type="checkbox" value=""/>
					</th>
					<th>序号
						<i class="sort"><img src="${ctx}/images/px.gif" /></i>
					</th>
					<th>用户</th>
					<th>性别</th>
					<th>借书证号</th>
					<th>邮箱</th>
					<th>手机号</th>
					<th>是否可借阅</th>
					<th>可借阅数量</th>
					<th>角色</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Users}" var="item" varStatus="status">
					<tr>
						<td>
						<input type="checkbox" value="${item.userid}" id="radio" name="radio"/>
						</td>
						<td >${status.index + 1}</td>
						<td>${item.username}</td>
						<td>${item.sex==1?"男" : "女"}</td>
						<td>${item.borrownumber}</td>
						<td>${item.mailbox}</td>
						<td>${item.telephone}</td>
						<td>${item.ifborrow==true?"可借" : "不可借"}</td>
						<td>${item.number}</td>
						<td>${item.rolename}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="pagin">
			<div class="message">
				共<i class="blue">1</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span>
				</a>
				</li>
				<li class="paginItem"><a href="javascript:;">1</a>
				</li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span>
				</a>
				</li>
			</ul>
		</div>
		
	</div>
  </form>
  
</body>
</html>

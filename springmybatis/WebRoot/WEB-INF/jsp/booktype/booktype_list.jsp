<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>My JSP 'booktype_list.jsp' starting page</title>
	<link href="${ctx}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap.covering.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="${ctx}/css/framework.css" rel="stylesheet" type="text/css">
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
	 var name=document.getElementById("booktypename").value;
	 location="${ctx}/booktypeController/listByname.do?booktypename="+name;
}
function showAdd(){
	location="${ctx}/booktypeController/toadd.do";
}
function showupdate(id){
	if(id==0){
		id=getcheckboxItem();
		if(id.indexOf(",")>0){
			alert('您选择了多条数据，请重新选择在进行操作');
		}else{
			location="${ctx}/booktypeController/toupdate.do?booktypeid="+id;
		}
	}else{
		alert('请选择数据')
	}
}
function delete_user(id){
	if(id==0){
		id=getcheckboxItem();
		if(id.indexOf(",")>0){
			if(confirm("是否删除??")){
				window.location.href="${ctx}/booktypeController/delitem.do?ids="+id;
			}
		}else{
			if(confirm("是否删除??")){
				window.location.href="${ctx}/booktypeController/delete.do?booktypeid="+id;
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
			window.location.href="${ctx}/booktypeController/toview.do?booktypeid="+id;
		}
	}
}

</script>
  </head>
  
  <body>
    <div id="content1">
		<div class="row-fluid main-content">
			<form id="form" class="form-horizontal">
				<div class="pannel" style="margin: 10px;">
					<div class="pannel-body">
						<table class="table table-no-border">
							<colgroup>
								<col width="140px"><col>
								<col width="120px"><col>
							</colgroup>
							<tbody>
								<tr>
									<td>图书分类</td>
									<td><input type="text" value="${booktype.booktypename}" id="booktypename"  class="span10"></td>
								</tr>
								
							</tbody>
						</table>
					</div>
					<div class="pannel-footer text-right">
						<button type="button" class="btn btn-primary"  onclick="select()">查询</button>
						<button type="button" class="btn btn-primary"  onclick="showAdd()">新增</button>
						<button type="button" class="btn btn-primary"  onclick="showupdate(id)" >修改</button>
						<button type="button" class="btn btn-primary"  onclick="delete_user(id)" >删除</button>
						<button type="button" class="btn btn-primary"  onclick="showAll(id)" >详情</button>
					</div>
				</div>

				<div class="pannel" style="margin: 10px;">
					<div class="pannel-header">
						<h4>共返回条记录</h4>
					</div>
					<div class="pannel-body">
						<table class="table table-hover table-bordered table-list">
							<thead>
								<tr>
									<th style="width: 36px;"><input type="checkbox" /></th>
									<th style="width: 5%">序号</th>
									<th>图书分类</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${booktypes}" var="item" varStatus="status">
									<tr>
										<td><input type="checkbox" value="${item.booktypeid}"
											id="radio" name="radio" /></td>
										<td>${status.index + 1}</td>
										<td>${item.booktypename}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="pannel-footer text-center"></div>
				</div>
			</form>
		</div>
	</div>
  </body>
</html>

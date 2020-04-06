<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>管理员列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>
	
	<br>
	
	<div>
		<form class="form-inline" method="post" action="adminAdd">
			<input type="text" class="form-control" name="username" placeholder="输入用户名" required="required">
			<input type="text" class="form-control" name="password" placeholder="输入密码" required="required">
			<input type="submit" class="btn btn-success" value="添加管理员"/>
		</form>
	</div>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">名称</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach var="admin" items="${adminList}">
         <tr>
         	<td><p>${admin.id}</p></td>
         	<td><p>${admin.username}</p></td>
			<td>
				<a class="btn btn-primary" href="adminEdit?id=${admin.id}">修改</a>
				<a class="btn btn-danger" href="adminDelete?id=${admin.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>类目列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>
	
	<br>
	
	<div>
		<form class="form-inline" method="post" action="categoryAdd">
			<input type="text" class="form-control" id="input_name" name="name" placeholder="输入类目名称" required="required">
			<input type="submit" class="btn btn-success" value="添加类目"/>
		</form>
	</div>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">名称</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach var="category" items="${categoryList}">
         <tr>
         	<td><p>${category.id}</p></td>
         	<td><p>${category.name}</p></td>
			<td>
				<a class="btn btn-primary" href="categoryEdit?id=${category.id}">修改</a>
				<a class="btn btn-danger" href="categoryDelete?id=${category.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

</div>
</body>
</html>
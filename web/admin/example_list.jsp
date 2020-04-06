<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>案例列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>
	
	<div class="text-right"><a class="btn btn-success" href="exampleAdd">添加案例</a></div>
	
	<br>
		
	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%">ID</th>
			<th width="10%">图片</th>
			<th width="10%">名称</th>
			<th width="20%">介绍</th>
			<th width="10%">类目</th>
			<th width="10%">操作</th>
		</tr>
		
		<c:forEach var="example" items="${exampleList}">
	         <tr>
	         	<td><p>${example.id}</p></td>
	         	<td><p><a href="../index/example?id=${example.id}" target="_blank"><img src="${example.photo}" width="100px"></a></p></td>
	         	<td><p><a href="../index/example?id=${example.id}" target="_blank">${example.name}</a></p></td>
	         	<td><p>${example.intro}</p></td>
	         	<td><p>${example.category.name}</p></td>
				<td>
					<a class="btn btn-primary" href="exampleEdit?id=${example.id}">修改</a>
					<a class="btn btn-danger" href="exampleDelete?id=${example.id}">删除</a>
				</td>
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>产品列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>
	
	<div class="text-right"><a class="btn btn-success" href="productAdd">添加产品</a></div>
	
	<br>
	
	<form class="form-inline" action="productSearch" id="serchform" method="post">
		<div class="form-group">
			<input type="text" class="form-control" name="id" placeholder="输入ID">
		</div>
		<div class="form-group">
			<input type="text" class="form-control" name="name" placeholder="输入名称">
		</div>
		<a href="javascript:;" onclick="document.getElementById('serchform').submit();" type="submit" class="btn btn-default">点击搜索</a>
	</form>
		
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
		
		<c:forEach var="product" items="${productList}">
	         <tr>
	         	<td><p>${product.id}</p></td>
	         	<td><p><a href="../index/product?id=${product.id}" target="_blank"><img src="${product.photo}" width="100px"></a></p></td>
	         	<td><p><a href="../index/product?id=${product.id}" target="_blank">${product.name}</a></p></td>
	         	<td><p>${product.intro}</p></td>
	         	<td><p>${product.category.name}</p></td>
				<td>
					<a class="btn btn-primary" href="productEdit?id=${product.id}">修改</a>
					<a class="btn btn-danger" href="productDelete?id=${product.id}">删除</a>
				</td>
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
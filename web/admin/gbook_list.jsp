<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>留言列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>
	
	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%">ID</th>
			<th width="10%">姓名</th>
			<th width="10%">电话</th>
			<th width="10%">邮箱</th>
			<th width="30%">内容</th>
			<th width="10%">操作</th>
		</tr>
		
		<c:forEach var="gbook" items="${gbookList}">
	         <tr>
	         	<td><p>${gbook.id}</p></td>
	         	<td><p>${gbook.name}</p></td>
	         	<td><p>${gbook.phone}</p></td>
	         	<td><p>${gbook.email}</p></td>
	         	<td><p>${gbook.content}</p></td>
				<td>
					<a class="btn btn-danger" href="gbookDelete?id=${gbook.id}">删除</a>
				</td>
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
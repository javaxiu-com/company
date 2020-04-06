<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>新闻列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp" %>
	
	<div class="text-right"><a class="btn btn-success" href="newsAdd">添加新闻</a></div>
	
	<br>
		
	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%">ID</th>
			<th width="10%">图片</th>
			<th width="10%">标题</th>
			<th width="50%">内容</th>
			<th width="10%">类型</th>
			<th width="10%">操作</th>
		</tr>
		
		<c:forEach var="news" items="${newsList}">
	         <tr>
	         	<td><p>${news.id}</p></td>
	         	<td><p><a href="../index/news?id=${news.id}" target="_blank"><img src="${news.photo}" width="100px"></a></p></td>
	         	<td><p><a href="../index/news?id=${news.id}" target="_blank">${news.title}</a></p></td>
	         	<td><p>${news.intro}</p></td>
	         	<td>
	         		<p>
			         	<c:if test="${news.type==1}">公司新闻</c:if>
			         	<c:if test="${news.type==2}">行业动态</c:if>
	         		</p>
	         	</td>
				<td>
					<a class="btn btn-primary" href="newsEdit?id=${news.id}">修改</a>
					<a class="btn btn-danger" href="newsDelete?id=${news.id}">删除</a>
				</td>
	       	</tr>
	     </c:forEach>
	     
	</table>

	<br>${pageHtml}<br>
</div>

</body>
</html>
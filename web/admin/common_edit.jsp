<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>公司信息</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>
	
	<c:if test="${msg != null}">
		<div class="alert alert-success" role="alert">${msg}</div>
	</c:if>

	<br>
	
	<form class="form-horizontal" action="commonUpdate" method="post" enctype="multipart/form-data">
	
		<c:forEach var="banner" items="${bannerList}" varStatus="status">
			<div class="form-group">
				<label for="input_pass" class="col-sm-2 control-label">轮播图${status.count}</label>
				<div class="col-sm-9">
					<img src="${banner}" class="img-responsive">推荐尺寸: 1920 * 470
					<input type="file" name="banner">
				</div>
			</div>
		</c:forEach>
		
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">二维码</label>
			<div class="col-sm-9">
				<img src="${qrcode}" class="img-responsive">推荐尺寸: 200 * 200
				<input type="file" name="qrcode">
			</div>
		</div>
		
		<c:forEach var="text" items="${textList}" varStatus="status">
			<div class="form-group">
				<label for="input_pass" class="col-sm-2 control-label">横幅文字${status.count}</label>
				<div class="col-sm-9">
					<input type="text" name="text" class="form-control" value="${text}">
				</div>
			</div>
		</c:forEach>
		
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-9">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
		
	</form>
	
</div>	
</body>
</html>
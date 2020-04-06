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
	<form class="form-horizontal" action="companyUpdate" method="post">
		<input type="hidden" name="id" value="${company.id}">
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">公司名称</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="name" value="${company.name}" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">公司简介</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="title" value="${company.title}" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">详细介绍</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="6" name="intro">${company.intro}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">联系电话</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="phone" value="${company.phone}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">联系手机</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mobile" value="${company.mobile}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">联系地址</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="address" value="${company.address}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">网址</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="url" value="${company.url}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass_new" class="col-sm-2 control-label">邮箱</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="email" value="${company.email}">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-9">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
	
</div>	
</body>
</html>
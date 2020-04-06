<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>新闻添加</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">
	<%@include file="header.jsp"%>

	<br><br>
	<form class="form-horizontal" action="newsSave" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">标题</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="title"  required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">内容</label>
			<div class="col-sm-6">
				<textarea class="form-control" rows="6" name="intro"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">图片</label> 
			<div class="col-sm-6">
				<input type="file" name="file" id="input_file" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">类型</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="type">
					<option value="1">公司新闻</option>
					<option value="2">行业动态</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">提交保存</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>
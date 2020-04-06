<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>新闻编辑</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">
	<%@include file="header.jsp"%>

	<br><br>
	<form class="form-horizontal" action="newsUpdate" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${news.id}"/>
		<input type="hidden" name="photo" value="${news.photo}"/>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">标题</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="title" value="${news.title}" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">内容</label>
			<div class="col-sm-6">
				<textarea class="form-control" rows="6" name="intro">${news.intro}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">图片</label> 
			<div class="col-sm-6"><img src="${news.photo}" width="100" height="100"/>
				<input type="file" name="file"  id="input_file">
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">类目</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="type">
					<c:if test="${news.type==1}">
						<option selected="selected" value="1">公司新闻</option>
						<option value="2">行业动态</option>
					</c:if>
					<c:if test="${news.type==2}">
						<option value="1">公司新闻</option>
						<option selected="selected" value="2">行业动态</option>
					</c:if>
				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>
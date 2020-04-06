<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>修改密码</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	<%@include file="header.jsp"%>

	<br><br>	
		
	<c:if test="${msg != null}">
		<div class="alert alert-success" role="alert">${msg}</div>
	</c:if>
	<c:if test="${msg1 != null}">
		<div class="alert alert-danger" role="alert">${msg1}</div>
	</c:if>
	
	<form class="form-horizontal" action="adminUpdate" method="post">
		<input type="hidden" name="id" value="${admin.id}">
		<input type="hidden" name="username" value="${admin.username}">
		<div class="form-group">
			<label for="input_name" class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-5">${admin.username}</div>
		</div>
		<div class="form-group">
			<label for="input_pass" class="col-sm-2 control-label">原密码</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input_pass" name="password" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_pass_new" class="col-sm-2 control-label">新密码</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input_pass" name="passwordNew" required="required">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-5">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
	
</div>	
</body>
</html>
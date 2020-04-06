<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>${company.name}</title>
   	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="owlCarousel/css/owlCarousel.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<jsp:include page="header.jsp"/>


	<div class="content">
	
		<div class="main-pad-2 main-Background-1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-3 subnav-list">
						<div class="subnav">
							<ol class="clearfix no-padding no-margin">
								<b class="pull-left glyphicon glyphicon-th-large hidden-xs hidden-sm"></b>
								<h1 class="pull-left no-margin"><span class="hidden-md hidden-lg"></span>联系我们</h1>
								<small class="text-capitalize pull-left hidden-xs hidden-sm">Contact us</small>
							</ol>
							<ul class="list-unstyled pcdnav">
								<li><a href="contact" class="text-center">联系我们</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-9 subnav-list">
						<div class="row hidden-xs hidden-sm">
							<div class="col-xs-12">
								<div class="title-4 clearfix">
									<h5 class="no-margin pull-left">联系我们</h5>
									<p class="no-margin pull-right"><a href="index" class="tr">首页：</a><strong>联系我们</strong></p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
						 		<div class="text-6">
									<div class="box subnav">										  
										<div class="contact-text hidden-xs hidden-sm">
											<p><strong style="white-space: normal;">${company.name}</strong>
											<br style="white-space: normal;"/>地址：${company.address}
											<br style="white-space: normal;"/>电话：${company.phone}
											<br style="white-space: normal;"/>手机：${company.mobile}
											<br style="white-space: normal;"/>邮箱：${company.email}
											<br style="white-space: normal;"/>网址：${company.url}</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

        	
	<jsp:include page="footer.jsp"/>
	
 
</body>
</html>
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
								<h1 class="pull-left no-margin"><span class="hidden-md hidden-lg"></span>产品展示</h1>
								<small class="text-capitalize pull-left hidden-xs hidden-sm">Product</small>
							</ol>
							<ul class="list-unstyled pcdnav">
							
								<c:forEach var="category" items="${categoryList}">
									<li><a class="text-center" href="product?categoryId=${category.id}">${category.name}</a></li>
								</c:forEach>

							</ul>
							<ol class="clearfix no-padding no-margin hidden-xs hidden-sm">
								<b class="pull-left glyphicon glyphicon-th-large"></b>
								<h1 class="pull-left no-margin">联系我们</h1>
								<small class="text-capitalize pull-left">Contact us</small>
							</ol>
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
					<div class="col-md-9 subnav-list">
						<div class="row hidden-xs hidden-sm">
							<div class="col-xs-12">
								<div class="title-4 clearfix">
									<h5 class="no-margin pull-left">产品展示</h5>
									<p class="no-margin pull-right"><a href="index" class="tr">首页：</a>产品展示</p>
								</div>
							</div>
						</div>
						<div class="row">
						
							<c:forEach var="product" items="${productList}">
							
								<div class="col-xs-6 col-md-4 pictrue-1-list">
									<a href="product?id=${product.id}">
										<div class="imgbox">
											<span class="tr2" style="background:url(${product.photo}) 50% 50%; background-size:cover;">
												<img src="images/icon/p1_mb.png" alt="">
											</span>
										</div>
										<h5 class="no-margin text-center tr overflow">${product.name}</h5>
									</a>
								</div>
							
							</c:forEach>
	
                       	</div>
                       	
				        ${pageHtml}<!-- 分页 -->
              
					</div>
				</div>
			</div>
		</div>

	</div>

        	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>
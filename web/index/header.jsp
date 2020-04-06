<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<header>
		<div class="top_bar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12 clearfix">
						<div class="logo pull-left">
							<a href="index" style="font-size:38px;color:#FF6400;">
								<b>${company.name}</b>
							</a>
						</div>
						<div class="tel pull-right hidden-xs hidden-sm">
							座机：${company.phone}<br>手机：${company.mobile}
						</div>
						<div class="ydd_btn pull-right hidden-md hidden-lg">
							<span class="span01 tr"></span>
							<span class="span02 tr"></span>
							<span class="span03 tr"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="menu">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<ul class="list-unstyled no-margin clearfix">
							<li class="pull-left text-center"><a href="index" class="tr">网站首页</a></li>
							<li class="pull-left text-center"><a href="about" class="tr">公司简介</a></li>
							<li class="pull-left text-center"><a href="news" class="tr">新闻资讯</a></li>
							<li class="pull-left text-center"><a href="product" class="tr">产品展示</a>
								<div class="ul">
									<c:forEach var="category" items="${categoryList}">
										<div class="li text-center"><a href="product?categoryId=${category.id}" class="tr">${category.name}</a></div>
									</c:forEach>
								</div>
							</li>
							<li class="pull-left text-center"><a href="example" class="tr">精品案例</a></li>
							<li class="pull-left text-center"><a href="contact" class="tr">联系我们</a></li>
							<li class="pull-left text-center"><a href="../admin.jsp" class="tr">后台登录</a></li>
						 </ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div class="banner">
		<div id="myCarousel" data-ride="carousel" data-interval="3000" class="carousel slide">
		  <ol class="carousel-indicators">
		  	<c:forEach var="banner" items="${bannerList}" varStatus="status">
		  		<c:if test="${status.count==1}">
				    <li data-target="#myCarousel" data-slide-to="${status.index}" class="active"></li>
				</c:if>
		  		<c:if test="${status.count>1}">
				    <li data-target="#myCarousel" data-slide-to="${status.index}"></li>
				</c:if>
		  	</c:forEach>
		  </ol>
		  <div class="carousel-inner">
		  	<c:forEach var="banner" items="${bannerList}" varStatus="status">
		  		<c:if test="${status.count==1}">
				    <div class="item active" style="background:#000">
					    <a><img src="${banner}" class="img-responsive"></a>
					</div>
				</c:if>
		  		<c:if test="${status.count>1}">
				    <div class="item" style="background:#000">
					    <a><img src="${banner}" class="img-responsive"></a>
					</div>
				</c:if>
		  	</c:forEach>
		  </div>
			<!--<a href="#myCarousel" class="left carousel-control hidden-xs hidden-sm" data-slide="prev"></a>
			<a href="#myCarousel" class="right carousel-control hidden-xs hidden-sm" data-slide="next"></a> -->
		</div>
	 </div>
	 
	 <div class="text-1">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="tel">TEL：${company.mobile}</div>	
						<!-- <div class="search tr">
							<form action="search" method="post">
								<input type="text" id="search_text"  name="search_text" placeholder="Search...">
								<button type="submit"></button>
							</form>
						</div> -->
						<ul class="list-unstyled no-margin pull-right hidden-xs hidden-sm">
							<c:forEach var="category" items="${categoryList}">
								<li class="pull-left"><a href="product?categoryId=${category.id}" class="tr">${category.name}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>	
	
	
</body>
</html>
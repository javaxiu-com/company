<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
								<h1 class="pull-left no-margin"><span class="hidden-md hidden-lg"></span>新闻资讯</h1>
								<small class="text-capitalize pull-left hidden-xs hidden-sm">News</small>
							</ol>
							<ul class="list-unstyled pcdnav">
		                        <li >
		                            <a href="news?type=1"  class="text-center">公司新闻</a>
		                        </li>
		                        <li >
		                            <a href="news?type=2"  class="text-center">行业动态</a>
		                        </li>
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
									<h5 class="no-margin pull-left">新闻资讯</h5>
									<p class="no-margin pull-right"><a href="index" class="tr">首页：</a>新闻资讯</p>
								</div>
							</div>
						</div>
						<div class="row">
					
					
							<c:forEach var="news" items="${newsList}">
							
								<div class="col-xs-12 pictrue-7-list">
								 	<div class="box">
										<a href="news?id=${news.id}">
											<div class="imgbox tr">
												<span class="tr2" style="background:url(${news.photo}) 50% 50%; background-size:cover;"></span>	
							      			</div>
											<div class="textbox">
												<h5 class="overflow tr">${news.title}</h5>
												<span><fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
												<p>${news.intro}</p>
												<div class="more text-right"><span class="text-center tr">查看详情</span></div>
											</div>
										</a>
									</div>
								</div>
							
							</c:forEach>
				
            			</div>
            			
            			<br><br>
            			
				        ${pageHtml}<!-- 分页 -->
				        
					</div>
				</div>
			</div>
		</div>
		
	</div>

        	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>
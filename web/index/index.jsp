<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>${company.name}</title>
   	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="owlCarousel/css/owlCarousel.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<jsp:include page="header.jsp"/>


	<div class="content">
	
		
		<!-- 产品展示 -->
		<div class="main-pad-1 main-Background-1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="title-1 text-center">
							<a href="product">
								<small class="text-uppercase">Products</small>
								<h5 class="no-margin"><span>产品展示</span></h5>
							</a>
						</div>
						<div class="title-2 text-center">
							<ul class="list-unstyled no-margin clearfix">
								<c:forEach var="category" items="${categoryList}">
					            	<li><a class="tr">${category.name}</a></li>
								</c:forEach>
							</ul>
						</div>
						
						<div class="pictrue-1-box">
						
							<c:forEach var="pList" items="${productList}">

								<div class="pictrue-1">
									<div class="owl-carousel pictrue-1-owl">
									
										<div class="item">
										
											<c:forEach var="p" items="${pList}" varStatus="status">
											
												<div class="pictrue-1-list">
													<a href="product?id=${p.id}">
														<div class="imgbox">
															<span class="tr2" style="background:url(${p.photo}) 50% 50%; background-size:cover;">
																<img src="images/icon/p1_mb.png" alt="">
															</span>
														</div>
														<h5 class="no-margin text-center tr overflow">${p.name}</h5>
													</a>
												</div>
											
												<c:if test="${status.count<fn:length(pList) && status.count%2 == 0}">
													</div><div class="item"><!-- 两个一组, 如果后面没有更多了不生成空div -->
												</c:if>
											
											</c:forEach>
											
										</div>
										
									</div>	
								</div>
							
							</c:forEach>
		
					  	</div>
					  	
						<div class="more-1 text-center">
							<a href="product" class="tr">查看详情></a>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<div class="main-pad-1 main-Background-3">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="text-2 text-center">
							<h3>${textList[0]}</h3>
							<p class="no-margin">${textList[1]}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 公司简介 -->
		<div class="main-pad-1 main-Background-1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="title-1 text-center">
							<a href="about">
								<small class="text-uppercase">Company Profile</small>
								<h5 class="no-margin"><span>公司简介</span></h5>
							</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="pictrue-2">
							<a class="tr2" style="background:url(images/bangong.jpg) 50% 50%; background-size:cover;">
								<img src="images/icon/p2_mb.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="text-3">
							<div class="biaoti overflow tr"></div>
							<div style="line-height:26px;">
								<p>${company.intro}</p>
							</div>
							<a href="about" class="tr">查看详情>></a>
						</div>
						<div class="pictrue-3">
							<div class="owl-carousel pictrue-3-owl">
		 						<!-- 此处轮播显示各个类目的第一个产品 -->
		 						<c:forEach var="pList" items="${productList}">
		 							<c:forEach var="p" items="${pList}" end="0">
										<div class="item">
											<a>
												<div class="imgbox text-center tr">
													<img src="${p.photo}" alt="${p.name}">
												</div>
												<h5 class="no-margin text-center overflow tr">${p.name}</h5>
											</a>
										</div>
									</c:forEach>
								</c:forEach>
		 
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 公司新闻 -->
		<div class="main-pad-1">
			<div class="container-fluid">
				<div class="row">
		 
					<div class="col-md-6">
						<div class="title-3 clearfix">
							<div class="left pull-left">
								<a href="news?type=1" class="tr">
									公司新闻<span class="text-uppercase tr">News</span>
								</a>
							</div>
							<div class="right pull-right">
								<a href="news?type=1" class="tr">MORE +</a>
							</div>
						</div>
						
						<div class="pictrue-4">
							<c:forEach var="news" items="${newsList1}" end="0">
								<a href="news?id=${news.id}">
									<div class="imgbox">
										<span class="tr2" style="background:url(${news.photo}) 50% 50%; background-size:cover;"></span>	
									</div>
									<div class="textbox">
										<div class="biaoti">
											<h5 class="no-margin overflow tr">${news.title}</h5>
											<span class="text-right"><fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd"/></span>
										</div>
										<p>${news.intro}</p>
										<div class="more text-center tr">详情>></div>
									</div>
								</a>
							</c:forEach>
						</div>
									
						<div class="text-4">
							<ul class="list-unstyled no-margin clearfix">
							
								<c:forEach var="news" items="${newsList1}" begin="1">
									<li class="overflow">
										<a href="news?id=${news.id}" class="tr">${news.title}</a>
										<span class="text-right"><fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd"/></span>
									</li>
								</c:forEach>

							</ul>
						</div>
					</div>
		    
					<div class="col-md-6">
						<div class="title-3 clearfix">
							<div class="left pull-left">
								<a href="news?type=2" class="tr">
									行业动态<span class="text-uppercase tr">News</span>
								</a>
							</div>
							<div class="right pull-right">
								<a href="news?type=2" class="tr">MORE +</a>
							</div>
						</div>
									
						<div class="pictrue-4">
						
							<c:forEach var="news" items="${newsList2}" end="0">
								<a href="news?id=${news.id}">
									<div class="imgbox">
										<span class="tr2" style="background:url(${news.photo}) 50% 50%; background-size:cover;"></span>	
									</div>
									<div class="textbox">
										<div class="biaoti">
											<h5 class="no-margin overflow tr">${news.title}</h5>
											<span class="text-right"><fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd"/></span>
										</div>
										<p>${news.intro}</p>
										<div class="more text-center tr">详情>></div>
									</div>
								</a>
							</c:forEach>	
												
						</div>
						
						<div class="text-4">
							<ul class="list-unstyled no-margin clearfix">
							
								<c:forEach var="news" items="${newsList1}" begin="1">
									<li class="overflow">
										<a href="news?id=${news.id}" class="tr">${news.title}</a>
										<span class="text-right"><fmt:formatDate value="${news.time}" pattern="yyyy-MM-dd"/></span>
									</li>
								</c:forEach>
								
							</ul>
						</div>
					</div>
		 
				</div>
			</div>
		</div>
		
		<div class="main-pad-1 main-Background-4">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="text-2 text-center">
							<h3>${textList[2]}</h3>
							<p class="no-margin">${textList[3]}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 精品案例 -->
		<div class="main-pad-1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="title-1 text-center">
							<a href="example">
								<small class="text-uppercase">Engineering case</small>
								<h5 class="no-margin"><span>精品案例</span></h5>
							</a>
						</div>
						<div class="pictrue-1-box">
							<div class="pictrue-1">
								<div class="owl-carousel pictrue-1-owl">
									
									<c:forEach var="example" items="${exampleList}">
		 
										<div class="item">
											<div class="pictrue-1-list">
												<a href="example?id=${example.id}">
													<div class="imgbox">
														<span class="tr2" style="background:url(${example.photo}) 50% 50%; background-size:cover;">
															<img src="images/icon/p1_mb.png">
														</span>
													</div>
													<h5 class="no-margin text-center tr overflow">${example.name}</h5>
												</a>
											</div>
										</div>
									
									</c:forEach>
		 
								</div>	
							</div>
						</div>
						<div class="more-1 text-center"><a href="example" class="tr">查看详情></a></div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	
	
	<!-- 留言 -->
	<footer>
		<div class="main-pad-1 main-Background-2">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="box clearfix">
							<div class="left pull-right">
								<div class="tops clearfix">
									<div class="ewm pull-left">
										<img src="${qrcode}" alt="">
										<h5 class="no-margin">微信扫一扫联系</h5>
									</div>
								</div>
								<div class="textbox">
									<div class="tel">${company.mobile}</div>
									<div class="no-margin" style="color:#FFFFFF; text-align:left">
										<p>固话：${company.phone}<br/>邮箱：${company.email}<br/>地址：${company.address}</p>
									</div>
								</div>
							</div>
							<div class="right pull-left">
	
								<form id="form" onsubmit="return false;">
									<div class="hang">
										<span class="text-right">姓名：</span>
										<input type="text" class="tr" required name="name" id="name">
									</div>
									<div class="hang">
										<span class="text-right">电话：</span>
										<input type="tel" class="tr" required name="phone" id="phone">
									</div>
									<div class="hang">
										<span class="text-right">邮箱：</span>
										<input type="email" class="tr" name="email" id="email">
									</div>
									<div class="hang">
										<span class="text-right">内容：</span>
										<textarea class="tr" name="content" id="content"></textarea>
									</div>
									<div class="hang">
										<button type="submit" class="tr" id="submit">提交留言</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</footer>

        	
	<jsp:include page="footer.jsp"/>
	
	<script>
		$(function(){
			// 图片轮播
			$('.pictrue-1-box').each(function(z){
				$('.pictrue-1-box').eq(z).find('.pictrue-1').eq(0).show();
			});
			// 留言处理
			$("#submit").on("click", function(){
				if($("#name").val()=="" || $("#phone").val()==""){
					alert("请正确填写姓名和电话");
					return false;
				}
				$.post("message", $("#form").serialize(), function(data){
					if(data=="ok"){
						alert("留言成功! 我们会尽快处理!")
					}else{
						alert("出错啦!! 要不直接打电话吧!")
					}
					$("#form")[0].reset();
				})
			});
		})
	</script>
 
</body>
</html>
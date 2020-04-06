<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<footer>
		<div class="footer_bar">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<p class="no-margin text-center">
							copyright © ${company.name}
							<a href="../admin.jsp" target="_blank" class="tr">【后台登录】</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- 以下为移动端使用 -->
	<div class="hot w100 hidden-sm hidden-md hidden-lg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-3 text-center no-padding">
					<a href="" class="no-decoration">
						<span class="glyphicon glyphicon-earphone"></span>
						<h6 class="no-margin">电话</h6>
					</a>
				</div>
				<div class="col-xs-3 text-center no-padding">
					<a href="" class="no-decoration">
						<span class="glyphicon glyphicon-phone"></span>
						<h6 class="no-margin">消息</h6>
					</a>
				</div>
				<div class="col-xs-3 text-center no-padding db-ewms"> 
					<a class="no-decoration">
						<span class="glyphicon glyphicon-qrcode"></span>
						<h6 class="no-margin">二维码</h6> 
					</a> 
				</div>
				<div class="col-xs-3 text-center no-padding">
					<a class="no-decoration">
						<span class="glyphicon glyphicon-share-alt"></span>
						<h6 class="no-margin">分享</h6>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="dbbox hidden-sm hidden-md hidden-lg">
         <div class="dbs ewm-box">
             <div class="neirong">
                 <img src="images/ewm.png" alt="">
             </div>
         </div>
         <div class="dbs fenxiang-box">
            <div class="neirong">
	            <div class="bdsharebuttonbox clearfix">
					<div class="pull-left li"><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></div>
					<div class="pull-left li"><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a></div>
					<div class="pull-left li"><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a></div>
					<div class="pull-left li"><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a></div>
					<div class="pull-left li"><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
				</div>
				<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            </div>
         </div>
     </div>
     
     
	<script src="js/jquery.min.js"></script>
   	<script src="bootstrap/js/bootstrap2.js"></script>
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script src="owlCarousel/js/jquery-1.9.1.min.js"></script>
	<script src="owlCarousel/js/owl.carousel.js"></script>
	<script src="owlCarousel/js/indexowl.js"></script>
	<script src="js/Suen_js_ku/Suen.js"></script>
	<!--[if IE 9]>
		<script src="js/html5shiv.min.js"></script>
    	<script src="js/respond.min.js"></script>
    	<script>window.location.href='http://www.goody.com.cn/2014/updatebrowser';</script>
	<![endif]-->
	<!--[if lt IE 9]>
		<script src="js/html5shiv.min.js"></script>
     	<script src="js/respond.min.js"></script>
     	<script>window.location.href='http://www.goody.com.cn/2014/updatebrowser';</script>
	<![endif]-->
</body>
</html>
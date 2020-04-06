// JavaScript Document

$(function(){
		function imgs (){
			var pmW = $(window).width();
			if ( pmW <= 991 ){
				$('body').removeClass('hover');
				$('header .menu').hide();
				$('.subnav ul').hide();
			}else{
				$('body').addClass('hover');
				$('header .menu').show();
				$('.subnav ul').show();
			}
		}
		imgs();	
		$(window).resize(function(){
			imgs();	
		})
		$('header .menu ul li').hover(function(){
			$(this).find('.ul').slideDown();
		},function(){
			$(this).find('.ul').stop().slideUp();
		})
		$('.pictrue-5 img').css({"max-width":"100%"});
		$('.text-5 img').css({"max-width":"100%"});
		$('.title-2').each(function(z){
			$('.title-2').eq(z).find('ul li').eq(0).addClass('active');
		})
		$('.title-2').each(function(z){
			$('.title-2').eq(z).find('ul li').each(function(i){
				$('.title-2').eq(z).find('ul li').eq(i).click(function(){
					$('.title-2').eq(z).find('ul li').removeClass('active');
					$(this).addClass('active');
					$('.pictrue-1-box').eq(z).find('.pictrue-1').hide();
					$('.pictrue-1-box').eq(z).find('.pictrue-1').eq(i).show();
				})
			})
		})
		for ( var x = 0; x<$("ul").length; x++){
			for( var y=0; y<$("ul").eq(x).find("li").length;y++){
				$("ul").eq(x).find("li").eq(y).addClass("li"+y);
			}
		}
		$(".ydd_btn").click(function(){
			if ( $('header .menu').is(':hidden') ){
				$(this).addClass("click");
				$("header .menu").slideDown();
			}else{
				$(this).removeClass("click");
				$("header .menu").stop().slideUp();
			}
		})
		$('.subnav .pcdnav li').click(function(){
			if( $(this).next('.xl').is(':hidden') ){
				$(this).next('.xl').slideDown();
			}else{
				$(this).next('.xl').stop().slideUp();
			}
		})
		$('.subnav ol h1 span').click(function(){
			if( $('.subnav ul').is(':hidden') ){
				$('.subnav ul').slideDown();
				$('.subnav ol h1').addClass('active');
			}else{
				$('.subnav ul').stop().slideUp();
				$('.subnav ol h1').removeClass('active');
			}
		})
		$(".hot .col-xs-3").eq(2).click(function(){
            if ( $(".dbbox .dbs.ewm-box").is(':hidden') ){
                $(".dbbox .dbs.ewm-box").slideDown();
                $(".dbbox .dbs.fenxiang-box").slideUp();
            }else{
                $(".dbbox .dbs.ewm-box").slideUp();
            }
        })
		$(".hot .col-xs-3").eq(3).find("a").click(function(){
            if ( $(".dbbox .dbs.fenxiang-box").is(':hidden') ){
                $(".dbbox .dbs.fenxiang-box").slideDown();
                $(".dbbox .dbs.ewm-box").slideUp();
            }else{
                $(".dbbox .dbs.fenxiang-box").slideUp();
            }
       }) 
})
						
// JavaScript Document

$(document).ready(function() {
	$(".pictrue-1-owl").owlCarousel({
		items : 4,/*默认显示数量*/
		itemsDesktop : [1199, 4],/*响应式布局*/
		itemsDesktopSmall : [991, 2],
		itemsTablet : [768, 2],
		itemsMobile : [479, 2],
		autoPlay : 3000,
		stopOnHover : true,/*鼠标经过悬停*/
		lazyLoad : true,/*响应式开关*/
		navigation : true,/*箭头开关*/
		pagination : false,/*按钮开关*/
		navigationText : ["", ""],/*左右箭头文字*/
	})
})

$(document).ready(function() {
	$(".pictrue-3-owl").owlCarousel({
		items : 3,/*默认显示数量*/
		itemsDesktop : [1199, 3],/*响应式布局*/
		itemsDesktopSmall : [991, 3],
		itemsTablet : [768, 2],
		itemsMobile : [479, 2],
		autoPlay : 3000,
		stopOnHover : true,/*鼠标经过悬停*/
		lazyLoad : true,/*响应式开关*/
		navigation : true,/*箭头开关*/
		pagination : false,/*按钮开关*/
		navigationText : ["", ""],/*左右箭头文字*/
	})
})
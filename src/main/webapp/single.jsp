<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="_header.jsp" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
	
</head>

<body>
	<div class="banner-top container-fluid" id="home">
		
<!-- //header -->



<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li><a href="product_index">首页</a> <i>|</i></li>
						<li>商品详情</li>
					</ul>
				</div>
			</div>

		</div>

	</div>
	<!--//banner -->
	<!--/shop-->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop pt-lg-4 pt-3">
				<div class="row">
					<div class="col-lg-4 single-right-left ">
						<div class="grid images_3_of_2">
							<div class="flexslider1">
								<ul class="slides">
								<c:forEach items="${single.piclist}" var="p" varStatus="v">
									<li data-thumb="${p}">
										<div class="thumb-image">
											<img src="${p}" data-imagezoom="true"
												class="img-fluid" alt=" ">
										</div>
									</li>
								</c:forEach>
								</ul>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-8 single-right-left simpleCart_shelfItem">
						<h2>${single.fullname}</h2>
						<h6>${single.tip}</h6>
						<p>
							<span class="item_price" style="color: red;">${single.nowprice}</span>
							<del>${single.price}</del>
						</p>
						<div class="rating1">
							活动 :<a style="color: navy;">${single.activity}</a>
						</div>
						<div class="description">
							
							<!-- <form action="#" method="post">
								<input class="form-control" type="text" name="Email"
									placeholder="请输入收货地址..." required=""> <input
									type="submit" value="确定">
							</form> -->
						</div>
						<div class="color-quality">
							<div class="color-quality-right">
								<input class="pid" type="hidden" name="id" value="${single.id}">
								<h5>数量 :<input style="display: inline;" class="pcount" name="count" type="number" value="1"></h5>
							</div>
						</div>
						<div class="occasional">
							<h5>套餐 :</h5>
							<div class="colr ert">
								<label class="radio"><input type="radio" name="radio"
									checked=""><i></i> 套餐一</label>
							</div>
							<div class="colr">
								<label class="radio"><input type="radio" name="radio"><i></i>
									套餐二</label>
							</div>
							<div class="colr">
								<label class="radio"><input type="radio" name="radio"><i></i>
									套餐三</label>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="occasion-cart">
							<div class="googles single-item singlepage">
							<button onclick="incar();" type="button" style="background-color: #DF3033;color: white;" class="googles-cart">加入购物车</button>
							<button onclick="collect();" type="button" style="background-color: #DF3033;color: white;" class="googles-cart">收藏商品</button>
							</div>
						</div>
						<ul class="footer-social text-left mt-lg-4 mt-3">
							<li>分享到 :</li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-facebook-f"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-twitter"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-google-plus-g"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-linkedin-in"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fas fa-rss"></span>
							</a></li>

						</ul>

					</div>
					<div class="clearfix"></div>
					<!--/tabs-->
					<div class="responsive_tabs">
					
					
						<div id="horizontalTab">
							<ul class="resp-tabs-list">
								<li>商品详情</li>
								<!-- <li>商品规格</li>
								<li>全部评价</li> -->
							</ul>
							<div class="resp-tabs-container">
								<!--/tab_one-->
								<div class="tab1">

									<div class="single_page" style="position: relative;">
										${single.info}
									</div>
								</div>
								<!-- <!--//tab_one-->
								<div class="tab2">

									<div class="single_page">
										<div class="bootstrap-tab-text-grids">
											<div class="bootstrap-tab-text-grid">


												<div class="bootstrap-tab-text-grid-left">


													<img src="images/team1.jpg" alt=" " class="img-fluid">


												</div>


												<div class="bootstrap-tab-text-grid-right">


													<ul>


														<li><a href="#">Admin</a></li>


														<li><a href="#"><i class="fa fa-reply-all"
																aria-hidden="true"></i> Reply</a></li>


													</ul>


													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elPellentesque vehicula augue eget.Ut enim ad minima
														veniam, quis nostrum exercitationem ullam corporis
														suscipit laboriosam, nisi ut aliquid ex ea commodi
														consequatur? Quis autem vel eum iure reprehenderit.</p>


												</div>


												<div class="clearfix"></div>
											</div>
											<div class="add-review">


												<h4>add a review</h4>


												<form action="#" method="post">


													<input class="form-control" type="text" name="Name"
														placeholder="Enter your email..." required=""> <input
														class="form-control" type="email" name="Email"
														placeholder="Enter your email..." required="">


													<textarea name="Message" required=""></textarea>


													<input type="submit" value="SEND">


												</form>
											</div>
										</div>

									</div>
								</div>
								<div class="tab3">

									<div class="single_page">
										<h6>Irayz Butterfly Sunglasses (Black)</h6>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elPellentesque vehicula augue eget nisl ullamcorper, molestie
											blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur
											adipisicing elit, sed do eiusmod tempor incididunt ut lab ore

											et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco. labore et dolore magna aliqua.</p>
										<p class="para">Lorem ipsum dolor sit amet, consectetur
											adipisicing elPellentesque vehicula augue eget nisl
											ullamcorper, molestie blandit ipsum auctor. Mauris volutpat
											augue dolor.Consectetur adipisicing elit, sed do eiusmod
											tempor incididunt ut lab ore et dolore magna aliqua. Ut enim
											ad minim veniam, quis nostrud exercitation ullamco. labore et
											dolore magna aliqua.</p>
									</div>
								</div> -->
							</div>
						</div>
					</div>
<!--//tabs-->

				</div>
			</div>
		</div>
		<div class="container-fluid">
			<!--/slide-->
			<div class="slider-img mid-sec mt-lg-5 mt-2 px-lg-5 px-3">
				<!--//banner-sec-->
				<h3 class="tittle-w3layouts text-left my-lg-4 my-3">猜你喜欢</h3>
				<div class="mid-slider">
					<div class="owl-carousel owl-theme row">
					
						<c:forEach items="${productlist}" var="r">
							<div class="item">
								<div class="gd-box-info text-center">
									<div class="product-men women_two bot-gd">
										<div class="product-googles-info slide-img googles">
											<div class="men-pro-item">
												<div class="men-thumb-item">
									<img src="${r.pic}" class="img-fluid" alt="${r.fullname}">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="product_single?id=${r.id}" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
								</div>
								
								<div class="item-info-product">
									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="product_single?id=${r.id}">${r.fullname}</a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">$${r.nowprice}</span>
												</div>
											</div>
										</div>
										<div class="googles single-item hvr-outline-out">
												<button onclick="incar(${r.id});" type="button" class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						
					</div>
				</div>
			</div>
			<!--//slider-->
		</div>
	</section>

<%@include file="_footer.jsp" %>

	

	<!-- carousel -->
	<!-- price range (top products) -->
	<script src="js/jquery-ui.js"></script>
	<script>
			//<![CDATA[ 
			$(window).load(function () {
				$("#slider-range").slider({
					range: true,
					min: 0,
					max: 9000,
					values: [50, 6000],
					slide: function (event, ui) {
						$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
					}
				});
				$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
			}); //]]>
		</script>
	<!-- //price range (top products) -->

	<script src="js/owl.carousel.js"></script>
	
<!-- 猜你喜欢 -->
	<script>
			$(document).ready(function () {
				$('.owl-carousel').owlCarousel({
					loop: true,
					margin: 10,
					responsiveClass: true,
					responsive: {
						0: {
							items: 1,
							nav: true
						},
						600: {
							items: 2,
							nav: false
						},
						900: {
							items: 3,
							nav: false
						},
						1000: {
							items: 4,
							nav: true,
							loop: false,
							margin: 20
						}
					}
				})
			})
		</script>

	<!-- //end-smooth-scrolling -->

	<!-- single -->
	<script src="js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	
<!-- 商品详情/规格/评价 -->
	<script>
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
					closed: 'accordion', // Start closed if in accordion view
					activate: function (event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#tabInfo');
						var $name = $('span', $info);
						$name.text($tab.text());
						$info.show();
					}
				});
				$('#verticalTab').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true
				});
			});
		</script>
<!--图片滑块 -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
			// Can also be used with $(document).ready()
			$(window).load(function () {
				$('.flexslider1').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				});
			});
		</script>
<!-- //图片滑块-->


<!-- 加入购物车 -->
<script type="text/javascript">
function incar() {
	var product_id=$(".pid").val();
	var count=$(".pcount").val();
	$.ajax({
		url:"incar",
		data:{product_id:product_id,count:count},
		dataType:'json',
		type:'post',
		success:function(res){
			if(res.c==0){
				layer.msg(res.msString,{
	    			time:1000
	    		});
			}else
				if(res.c==1){
					layer.msg(res.msString,{
		    			time:1000
		    		});
				}
		}
	});
}
/* 收藏商品 */
function collect() {
	var product_id=$(".pid").val();
	$.ajax({
		url:"product_collect",
		data:{product_id:product_id},
		dataType:'json',
		type:'post',
		success:function(res){
			if(res.c==0){
				layer.msg(res.msString,{
	    			time:1000
	    		});
			}else
				if(res.c==1){
					layer.msg(res.msString,{
		    			time:1000
		    		});
				}
		}
	});
	
}

</script>

</body>

</html>
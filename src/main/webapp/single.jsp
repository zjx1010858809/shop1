<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Single</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="" />
<!-- <script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script> -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
<link href="css/style6.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/shop.css" type="text/css" />
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css"
	media="all">
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/fontawesome-all.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	
	<script type="text/javascript">
	    function myshopcar(id) {
	    	if(id==null){
	    		alert("请先登录");
	    	}else{
	    		location.href='myshopcar?id='+id;
	    	}
		}
	    </script>
</head>

<body>
	<div class="banner-top container-fluid" id="home">
		<header>
			<div class="row">
				<div class="col-md-3 top-info text-left mt-lg-4">
					<h6>Need Help</h6>
					<ul>
						<li>
							<i class="fas fa-phone"></i> Call</li>
						<li class="number-phone mt-3">12345678099</li>
					</ul>
				</div>
				<div class="col-md-6 logo-w3layouts text-center">
				
				<a>${sessionScope.user.email}</a>
				
					<h1 class="logo-w3layouts">
						<a class="navbar-brand" href="product_index">
							JiaXiangShop </a>
					</h1>
				</div>

				<div class="col-md-3 top-info-cart text-right mt-lg-4">
					<ul class="cart-inner-info">
<!-- 登录按钮 -->
						<li class="button-log">
							<a class="btn-open" href="#">
								<span class="fa fa-user" aria-hidden="true"></span>
							</a>
						</li>
<!-- 购物车 -->
						<li class="galssescart galssescart2 cart cart box_1">
								<button class="top_googles_cart" onclick="myshopcar(${sessionScope.user.id});" type="button">
									我的购物车
									<i class="fas fa-cart-arrow-down"></i>
								</button>
						</li>
					</ul>
					
					
<!--登录窗口-->
					<div class="overlay-login text-left">
						<button type="button" class="overlay-close1">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h5 class="text-center mb-4">登录</h5>
							<div class="login p-5 bg-dark mx-auto mw-100">
								<form id="user_login">
									<div class="form-group">
										<label class="mb-2">账号</label>
										<input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
										<small id="emailHelp" class="form-text text-muted">我们永远不会泄露您的个人信息</small>
									</div>
									<div class="form-group">
										<label class="mb-2">密码</label>
										<input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">
									</div>
									
									<button type="button" onclick="login();" class="btn btn-primary submit mb-4">登录</button>
									<button type="button" class="btn btn-primary submit mb-4">注册</button>
									<a href="#" id="emailHelp" class="form-text text-muted">忘记密码？</a>

								</form>
							</div>
							<!---->
						</div>
					</div>
<!---->
				</div>
			</div>
			
<!-- 搜索 -->
			<div class="search">
				<div class="mobile-nav-button">
					<button id="trigger-overlay" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
				<!-- open/close -->
				<div class="overlay overlay-door">
					<button type="button" class="overlay-close">
						<i class="fa fa-times" aria-hidden="true"></i>
					</button>
					<form action="#" method="post" class="d-flex">
						<input class="form-control" type="search" placeholder="Search here..." required="">
						<button type="submit" class="btn btn-primary submit">
							<i class="fas fa-search"></i>
						</button>
					</form>
				<!-- open/close -->
			</div>
			
<!-- 导航栏 -->
			<label class="top-log mx-auto"></label>
			<nav class="navbar navbar-expand-lg navbar-light bg-light top-header mb-2">

				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						
					</span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav nav-mega mx-auto">
						<li class="nav-item active">
							<a class="nav-link ml-lg-0" href="product_index">首页</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
							    aria-expanded="false">
								分类
							</a>
							<ul class="dropdown-menu mega-menu ">
								<li>
									<div class="row">
									
									
									<c:forEach items="${typelist}" var="t">
										<div class="col-md-4 media-list span4 text-left">
										<c:if test="${t.parentid==0}">
											<h5 class="tittle-w3layouts-sub">${t.name}</h5>
											<ul>
											</c:if>
											
											
											
											<c:forEach items="${typelist}" var="tt">
											<c:if test="${tt.parentid==t.id}">
												<li class="media-mini mt-3">
													<a href="shop.jsp">${tt.name}</a>
												</li>
											</c:if>
											</c:forEach>
												
												
											<c:if test="${t.parentid==0}">
											</ul>
											</c:if>
											
											
										</div>
										</c:forEach>
										
										
									</div>
									<hr>
								</li>
							</ul>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="contact.jsp">Contact</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.jsp">个人中心</a>
						</li>
					</ul>
				</div>
			</nav>
		</header>
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
								<h5>数量 :</h5>
								<input class="pid" type="hidden" name="id" value="${single.id}">
								<input class="pcount" name="count" type="number" value="1">
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
								<li>商品规格</li>
								<li>全部评价</li>
							</ul>
							<div class="resp-tabs-container">
								<!--/tab_one-->
								<div class="tab1">

									<div class="single_page" style="position: relative;">
										${single.info}
									</div>
								</div>
								<!--//tab_one-->
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
								</div>
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
						<div class="item">
							<div class="gd-box-info text-center">
								<div class="product-men women_two bot-gd">
									<div class="product-googles-info slide-img googles">
										<div class="men-pro-item">
											<div class="men-thumb-item">
												<img src="images/s5.jpg" class="img-fluid" alt="">
												<div class="men-cart-pro">


													<div class="inner-men-cart-pro">


														<a href="single.html" class="link-product-add-cart">Quick
															View</a>


													</div>
												</div>
												<span class="product-new-top">New</span>
											</div>
											<div class="item-info-product">

												<div class="info-product-price">


													<div class="grid_meta">


														<div class="product_price">


															<h4>


																<a href="single.html">Fastrack Aviator </a>


															</h4>


															<div class="grid-price mt-2">


																<span class="money ">$325.00</span>


															</div>


														</div>


														<ul class="stars">


															<li><a href="#"> <i class="fa fa-star"
																	aria-hidden="true"></i>


															</a></li>


															<li><a href="#"> <i class="fa fa-star"
																	aria-hidden="true"></i>


															</a></li>


															<li><a href="#"> <i class="fa fa-star"
																	aria-hidden="true"></i>


															</a></li>


															<li><a href="#"> <i class="fa fa-star-half-o"
																	aria-hidden="true"></i>


															</a></li>


															<li><a href="#"> <i class="fa fa-star-o"
																	aria-hidden="true"></i>


															</a></li>


														</ul>


													</div>


													<div class="googles single-item hvr-outline-out">


														<form action="#" method="post">


															<input type="hidden" name="cmd" value="_cart"> <input
																type="hidden" name="add" value="1"> <input
																type="hidden" name="googles_item"
																value="Fastrack Aviator"> <input type="hidden"
																name="amount" value="325.00">


															<button type="submit" class="googles-cart pgoogles-cart">


																<i class="fas fa-cart-plus"></i>


															</button>


														</form>



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
			</div>
			<!--//slider-->
		</div>
	</section>
<!--footer -->
	<footer class="py-lg-5 py-3">
		<div class="container-fluid px-lg-5 px-3">
			<div class="row footer-top-w3layouts">
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>About Us</h3>
					</div>
					<div class="footer-text">
						<p>Curabitur non nulla sit amet nislinit tempus convallis quis
							ac lectus. lac inia eget consectetur sed, convallis at tellus.
							Nulla porttitor accumsana tincidunt.</p>
						<ul class="footer-social text-left mt-lg-4 mt-3">

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
							<li class="mx-2"><a href="#"> <span class="fas fa-rss"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fab fa-vk"></span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Get in touch</h3>
					</div>
					<div class="contact-info">
						<h4>Location :</h4>
						<p>0926k 4th block building, king Avenue, New York City.</p>
						<div class="phone">
							<h4>Contact :</h4>
							<p>Phone : +121 098 8907 9987</p>
							<p>
								Email : <a href="mailto:info@example.com">info@example.com</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Quick Links</h3>
					</div>
					<ul class="links">
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="404.html">Error</a></li>
						<li><a href="shop.html">Shop</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Sign up for your offers</h3>
					</div>
					<div class="footer-text">
						<p>By subscribing to our mailing list you will always get
							latest news and updates from us.</p>
						<form action="#" method="post">
							<input class="form-control" type="email" name="Email"
								placeholder="Enter your email..." required="">
							<button class="btn1">
								<i class="far fa-envelope" aria-hidden="true"></i>
							</button>
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright-w3layouts mt-4">
				<p class="copy-right text-center ">
					Copyright &copy; 2018.Company name All rights reserved.<a
						target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->

	<!--jQuery-->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- newsletter modal -->
	<!--search jQuery-->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
			googles.render();

			googles.cart.on('googles_checkout', function (evt) {
				var items, len, i;

				if (this.subtotal() > 0) {
					items = this.items();

					for (i = 0, len = items.length; i < len; i++) {}
				}
			});
		</script>
	<!-- //cart-js -->
<!-- 登录 -->	
<script>
		$(document).ready(function () {
			$(".button-log a").click(function () {
				$(".overlay-login").fadeToggle(200);
				$(this).toggleClass('btn-open').toggleClass('btn-close');
			});
		});
		$('.overlay-close1').on('click', function () {
			$(".overlay-login").fadeToggle(200);
			$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
			open = false;
		});
		function login() {
			$.ajax({
				url:"user_login",
				data:$("#user_login").serialize(),
				type:"post",
				success:function(json){
					if(json.c==0){
						alert(json.msString);
					}else
						if(json.c==1){
							location.href="product_index";
						};
				}
			});
		}
	</script>
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

<!-- 下拉菜单 -->
	<script>
			$(document).ready(function () {
				$(".dropdown").hover(
					function () {
						$('.dropdown-menu', this).stop(true, true).slideDown("fast");
						$(this).toggleClass('open');
					},
					function () {
						$('.dropdown-menu', this).stop(true, true).slideUp("fast");
						$(this).toggleClass('open');
					}
				);
			});
		</script>
<!-- //下拉菜单 -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
	<script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
	<!--// end-smoth-scrolling -->
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
				alert(res.msString);
			}else
				if(res.c==1){
					alert(res.msString);
				}
		}
	});
}
</script>

	<script src="js/bootstrap.js"></script>
	<!-- js file -->
</body>

</html>
<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="" />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/shop.css" type="text/css" />
<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
<link href="css/style6.css" rel='stylesheet' type='text/css' />
<link href="http://fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
<link href="css/fontawesome-all.css" rel="stylesheet">


<script type="text/javascript">
	    function myshopcar(id) {
	    	if(id==null){
	    		alert("请先登录");
	    	}else{
	    		location.href='myshopcar?id='+id;
	    	}
		}
	    
	    function personal(id) {
	    	if(id==null){
	    		alert("请先登录");
	    	}else{
	    		location.href='personal';
	    	}
		}
	    </script>
<!--返回时停留在之前浏览位置，有了这个可以清楚位置-->
	<!-- <script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script> -->
</head>
<body>
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
					<div class="overlay-login l text-left">
						<button type="button" class="overlay-close1 lc">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h5 class="text-center mb-4">登录</h5>
							<div class="login p-5 bg-dark mx-auto mw-100">
								<form id="user_login">
									<div class="form-group">
										<label class="mb-2">账号</label>
										<input name="tel" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
										<small id="emailHelp" class="form-text text-muted">我们永远不会泄露您的个人信息</small>
									</div>
									<div class="form-group">
										<label class="mb-2">密码</label>
										<input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">
									</div>
									
									<button type="button" onclick="login();" class="btn btn-primary submit mb-4">登录</button>
									<button type="button" class="btn btn-primary submit mb-4 doregister">注册</button>
									<a href="#" id="emailHelp" class="form-text text-muted">忘记密码？</a>

								</form>
							</div>
							<!---->
						</div>
					</div>
					
					<div class="overlay-login r text-left">
						<button type="button" class="overlay-close1 rc">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
						<div class="wrap">
							<h5 class="text-center mb-4">注册</h5>
							<div class="login p-5 bg-dark mx-auto mw-100">
								<form id="user_register">
									<div class="form-group">
										<label class="mb-2">手机号</label>
										<input name="tel" type="text" class="form-control" id="rtel" aria-describedby="emailHelp" placeholder="" required="">
										<small id="emailHelp" class="form-text text-muted">我们永远不会泄露您的个人信息</small>
									</div>
									<div class="form-group">
										<label class="mb-2">邮箱</label>
										<input name="email" type="text" class="form-control" id="remail" aria-describedby="emailHelp" placeholder="" required="">
									</div>
									<div class="form-group">
										<label class="mb-2">密码</label>
										<input name="password1" type="password" class="form-control" id="rpassword1" placeholder="" required="">
									</div>
									<div class="form-group">
										<label class="mb-2">确认密码</label>
										<input name="password2" type="password" class="form-control" id="rpassword2" placeholder="" required="">
									</div>
									
									<button onclick="register();" type="button" class="btn btn-primary submit mb-4">注册</button>

								</form>
							</div>
							<!---->
						</div>
					</div>
<!---->
				</div>
			</div>
			
<!-- 搜索 -->
			<div style="width: 200px;float: right;">
				<form action="product_index" method="post" class="d-flex">
						<input class="form-control" name="txt" type="text" placeholder="商品名...">
						<button type="submit" class="btn btn-primary submit ">
							<i class="fas fa-search"></i>
						</button>
					</form>
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
							<a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
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
													<a href="product_type?id=${tt.id}">${tt.name}</a>
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
						
						<!-- <li class="nav-item">
							<a class="nav-link" href="contact.jsp">Contact</a>
						</li> -->
						<li class="nav-item">
							<a class="nav-link" onclick="personal(${sessionScope.user.id});" >个人中心</a>
						</li>
					</ul>
				</div>
			</nav>
		</header>
</body>
</html>
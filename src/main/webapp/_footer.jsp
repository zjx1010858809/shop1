<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
</head>
<body>

<!--footer -->
	<footer class="py-lg-5 py-3" style="margin-top: 30px;">
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
						<li><a href="index.html">About</a></li>
						<li><a href="index.html">Error</a></li>
						<li><a href="index.html">Shop</a></li>
						<li><a href="index.html">Contact Us</a></li>
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
					Copyright &copy; 2018.Company JiaXiangShop.
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script src="js/bootstrap.js"></script>
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
    
<!-- 登录 -->	
	<script>
		$(document).ready(function () {
			$(".button-log a").click(function () {
				$(".l").fadeToggle(200);
			});
		});
		$('.doregister').on('click',function(){
			$(".r").fadeToggle(200);
		});
		
		$('.lc').on('click', function () {
			$(".l").fadeToggle(200);
			open = false;
		});
		$('.rc').on('click', function () {
			$(".r").fadeToggle(200);
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
		function register(){
			var tel=$("#rtel").val();
			var email=$("#remail").val();
			var p1=$("#rpassword1").val();
			var p2=$("#rpassword2").val();
			if(tel==""){
				alert("手机号不能为空");
			}else
				if(email==null||email==""){
					alert("邮箱不能为空");
				}else
					if(p1==null||p1==""){
						alert("密码不能为空");
					}else
					if(p1==p2){
					$.ajax({
						url:"user_register",
						data:{tel:tel,email:email,password:p1},
						type:"post",
						success:function(json){
							if(json.c==1){
								alert(json.msString);
								location.href="product_index";
							}else{
								alert(json.msString);
							}
						}
					});
				}else{
					alert("两次密码不一致！");
				}
			}
	</script>
</body>
</html>
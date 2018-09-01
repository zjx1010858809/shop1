<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="_header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Checkout</title>

	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="css/shoppay.css">
	<link rel="stylesheet" type="text/css" href="css/pay.css">
	
</head>

<body>
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		
<!-- //header -->
		<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li>
							<a href="product_index">首页</a>
							<i>|</i>
						</li>
						<li>支付</li>
					</ul>
				</div>
			</div>

		</div>
		<!--//banner -->
	</div>
	<!--内容-->
<div id="contentCon">
	<div>
    	<span>
        	<h2>选择付款方式</h2>
            <p>订单号：<a id="currentcode">${sessionScope.code}</a></p>
        </span>
        <button onclick="payfor();" type="button" style="background-color: aqua;">支付</button>
        <ol>
        	<p>应付：</p>
            <span>¥${sessionScope.nowamount}</span>
        </ol>
    </div>
    <ul>
    	<li class="box01">
        	<input type="radio" name="payfuncation">
            <i><img src="images/zhifubao.png"></i>
        </li>
        <li class="box02">
        	<div></div>
            <span>
            	<p>扫描使用手机端支付宝</p>
                <p class="text02">完成支付</p>
            </span>
        </li>
    </ul>
    <ul>
    	<li class="box01">
        	<input type="radio" name="payfuncation">
            <i class="pic02"><img src="images/weixin.png"></i>
        </li>
        <li class="box02">
        	<div><img src="images/erweima_06.png"></div>
            <span>
            	<p>请使用微信扫描二维码</p>
                <p class="text02">完成支付</p>
            </span>
        </li>
    </ul>

    <ol style="margin-bottom: 60px;">
    	<li>
        	<input type="radio">
            <i><img src="images/yinglian.png"></i>
        </li>
    	<li class="box03">
        	<a href="#"><img src="images/logo_03.jpg"></a>
            <a href="#" id="logo01"><img src="images/logo_05.jpg"></a>
            <a href="#"><img src="images/logo_07.jpg"></a>
        </li>
        <li>
        	<a href="#"><img src="images/logo_12.jpg"></a>
            <a href="#" id="logo02"><img src="images/logo_14.jpg"></a>
            <a href="#"><img src="images/logo_17.jpg"></a>
        </li>
    </ol>

</div>
<%@include file="_footer.jsp" %>

	<script src="js/easy-responsive-tabs.js"></script>
	<script>
//支付
   function payfor(){
	var code=$("#currentcode").text();
	$.ajax({
		url:"user_pay",
		type:"post",
		data:{code:code},
		success:function(res){
			if(res.c==1){
				alert(res.msString);
				location.href="myshopcar?id=${sessionScope.user.id}";
			}else
				if(res.c==0){
					alert(res.msString);
				}
		}
	});
}
	
    </script>

</body>

</html>
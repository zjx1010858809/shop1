<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="_header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="css/shoppay.css">
	<link rel="stylesheet" type="text/css" href="css/pay.css">
	<link href="css/order.css" rel='stylesheet' type='text/css' />
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
<div class="right" style="width: 1200px;">
	<h2>选择地址</h2>
	<input class="btn btn-primary radius" onclick="add();" type="button" style="float: right;margin-top: -30px;" value="新增">
<c:forEach items="${sessionScope.myaddress}" var="r">
        <hr>
        <div>
        <ul class="rem2" addr_id="${r.id}" style="width: 1200px;size: 40px;">
        	<li style="margin-left: 50px;width: 80px;">${r.name}</li>
            <li style="margin-left: 30px;width: 100px;">${r.tel}</li>
            <li style="margin-left: 80px;width: 120px;">
                <p>${r.zone}</p>
            </li>
            <li style="margin-left: 70px;width: 120px;">
                <p>${r.addr}</p>
            </li>
            <li style="margin-left: 60px;width: 60px;">
               	<input class="chk" type="radio" name="addr">
            </li>
        </ul>
        </div>
        <hr>
        </c:forEach>
</div>
<hr>


	<div>
    	<span>
        	<h2>选择付款方式</h2>
            <p>订单号：<a id="currentcode">${sessionScope.code}</a></p>
        </span>
        
        <ol>
        	<p>应付：</p>
            <span style="margin-top: 8px;">¥${sessionScope.nowamount}</span>
            <button onclick="payfor();" style="margin-top: 60px;" class="layui-btn layui-btn-danger">支付</button>
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
		  var id;
		$(".chk").each(function(){
			 if($(this).prop("checked")){
				 var parent=$(this).parents(".rem2");
				 id=parseInt(parent.attr("addr_id"));
			 }
		});
	   if(id==null){
		   layer.msg('请选择地址',{
			   time:1000
		   });
	   }else{
	
	var code=$("#currentcode").text();
	$.ajax({
		url:"user_pay",
		type:"post",
		data:{code:code,id:id},
		success:function(res){
			if(res.c==1){
				layer.msg('支付成功!',{
					time:1000
				});
				setTimeout(function(){
					location.href="myshopcar?id=${sessionScope.user.id}";
				}, 1000);
			}else
				if(res.c==0){
					layer.msg('支付失败请重新支付!',{
						time:1000
					});
				}
			}
		});
	}
}
//新增地址
 function add() {
 		var layer=layui.layer;
 		layer.open({
 			type:2,
 			content:'addaddr.jsp',
 			area:['600px','320px']
 		});
 	}
    </script>

</body>

</html>
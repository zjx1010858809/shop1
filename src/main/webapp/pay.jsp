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
            <p>订单号：123456789</p>
        </span>
        <ol>
        	<p>应付：</p>
            <span>¥128.00</span>
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
<!--数据处理-->
	<script>
	function changercount(id,count){
		$.post("changercount",{id:id,count:count},function(res){
				if(res.c==2){
					alert(res.msString);
				}else
					if(res.c==3){
						alert(res.msString);
					};
		},"json");
	};
	function alljs(){
		   var all=0;
		   var ccc=0;
		   $(".chk").each(function(){
			   if($(this).prop("checked")){
				ccc++;
			   var parent=$(this).parents(".rem1");
			   var amount=parent.find(".l7").text();
			   amount=parseFloat(amount.substring(1));
			   all+=amount;
			   }
		   });
		   $(".s4").text(ccc);
		   $(".s7").text("￥"+all.toFixed(1));
	   };
	
//合计点击事件
	$(".chk").on("click",function(){
		alljs();
	});
//全选点击事件
	$(".selectall").on("click",function(){
		if(event.target.checked)
		$(".chk").prop("checked","checked");
		else
			$(".chk").prop("checked","");
		alljs();
	});
//数量点击事件
		$('.value-plus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) + 1;
			divUpd.text(newVal);
			
			var parent=$(event.target).parents(".rem1");
			var id=parent.attr("myid");
			var price=parent.find(".l5").text();
			price=parseFloat(price.substring(1));
			parent.find(".l7").text("￥"+(newVal*price).toFixed(1));				
			changercount(id,newVal);
			alljs();
			
		});

		$('.value-minus').on('click', function () {
			var divUpd = $(this).parent().find('.value'),
				newVal = parseInt(divUpd.text(), 10) - 1;
			if (newVal >= 1) divUpd.text(newVal);
			
			var parent=$(event.target).parents(".rem1");
			var id=parent.attr("myid");
			var price=parent.find(".l5").text();
			price=parseFloat(price.substring(1));
			parent.find(".l7").text("￥"+((divUpd.text())*price).toFixed(1));
			changercount(id,divUpd.text());
			alljs();
		});
//移除点击事件
		$('.close1').on('click', function () {
			var o=$(event.target);
			var id=o.prev().val();
			if(confirm("确认要删除吗?")){
				$.ajax({
					url:"outcar",
					type:"post",
					data:{id:id},
					success:function(res){
						if(res.c==1){
							o.parents(".rem1").fadeOut('slow', function () {
							o.parents(".rem1").remove();
							alljs();
							});
						}else
							if(res.c==2){
								alert(res.msString);
							}else
								if(res.c==3){
									alert(res.msString);
								}
					}
				});
			}
		});

//结算点击事件
   function mysubmit(){
	   var data=[];
	   $(".chk").each(function(){
		   if($(this).prop("checked")){
			var parent=$(this).parents(".rem1");
			var id=parseInt(parent.attr("myid"));
			var product_id=parseInt(parent.attr("proid"));
			var count=parseFloat(parent.find(".value").text());
			var row={id:id,count:count,product_id:product_id};
			data.push(row);
		   };
		});
if(data!=""){
	$.ajax({
        type: "POST",
        url: "user_pay",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(data),
        dataType: "json",
        success: function (res) {
        	if(res.c==1){
				alert(res.msString);
				$(".chk").each(function(){
					   if($(this).prop("checked")){
						   $(this).parents(".rem1").fadeOut('slow', function () {
							   $(this).parents(".rem1").remove();
								});
						   }
					   });
			}else if(res.c==2){
					alert(res.msString);
				}else
					if(res.c==0){
						alert(res.msString);
						}
        	}
        });
	}else{
		alert("请选择要购买的商品");
	}
}

    </script>

</body>

</html>
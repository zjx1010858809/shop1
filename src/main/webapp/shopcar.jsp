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
						<li>我的购物车</li>
					</ul>
				</div>
			</div>

		</div>
		<!--//banner -->
	</div>
	<!--// header_top -->
	<!--checkout-->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop px-lg-4 px-3">
				<h3 class="tittle-w3layouts my-lg-4 mt-3">我的购物车</h3>
				<div class="checkout-right">
					<h4>购物车有里:
						<span>${myshopcar.size()}件商品</span>
					</h4>
					<table class="timetable_sub">
						<thead>
							<tr>
								<th><input class="selectall" type="checkbox"></th>
								<th>商品</th>
								<th>单价</th>
								<th>数量</th>
								<th>商品名称</th>
								<th>总价</th>
								<th>移除</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${requestScope.myshopcar}" var="r" varStatus="v">
							<tr class="rem1" myid="${r.id}" proid="${r.product_id}">
								<td class="invert"><input class="chk" type="checkbox"></td>
								<td class="invert-image">
									<a href="product_single">
										<img src="${r.pic}" style="width:80px;height: 100px;" class="img-responsive">
									</a>
								</td>
								<td class="invert l5">￥${r.nowprice}</td>
								
								<td class="invert">
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value-minus ">&nbsp;</div>
											<div class="entry value">
												<span>${r.count}</span>
											</div>
											<div class="entry value-plus active">&nbsp;</div>
										</div>
									</div>
								</td>
								<td class="invert">${r.fullname}</td>

								<td class="invert l7">￥${r.nowprice*r.count}</td>
								<td class="invert">
									<div class="rem">
									<input type="hidden" name="id" value="${r.id}">
										<div class="close1"> </div>
									</div>

								</td>
							</tr>
							</c:forEach>
							
							
						</tbody>
					</table>
				</div>
				
				
				<div class="all2">
				<input type="checkbox" class="selectall" name="" id="" value="" /><span class="s1">全选</span><span class="s3">已选中商品</span>
				<span class="s4">0</span><span class="s5">件</span><span class="s6">总价(元)：</span><span class="s7">￥0</span><button onclick="mysubmit();" class="s8">结算</button>
				</div>
			</div>

		</div>
	</section>
	<!--//checkout-->
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
        url: "user_true",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(data),
        dataType: "json",
        success: function (res) {
        	if(res.c==1){
				location.href="pay.jsp";
				/* $(".chk").each(function(){
					   if($(this).prop("checked")){
						   $(this).parents(".rem1").fadeOut('slow', function () {
							   $(this).parents(".rem1").remove();
								});
						   }
					   }); */
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
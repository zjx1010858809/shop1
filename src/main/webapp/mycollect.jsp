<%@ page language="java" isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="shortcut icon" href="images/001.jpg">
	<link href="css/userinfo.css" rel='stylesheet' type='text/css' />
	
</head>
<body>

<div id="contentCon">
	<div class="left">
    	<div></div>
        <a href="javascript:uout();">退出账号</a>
        <span></span>
        <ul>
        	<li><a href="personal">个人信息</a></li>
            <li><a href="myorders">我的订单</a></li>
            <li><a href="#">我的钱包</a></li>
            <li><a href="#">优惠特权</a></li>
            <li><a href="myaddress">地址管理</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">我的足迹</a></li>
            <li><a href="#" class="my">收藏夹</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
    		<p>我的收藏</p>
            <span></span>
        </ul>
        
        <c:forEach items="${productlist}" var="r">
					<div class="col-md-3 product-men women_two" style="margin-top: 10px;display: inline-block;">
						<div class="product-googles-info googles">
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
													<span class="money ">￥${r.nowprice}</span>
												</div>
											</div>
										</div>
										<div class="googles single-item hvr-outline-out" style="margin-top: -40px;">
											<button onclick="delcollect(${r.cid});" type="button" class="googles-cart pgoogles-cart">
												<i class="layui-icon layui-icon-close"></i>
											</button>
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
					</c:forEach>
        
       <span></span>
    </div>
</div>

<%@include file="_footer.jsp" %>
<script type="text/javascript">
function incar(id) {
	$.ajax({
		url:"incar",
		data:{product_id:id,count:1},
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

function delcollect(cid) {
	layer.confirm('确认删除?',{
		btn:['确定','取消'],title:'移出收藏夹'
	},function(){
		$.ajax({
			url:"delcollect",
			data:{cid:cid},
			dataType:'json',
			type:'post',
			success:function(res){
				if(res.c>0){
					location.reload();
				}else{
						layer.msg('请重新操作',{
			    			time:1000
			    		});
					}
			}
		});
	},function(){
		layer.close();
	});
}
</script>
</body>
</html>
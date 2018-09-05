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
	<link href="css/order.css" rel='stylesheet' type='text/css' />
	
	<script type="text/javascript">
	function topay(id) {
		location.href="user_topay?id="+id;
	}
	function sure(id) {
		if(confirm("确认收货?")){
			$.ajax({
				url:"user_sure",
				type:"post",
				data:{id:id},
				success:function(res){
					if(res.c==1){
						alert("已确认收货");
						location.reload();
					}else{
						alert("请重新操作");
					}
				}
			});
		}
		
	}
	
	</script>
</head>
<body>

<div id="contentCon">
	<div class="left">
    	<div></div>
        <a href="ucut">切换账号</a>
        <span></span>
        <ul>
        	<li><a href="personal">个人信息</a></li>
            <li><a href="#" class="my">我的订单</a></li>
            <li><a href="#">我的钱包</a></li>
            <li><a href="#">优惠特权</a></li>
            <li><a href="myaddress">地址管理</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">我的足迹</a></li>
            <li><a href="#">收藏夹</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
        	<li class="all">全部订单</li>
            <li>待付款</li>
            <li>已发货</li>
            <li>待评价</li>
            <li>售后服务</li>
        </ul>
        <c:forEach items="${myorders}" var="r">
        <ol>
            <p>${r.date}&nbsp;&nbsp;&nbsp;&nbsp;订单号：${r.code}</p>
            <c:if test="${r.status==0}">
                <button onclick="topay(${r.id});" type="button" style="float: right;margin-top: 10px;">去支付</button>
            </c:if>
            <c:if test="${r.status==1}">
                <a style="float: right;width:100px; margin-top: 10px;">等待发货</a>
            </c:if>
            <c:if test="${r.status==2}">
                <button onclick="sure(${r.id});" type="button" style="float: right;margin-top: 10px;">确认收货</button>
            </c:if>
            <c:if test="${r.status==3}">
                <a <%-- onclick="assess(${r.id});" --%> style="float: right;width:100px;margin-top: 10px;">订单已完成</a>
            </c:if>
        </ol>
        
        <c:forEach items="${myproduct}" var="p">
        <c:if test="${r.id==p.orders_id}">
        <div>
        	<ul>
            	<li>
            		<img alt="" src="${p.pic}" style="width: 90px;height: 90px;">
            	</li>
            	<li>
                	<p style="width: 80px;">${p.fullname}</p>
                </li>
                <li class="price">¥${p.nowprice}</li>
                <li class="price">x${p.count}</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                    <a href="#" class="text02">查看物流</a>
                </li>
                <li>
                	
                	
                </li>
            </ul>
        </div>
        </c:if>
        </c:forEach>
        
        </c:forEach>
        
    </div>
    
    
</div>
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
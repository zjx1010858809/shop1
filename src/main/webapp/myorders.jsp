<%@ page language="java" isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title>Home</title>
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="shortcut icon" href="images/001.jpg">
	<link href="css/order.css" rel='stylesheet' type='text/css' />
	
	
</head>
<body>

<div id="contentCon">
	<div class="left">
    	<div></div>
        <a href="#">切换账号</a>
        <span></span>
        <ul>
        	<li><a href="personal">个人信息</a></li>
            <li><a href="#" class="my">我的订单</a></li>
            <li><a href="#">我的钱包</a></li>
            <li><a href="#">优惠特权</a></li>
            <li><a href="#">地址管理</a></li>
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
                <button style="float: right;margin-top: 10px;">去支付</button>
            </c:if>
            <c:if test="${r.status==1}">
                <a style="margin-right:0px;width:100px; margin-top: 10px;">等待发货</a>
            </c:if>
            <c:if test="${r.status==2}">
                <button style="float: right;margin-top: 10px;">确认收货</button>
            </c:if>
            <c:if test="${r.status==3}">
                <button style="float: right;margin-top: 10px;">去评价</button>
            </c:if>
        </ol>
        <div>
        	<ul>
            	<li>
            		<img alt="" src="${r.pic}" style="width: 90px;height: 90px;">
            	</li>
            	<li>
                	<p style="width: 80px;">${r.fullname}</p>
                </li>
                <li class="price">¥${r.nowprice}</li>
                <li class="price">x${r.count}</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                	<a href="#">订单详情</a>
                    <a href="#" class="text02">查看物流</a>
                </li>
                <li>
                	
                	
                </li>
            </ul>
        </div>
        
        
        </c:forEach>
        
    </div>
    
    
</div>
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
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
	<link href="css/userinfo.css" rel='stylesheet' type='text/css' />
	
</head>
<body>

<div id="contentCon">
	<div class="left">
    	<div></div>
        <a href="#">切换账号</a>
        <span></span>
        <ul>
        	<li><a href="#" class="my">个人信息</a></li>
            <li><a href="order.jsp">我的订单</a></li>
            <li><a href="#">我的钱包</a></li>
            <li><a href="#">优惠特权</a></li>
            <li><a href="#">地址管理</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">我的足迹</a></li>
            <li><a href="#">收藏夹</a></li>
        </ul>
    </div>
    <div id="contentCon">
	<div class="left">
    	<div></div>
        <p>晨曦夏夜</p>
        <a href="#">切换账号</a>
        <span></span>
        <ul>
        	<li><a href="userinfo.html">个人信息</a></li>
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
        <ol>
        	<input type="checkbox">
            <p>2017-9-22&nbsp;&nbsp;&nbsp;&nbsp;订单号：124534645747</p>
            <a href="#"></a>
        </ol>
        <div>
        	<li></li>
            <ul>
            	<li>
                	<p>创意甜橙味蛋糕</p>
                    <span>净含量：250克</span>
                </li>
                <li class="price">¥29.00</li>
                <li class="price">x1</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                	<a href="#">订单详情</a>
                    <a href="#" class="text02">查看物流</a>
                </li>
            </ul>
        </div>
         <ol>
        	<input type="checkbox">
            <p>2017-9-12&nbsp;&nbsp;&nbsp;&nbsp;订单号：124537468977</p>
            <a href="#"></a>
        </ol>
        <div>
        	<li class="pic02"></li>
            <ul>
            	<li>
                	<p>创意心形蛋糕</p>
                    <span>净含量：250克</span>
                </li>
                <li class="price">¥59.00</li>
                <li class="price">x1</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                	<a href="#">订单详情</a>
                    <a href="#" class="text02">查看物流</a>
                </li>
                <a href="#">评价</a>
            </ul>
        </div>
        <ol>
        	<input type="checkbox">
            <p>2017-8-25&nbsp;&nbsp;&nbsp;&nbsp;订单号：680945239418</p>
            <a href="#"></a>
        </ol>
        <div>
        	<li class="pic03"></li>
            <ul>
            	<li>
                	<p>表白首选-蝴蝶粉蛋</p>
                    <span>净含量：50克</span>
                </li>
                <li class="price">¥139.00</li>
                <li class="price">x1</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                	<a href="#">订单详情</a>
                    <a href="#" class="text02">查看物流</a>
                </li>
                <a href="#">评价</a>
            </ul>
        </div>
        <ol>
        	<input type="checkbox">
            <p>2017-8-5&nbsp;&nbsp;&nbsp;&nbsp;订单号：456745239418</p>
            <a href="#"></a>
        </ol>
        <div>
        	<li class="pic04"></li>
            <ul>
            	<li>
                	<p>自然系列蛋糕</p>
                    <span>净含量：250克</span>
                </li>
                <li class="price">¥89.00</li>
                <li class="price">x1</li>
                <li>
                	<a href="#">联系我们</a>
                    <a href="#" class="text02">申请售后</a>
                </li>
                <li>
                	<a href="#">订单详情</a>
                    <a href="#" class="text02">查看物流</a>
                </li>
                <a href="#">评价</a>
            </ul>
        </div>
    </div>
    <ol>
    	<a href="#" id="left"><li>&lt;</li></a>
        <a href="#" id="NO1"><li>1</li></a>
        <a href="#"><li>2</li></a>
        <a href="#"><li>3</li></a>
        <a href="#"><li>...</li></a>
        <a href="#"><li>10</li></a>
        <a href="#" id="right"><li>&gt;</li></a>
    </ol>
    
</div>
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
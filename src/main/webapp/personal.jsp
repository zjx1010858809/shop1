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
        	<li><a href="#" class="my">个人信息</a></li>
            <li><a href="myorders">我的订单</a></li>
            <li><a href="#">我的钱包</a></li>
            <li><a href="#">优惠特权</a></li>
            <li><a href="myaddress">地址管理</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">我的足迹</a></li>
            <li><a href="mycollect">收藏夹</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
    		<p>基本资料</p>
            <span></span>
        </ul>
        <div>
            <ol>
                <li>用 户 I D</li>
                <li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</li>
                <li>手机号码</li>
            </ol>
            <ul>
            	<p>${user.id}</p>
                <p>${user.email}</p>
                <p>${user.tel}</p>
                
            </ul>
        </div>
        <span></span>
    </div>
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
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
        <p>晨曦夏夜</p>
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
    <div class="right">
    	<ul>
    		<p>基本资料</p>
            <span></span>
        </ul>
        <div>
            <ol>
                <li>用 户 I D</li>
                <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</li>
                <li>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</li>
                <li>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</li>
                <li>手机号码</li>
                <li>出生日期</li>
            </ol>
            <ul>
            	<p>12345678</p>
                <p>1755984552@163.com</p>
                <div><input type="text" value="晨曦夏夜"></div>
                <ol>
                	<input name="gender" type="radio"><label>男</label>
                    <input name="gender" type="radio" class="woman"><label>女</label>
                </ol>
                <p>178****5048</p>
                <li>
                	<select>
                    	<option value="1">--</option>
                    	<option value="2">1997</option>
                        <option value="3">1996</option>
                        <option value="4">1995</option>
                        <option value="5">1994</option>
                    </select>
                    <label>年</label>
                    <select class="moonth">
                    	<option value="1">--</option>
                    	<option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                    <label>月</label>
                    <select class="moonth">
                    	<option value="1">--</option>
                    	<option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                    <label>日</label>
                </li>
            </ul>
        </div>
        <span></span>
    </div>
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
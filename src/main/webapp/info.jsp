<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Home</title>
	<style type="text/css">
.right{
	float:left;
	width:876px;
	margin-left:0px;}
.right>ul{
	overflow:hidden;}
.right>ul>p{
	text-align:center;
	float:left;
	width:112px;
	height:34px;
	font-size:18px;
	border-bottom:1px solid #d2d2d2;
	border-right:1px solid #d2d2d2;
	color:#fb0000;}
.right>ul>span{
	float:left;
	width:762px;
	height:1px;
	background:#d2d2d2;
	}
.right>div{
	margin-left:20px;
	overflow:hidden;}
.right>div>ol{
	float:left;}
.right>div>ol>li{
	font-size:18px;
	color:#4c4c4c;
	margin-top:50px;}
.right>div>ul{
	float:left;
	margin-left:100px;}
.right>div>ul>p{
	font-size:18px;
	color:#4c4c4c;
	margin-top:50px;
	}
.right>div>ul>div{
	margin-top:50px;}
.right>div>ul>div>input{
	width:166px;
	height:36px;
	border:1px solid #d2d2d2;
	font-size:18px;
	color:#4c4c4c;
	padding-left:18px;}
.right>div>ul>ol{
	margin-top:40px;}
.right>div>ul>ol>input{
	width:18px;
	height:18px;}
.right>div>ul>ol>.woman{
	margin-left:40px;}
.right>div>ul>ol>label{
	font-size:18px;
	color:#4c4c4c;
	padding-left:10px;}
.right>div>ul>li{
	margin-top:50px;}
.right>div>ul>li>select{
	width:58px;
	height:22px;}
.right>div>ul>li>.moonth{
	margin-left:15px;}
.right>div>ul>li>label{
	margin-left:10px;}
.right>span{
	display:block;
	width:800px;
	height:1px;
	background:#eee;
	margin-top:50px;}
.right>a{
	display:block;
	width:90px;
	height:30px;
	color:#fff;
	line-height:30px;
	text-align:center;
	font-size:18px;
	background:#fb0000;
	margin-top:30px;
	margin-left:184px;}
	</style>
	

</head>

<body>
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
        <a href="#">保存</a>
    </div>
	
	
</body>

</html>
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
	function add() {
		var layer=layui.layer;
		layer.open({
			type:2,
			content:'addaddr.jsp',
			area:['600px','320px']
		});
	}
	function edit(id) {
		var layer=layui.layer;
		layer.open({
			type:2,
			content:'aedit?id='+id,
			maxmin:true,
			area:['600px','320px']
		});
	}
	function deladdr(id){
		layer.confirm('确定要删除?',{
			btn:['已转移阵地','先留着吧'],title:'删除地址'
		},function(){
			$.ajax({
				url:'deladdr',
				type:"post",
				data:{id:id},
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
            <li><a href="#" class="my">地址管理</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">我的足迹</a></li>
            <li><a href="mycollect">收藏夹</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
        	<li style="margin-left:100px;">收货人</li>
        	<li style="margin-left:100px;">电话</li>
        	<li style="margin-left:150px;">地区</li>
        	<li style="margin-left:200px;">地址</li>
        	<li style="float: right;">
        	<input class="btn btn-primary radius" onclick="add();" type="button" style="height: 30px;" value="新增">
        	</li>
        </ul>
        <c:forEach items="${myaddress}" var="r">
        <hr>
        <div>
        <ul>
        	<li style="margin-left: 50px;width: 50px;">${r.name}</li>
            	<li style="margin-left: 30px;width: 80px;">${r.tel}</li>
                <li style="margin-left: 30px;width: 90px;">
                	<p>${r.zone}</p>
                </li>
                <li style="margin-left: 70px;width: 90px;">
                	<p>${r.addr}</p>
                </li>
                <li style="margin-left: 30px;width: 30px;">
                	<input onclick="edit(${r.id});" type="button" style="margin-top: -40px;"class="btn btn-primary radius" value="编辑">
                	<input onclick="deladdr(${r.id});" type="button" class="layui-btn layui-btn-sm layui-btn-danger" value="删除">
                </li>
               
            </ul>
        </div>
        <hr>
        </c:forEach>
        
    </div>
    
    
</div>

<%@include file="_footer.jsp" %>
</body>
</html>
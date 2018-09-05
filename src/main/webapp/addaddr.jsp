<%@ page language="java" isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8>
<title></title>
<link href="layui/css/layui.css" rel="stylesheet">
<script src="layui/layui.all.js"></script>
<script src="js/jquery-2.2.3.min.js"></script>
</head>
<body>
<div class="layui-form-item">
    <label class="layui-form-label">收货人</label>
    <div class="layui-input-block">
      <input type="text" name="name" value="${address.name}" required  lay-verify="required" placeholder="请输入收货人姓名" autocomplete="off" class="layui-input name">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">电话</label>
    <div class="layui-input-block">
      <input type="number" name="tel" value="${address.tel}" required  lay-verify="required" placeholder="请输入联系方式" autocomplete="off" class="layui-input tel">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地区</label>
    <div class="layui-input-block">
      <input type="text" name="zone" value="${address.zone}" required  lay-verify="required" placeholder="请输入地区名" autocomplete="off" class="layui-input zone">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">详细地址</label>
    <div class="layui-input-block">
      <input type="text" name="addr" value="${address.addr}" required  lay-verify="required" placeholder="请输入详细地址" autocomplete="off" class="layui-input addr">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
    	<c:if test="${address!=null}">
      		<button onclick="ediaddr(${address.id});" class="layui-btn">立即提交</button>
      	</c:if>
      	<c:if test="${address==null}">
      		<button onclick="subaddr();" class="layui-btn">立即提交</button>
      	</c:if>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
 
<script>

  function subaddr() {
	var name=$(".name").val();
	var tel=$(".tel").val();
	var zone=$(".zone").val();
	var addr=$(".addr").val();
	if(name==''||tel==''||zone==''||addr==''){
		layer.msg('不能为空!',{
			time:1000
		});
	}else{
	$.ajax({
		  url:'aadd',
		  data:{name:name,tel:tel,zone:zone,addr:addr},
		  type:'post',
		  success:function(res){
			  if(res.c==1){
				  var index = parent.layer.getFrameIndex(window.name);
				  parent.layer.close(index);
				  parent.location.reload();
			  }else
			  if(res.c==0){
				  layer.msg('请重新操作');
			  }
		  }
	  });
	}
  }
  
  function ediaddr(id) {
		var name=$(".name").val();
		var tel=$(".tel").val();
		var zone=$(".zone").val();
		var addr=$(".addr").val();
		if(name==''||tel==''||zone==''||addr==''){
			layer.msg('不能为空!',{
				time:1000
			});
		}else{
		$.ajax({
			  url:'aupdate',
			  data:{name:name,tel:tel,zone:zone,addr:addr,id:id},
			  type:'post',
			  success:function(res){
				  if(res.c==1){
					  var index = parent.layer.getFrameIndex(window.name);
					  parent.layer.close(index);
					  parent.location.reload();
				  }else
				  if(res.c==0){
					  layer.msg('请重新操作');
				  }
			  }
		  });
		}
	  }
</script>
</body>
</html>
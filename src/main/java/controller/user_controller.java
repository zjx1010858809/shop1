package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.shopcar;
import entity.user;
import service.orders_service;
import service.product_service;
import service.type_service;
import service.user_service;
import util.JsonUtil;

@Controller
public class user_controller {
	@Autowired
	user_service service;
	@Autowired
	type_service tservice;
	@Autowired
	product_service pservice;
	@Autowired
	orders_service oservice;
	
	@RequestMapping("user_login")
	public @ResponseBody JsonUtil login(user u,HttpSession session) {
		user user=service.login(u);
		if(user!=null) {
				session.setAttribute("user",user);
				session.setMaxInactiveInterval(600);
				return new JsonUtil(1,"");
		}else {
			return new JsonUtil(0,"账号密码错误！");
		}
	}
	
	@RequestMapping("myshopcar")
	public String myshopcar(int id,ModelMap mv) {
		mv.put("myshopcar",service.myshopcar(id));
		mv.put("typelist",tservice.select());
		return "shopcar";
	}
	
	@RequestMapping("incar")
	public @ResponseBody JsonUtil incar(shopcar sh,HttpSession session) {
		if(session.getAttribute("user")!=null) {
			user u=(user) session.getAttribute("user");
			sh.setUser_id(u.getId());
			service.incar(sh);
			
			return new JsonUtil(1,"添加成功！");
		}else {
			return new JsonUtil(0, "请先登录！");
		}
	}
	
	@RequestMapping("outcar")
	public @ResponseBody JsonUtil outcar(Integer id ,HttpSession session) {
		
		if(session.getAttribute("user")!=null) {
			if(service.outcar(id)!=0) {
				return new JsonUtil(1,"删除成功！");
			}else {
				return new JsonUtil(2,"删除失败！");
			}
		}else {
			return new JsonUtil(3, "登陆超时,请重新登录！");
		}
	}
	
	@RequestMapping("changercount")
	public @ResponseBody JsonUtil changercount(shopcar sh,HttpSession session) {
		if(session.getAttribute("user")!=null) {
			if(service.changercount(sh)!=0) {
				return new JsonUtil(1, "操作成功");
			}else {
				return new JsonUtil(2, "操作失败");
			}
		}else {
			return new JsonUtil(3, "登陆超时,请重新登录！");
		}
	}
	
	@RequestMapping("user_register")
	public @ResponseBody JsonUtil register(user u) {
		int d=service.register(u);
		if(d==1) {
			return new JsonUtil(1,"注册成功！");
		}else {
			return new JsonUtil(2, "请重新注册！");
		}
	}
	
	@RequestMapping("user_pay")
	public @ResponseBody JsonUtil orders(@RequestBody ArrayList<shopcar> shopcar,HttpSession session) {
		user u=(entity.user) session.getAttribute("user");
		if(u!=null) {
			
			if(oservice.orderss(shopcar,u)) {
				return new JsonUtil(1, "购买成功！");
			}else {
				return new JsonUtil(2, "购买失败请重新购买");
			}
		}else {
			return new JsonUtil(0, "登录超时请重新登录！");
		}
		
	}

}

package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.shopcar;
import entity.user;
import service.type_service;
import service.user_service;
import util.JsonUtil;

@Controller
public class user_controller {
	@Autowired
	user_service service;
	@Autowired
	type_service tservice;
	
	@RequestMapping("user_login")
	public @ResponseBody JsonUtil login(user u,HttpSession session) {
		user user=service.login(u);
		if(user!=null) {
				session.setAttribute("user",user);
				session.setMaxInactiveInterval(600);
				return new JsonUtil(1,"登陆成功！");
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
			System.out.println(u.getId());
			sh.setUser_id(u.getId());
			System.out.println(sh.getUser_id());
			System.out.println(sh.getCount());
			System.out.println(sh.getProduct_id());
			service.incar(sh);
			
			return new JsonUtil(1,"");
		}else {
			return new JsonUtil(0, "请先登录！");
		}
	}

}

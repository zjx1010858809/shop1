package controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.collect;
import entity.user;
import service.collect_service;
import service.product_service;
import util.JsonUtil;
import util.SearchInfo;

@Controller
public class collect_controller {
	
	@Autowired
	collect_service cservice;
	
	@RequestMapping("product_collect")
	public @ResponseBody JsonUtil selectall(collect col,HttpSession session) {
		user u=(user) session.getAttribute("user");
		if(u!=null) {
			col.setUser_id(u.getId());
			col.setDate(new Date().toLocaleString());
			cservice.insert(col);
			return new JsonUtil(1, "收藏成功!") ;
		}else {
			return new JsonUtil(0, "请先登录!");
		}
		
	}
	
	@RequestMapping("mycollect")
	public void selectall(HttpSession session,ModelMap mv) {
		user u=(user) session.getAttribute("user");
		mv.put("productlist",cservice.select(u.getId()));
	}
	
	@RequestMapping("delcollect")
	public @ResponseBody JsonUtil delcollect(Integer cid) {
		cservice.delcollect(cid);
		return new JsonUtil(1,"");
		
	}
	
	
}

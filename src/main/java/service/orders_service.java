package service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import entity.orders;
import entity.shopcar;
import entity.user;

public interface orders_service {
	
	public boolean orderss(ArrayList<shopcar> shopcar,user u,HttpSession session);
	
	public orders selectbycode(String code);
	
	public boolean payfor(int status,String code);
	
	public void supdate(@Param("status") int status,@Param("code") String code);
	
	public int insert(orders o);
	
	public List<orders> selebyuserid(int user_id);
	
	public orders selebyid(int id);
	
	public int sure(int id);

}

package service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import entity.orders;
import entity.shopcar;
import entity.user;

public interface orders_service {
	
	public boolean orderss(ArrayList<shopcar> shopcar,user u,HttpSession session);
	
	public orders selectbycode(String code);
	
	public boolean payfor(int status,String code);

}

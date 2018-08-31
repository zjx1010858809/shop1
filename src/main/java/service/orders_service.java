package service;

import java.util.ArrayList;

import entity.shopcar;
import entity.user;

public interface orders_service {
	
	public boolean orderss(ArrayList<shopcar> shopcar,user u);
	
	public int selectbycode(String code);

}

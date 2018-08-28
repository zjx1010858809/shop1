package service;

import java.util.List;

import entity.product;

public interface product_service {
	
	public List<product> selectall();
	
	public product selectbyid(int id);

}

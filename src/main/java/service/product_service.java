package service;

import java.util.List;

import entity.product;
import util.SearchInfo;

public interface product_service {
	
	public List<product> selectall(SearchInfo info);
	
	public product selectbyid(int id);
	
	public List<product> selectbytype(int id);

}

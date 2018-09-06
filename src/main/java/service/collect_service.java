package service;

import java.util.List;

import entity.collect;
import entity.product;

public interface collect_service {
	
	public int insert(collect o);
	public List<product> select(int user_id);
	public int delcollect(int cid);

}

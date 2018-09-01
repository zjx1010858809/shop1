package dao;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import entity.collect;

@Repository
public interface collect_dao {
	
	@Insert("insert into collect (user_id,product_id,date) values (#{user_id},#{product_id},#{date})")
	public int insert(collect o);
	
}

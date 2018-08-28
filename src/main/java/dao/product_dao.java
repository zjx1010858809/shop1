package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.product;

@Repository
public interface product_dao {
	
	@Select("select * from product")
	public List<product> selectall();
	
	@Select("select * from product where id=#{id}")
	public product selectbyid(int id);
	
}

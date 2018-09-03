package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.product;
import util.SearchInfo;

@Repository
public interface product_dao {
	
	@Select("select * from product ${where}")
	public List<product> selectall(SearchInfo info);
	
	@Select("select * from product where id=#{id}")
	public product selectbyid(int id);
	
	@Select("select * from product where type_id=#{id}")
	public List<product> selectbytype(int id);
	
}

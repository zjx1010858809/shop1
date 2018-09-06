package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.collect;
import entity.product;

@Repository
public interface collect_dao {
	
	@Insert("insert into collect (user_id,product_id,date) values (#{user_id},#{product_id},#{date})")
	public int insert(collect o);
	
	@Select("select p.*,c.id cid from product p inner join collect c on c.product_id=p.id where c.user_id=#{user_id}")
	public List<product> select(int user_id);
	
	@Delete("delete from collect where id=#{cid}")
	public int delcollect(int cid);
}

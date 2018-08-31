package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders;

@Repository
public interface orders_dao {
	
	@Insert("insert into orders (date,code,amount,nowamount,address_id,user_id,status,assessstatus,comments) values (#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},#{status},#{assessstatus},#{comments})")
	public int insert(orders o);
	
	@Select("select id from orders where code=#{code}")
	public int selectbycode(String code);
}

package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.orders;

@Repository
public interface orders_dao {
	
	@Insert("insert into orders (date,code,amount,nowamount,address_id,user_id,status,assessstatus,comments) values (#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},#{status},#{assessstatus},#{comments})")
	public int insert(orders o);
	
	@Select("select * from orders where code=#{code}")
	public orders selectbycode(String code);
	
	@Update("update orders set status=#{status} where code=#{code}")
	public void supdate(@Param("status") int status,@Param("code") String code);
}

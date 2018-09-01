package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.orders_status;

@Repository
public interface orders_status_dao {
	
	@Insert("insert into orders_status (orders_id,date,dest_status,info,num,amount,comments) values (#{orders_id},#{date},#{dest_status},#{info},#{num},#{amount},#{comments})")
	public void insert(orders_status os);
	
	@Update("insert into orders_status (orders_id,date,dest_status) values (#{orders_id},#{date},#{dest_status})")
	public void spay(@Param("dest_status")int dest_status,@Param("date")String date,@Param("orders_id")int orders_id);
}

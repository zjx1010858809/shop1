package dao;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import entity.orders_details;

@Repository
public interface orders_details_dao {
	
	@Insert("insert into orders_details (orders_id,product_id,count,price,nowprice,comments) values (#{orders_id},#{product_id},#{count},#{price},#{nowprice},#{comments})")
	public void insertorders(orders_details od);
}

package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders_details;

@Repository
public interface orders_details_dao {
	
	@Insert("insert into orders_details (orders_id,product_id,count,price,nowprice,comments) values (#{orders_id},#{product_id},#{count},#{price},#{nowprice},#{comments})")
	public void insertorders(orders_details od);
	
	@Select("select od.*,o.date date,o.code code,p.fullname,p.pics pics,o.status status from orders_details od inner join orders o inner join product p on od.orders_id=o.id and od.product_id=p.id where o.user_id=#{user_id}")
	public List<orders_details> myorders(int user_id);
}

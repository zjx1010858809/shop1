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
	
	@Select("select od.*,od.orders_id orders_id,p.fullname,p.pics pics from orders_details od inner join orders o inner join product p on od.orders_id=o.id and od.product_id=p.id where o.user_id=#{user_id} order by od.id desc")
	public List<orders_details> myproduct(int user_id);
}

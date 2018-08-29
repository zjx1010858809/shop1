package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.shopcar;
import entity.user;

@Repository
public interface user_dao {
	
	@Select("select * from user where email=#{email} and password=#{md5}")
	public user login(user u);
	
	@Select("select s.*,u.email,p.fullname,p.pics,p.nowprice from shopcar s inner join user u inner join product p on s.user_id=u.id and s.product_id=p.id where s.user_id=#{id}")
	public List<shopcar> myshopcar(int id);
	
	@Insert("insert into shopcar (user_id,product_id,count) values(#{user_id},#{product_id},#{count})")
	public void incar(shopcar sh);
	
}

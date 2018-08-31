package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.product;
import entity.shopcar;
import entity.user;


public interface user_dao {
	
	@Select("select * from user where tel=#{tel} and password=#{md5}")
	public user login(user u);
	
	@Select("select s.*,p.fullname,p.pics,p.nowprice from shopcar s inner join user u inner join product p on s.user_id=u.id and s.product_id=p.id where s.user_id=#{id}")
	public List<shopcar> myshopcar(int id);
	
	@Insert("insert into shopcar (user_id,product_id,count) values(#{user_id},#{product_id},#{count})")
	public void incar(shopcar sh);
	
	@Delete("delete from shopcar where id=#{id}")
	public int outcar(int id);
	
	@Update("update shopcar set count=#{count} where id=#{id}")
	public int changercount(shopcar sh);
	
	@Insert("insert into user (email,password,tel,level,amount,status,comments) values(#{email},#{md5},#{tel},#{level},#{amount},#{status},#{comments})")
	public int register(user u);
	
	@Delete("delete from shopcar where id=#{id}")
	public void delshopcar(int id);
	
}

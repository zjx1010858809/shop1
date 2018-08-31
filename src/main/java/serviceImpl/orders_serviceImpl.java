package serviceImpl;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.address_dao;
import dao.orders_dao;
import dao.orders_details_dao;
import dao.product_dao;
import dao.user_dao;
import entity.orders;
import entity.orders_details;
import entity.product;
import entity.shopcar;
import entity.user;
import service.orders_service;
@Service
public class orders_serviceImpl implements orders_service {
	@Autowired
	orders_dao odao;
	@Autowired
	product_dao pdao;
	@Autowired
	user_dao udao;
	@Autowired
	orders_details_dao ddao;
	@Autowired
	address_dao adao;

	@Transactional
	public boolean orderss(ArrayList<shopcar> shopcar,user u) {
		orders o=new orders();
		double amount=0;
		double nowamount=0;
		int user_id=u.getId();
		for(int i=0;i<shopcar.size();i++) {
			product p=pdao.selectbyid(shopcar.get(i).getProduct_id());
			
			double amount1=p.getPrice()*shopcar.get(i).getCount();
			double nowamount1=p.getNowprice()*shopcar.get(i).getCount();
			
			amount=amount+amount1;
			nowamount=nowamount+nowamount1;
			
			udao.delshopcar(shopcar.get(i).getId());
		}
			String code=new Date().getTime()+"";
			
			o.setAddress_id(adao.select(user_id).get(0).getId());
			o.setDate(new Date().toLocaleString());
			o.setCode(code);
			o.setAmount(amount);
			o.setNowamount(nowamount);
			o.setUser_id(user_id);
			
			odao.insert(o);
			int oid=odao.selectbycode(code);
			System.out.println(oid);
			orders_details od=new orders_details();
			for(int i=0;i<shopcar.size();i++) {
				product p=pdao.selectbyid(shopcar.get(i).getProduct_id());
				
				double amount1=p.getPrice()*shopcar.get(i).getCount();
				double nowamount1=p.getNowprice()*shopcar.get(i).getCount();
				
				od.setOrders_id(oid);
				od.setProduct_id(shopcar.get(i).getProduct_id());
				od.setCount(shopcar.get(i).getCount());
				od.setPrice(amount1);
				od.setNowprice(nowamount1);
				
				ddao.insertorders(od);
			}
		return true;
	}

	public int selectbycode(String code) {
		
		return odao.selectbycode(code);
	}

	

}

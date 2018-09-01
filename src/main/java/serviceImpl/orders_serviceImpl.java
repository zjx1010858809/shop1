package serviceImpl;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.address_dao;
import dao.orders_dao;
import dao.orders_details_dao;
import dao.orders_status_dao;
import dao.product_dao;
import dao.user_dao;
import entity.orders;
import entity.orders_details;
import entity.orders_status;
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
	@Autowired
	orders_status_dao sdao;

	@Transactional
	public boolean orderss(ArrayList<shopcar> shopcar,user u,HttpSession session) {
		orders o=new orders();
		orders_status os=new orders_status();
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
			
			session.setAttribute("code", code);
			session.setAttribute("nowamount", nowamount);
			
			String date=new Date().toLocaleString();
			
			o.setAddress_id(adao.select(user_id).get(0).getId());
			o.setDate(date);
			o.setCode(code);
			o.setAmount(amount);
			o.setNowamount(nowamount);
			o.setUser_id(user_id);
			
			odao.insert(o);
			orders order=odao.selectbycode(code);
			
			os.setOrders_id(order.getId());
			os.setDate(date);
			os.setDest_status(0);
			os.setNum(user_id);
			os.setAmount(nowamount);
			
			sdao.insert(os);
			
			orders_details od=new orders_details();
			for(int i=0;i<shopcar.size();i++) {
				product p=pdao.selectbyid(shopcar.get(i).getProduct_id());
				
				double amount1=p.getPrice()*shopcar.get(i).getCount();
				double nowamount1=p.getNowprice()*shopcar.get(i).getCount();
				
				od.setOrders_id(order.getId());
				od.setProduct_id(shopcar.get(i).getProduct_id());
				od.setCount(shopcar.get(i).getCount());
				od.setPrice(amount1);
				od.setNowprice(nowamount1);
				
				ddao.insertorders(od);
			}
		return true;
	}

	public orders selectbycode(String code) {
		return odao.selectbycode(code);
	}

	@Transactional
	public boolean payfor(int status,String code) {
		odao.supdate(status,code);
		
		orders_status os=new orders_status();
		orders order=odao.selectbycode(code);
		
		os.setOrders_id(order.getId());
		os.setDate(new Date().toLocaleString());
		os.setDest_status(status);
		os.setNum(order.getUser_id());
		os.setAmount(order.getNowamount());
		
		sdao.insert(os);
		return true;
	}

	

}

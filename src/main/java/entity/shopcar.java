package entity;

public class shopcar {
	int id;
	int user_id;
	int product_id;
	int count;
	String fullname;
	String pics;
	double nowprice;
	
	
	
	public String[] getPiclist() {
		if(pics.length()<5)return new String[0];
		return pics.split(",");
	}
	public String getPic() {
		if(pics.length()<5) return null;
		String [] pic=pics.split(",");
		
		if(pic.length>0)
		return pic[0];
		else return null;
	}
	
	
	
	
	public String getPics() {
		return pics;
	}
	public void setPics(String pics) {
		this.pics = pics;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public double getNowprice() {
		return nowprice;
	}
	public void setNowprice(double nowprice) {
		this.nowprice = nowprice;
	}
	
	
	

}

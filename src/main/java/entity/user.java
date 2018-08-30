package entity;

import java.io.Serializable;

import util.Md5Utils;
	
public class user implements Serializable{
	private int id;
	private String email;
	private String password;
	private String tel;
	private int level=1;
	private double amount=0;
	private int status=0;
	private String comments ="";
	private String[] statuss= {"正常","封号"};
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMd5() {
		return Md5Utils.md5(password);
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String[] getStatuss() {
		return statuss;
	}
	public void setStatuss(String[] statuss) {
		this.statuss = statuss;
	}
	
	
	
	 
}

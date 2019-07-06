package com.animal.model;

public class OrderDetail {
	private String oid;

	private Integer sid;

	private Integer num;

	private String sname;

	private Double price;

	private String img;

	private Double totalfee;

	public OrderDetail() {
		super();
	}

	public OrderDetail(String oid, Integer sid, Integer num, String sname, Double price, String img, Double totalfee) {
		super();
		this.oid = oid;
		this.sid = sid;
		this.num = num;
		this.sname = sname;
		this.price = price;
		this.img = img;
		this.totalfee = totalfee;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Double getTotalfee() {
		return totalfee;
	}

	public void setTotalfee(Double totalfee) {
		this.totalfee = totalfee;
	}

	@Override
	public String toString() {
		return "OrderDetail [oid=" + oid + ", sid=" + sid + ", num=" + num + ", sname=" + sname + ", price=" + price
				+ ", img=" + img + ", totalfee=" + totalfee + "]";
	}
}
package com.animal.model;

import java.util.Date;
import java.util.List;

public class Order {
	private String oid;

	private Integer uid;

	private Double payment;

	private Integer postfee;

	private Integer status;

	private Date createdtime;

	private Date updatedtime;

	private List<OrderDetail> ods;

	public Order() {
		super();
	}

	public Order(String oid, Integer uid, Double payment, Integer postfee, Integer status, Date createdtime,
			Date updatedtime) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.payment = payment;
		this.postfee = postfee;
		this.status = status;
		this.createdtime = createdtime;
		this.updatedtime = updatedtime;
	}

	public List<OrderDetail> getOds() {
		return ods;
	}

	public void setOds(List<OrderDetail> ods) {
		this.ods = ods;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid == null ? null : oid.trim();
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Double getPayment() {
		return payment;
	}

	public void setPayment(Double payment) {
		this.payment = payment;
	}

	public Integer getPostfee() {
		return postfee;
	}

	public void setPostfee(Integer postfee) {
		this.postfee = postfee;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreatedtime() {
		return createdtime;
	}

	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}

	public Date getUpdatedtime() {
		return updatedtime;
	}

	public void setUpdatedtime(Date updatedtime) {
		this.updatedtime = updatedtime;
	}
}
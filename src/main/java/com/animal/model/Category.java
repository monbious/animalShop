package com.animal.model;

public class Category {
	private Integer cid;

	private Integer parentid;

	private String name;

	@Override
	public String toString() {
		return "Category [cid=" + cid + ", parentid=" + parentid + ", name=" + name + "]";
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}
}
package com.animal.util;

import java.util.List;

public class PageData {

	private List list;
	private int count;

	public PageData() {
	}

	public <T> PageData(int count, List<T> list) {
		this.count = count;
		this.list = list;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}

package com.animal.util;

import java.util.List;

import com.animal.model.Order;
import com.animal.model.OrderDetail;;

public class OrderUtil {

	private Order order;
	private List<OrderDetail> ods;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<OrderDetail> getOds() {
		return ods;
	}

	public void setOds(List<OrderDetail> ods) {
		this.ods = ods;
	}

}

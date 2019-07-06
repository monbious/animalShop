package com.animal.service;

import com.animal.model.Order;
import com.github.pagehelper.PageInfo;

//订单的service
public interface IOrderService {
	// 增加商品到订单里面；
	int addOrders(Order order);

	// 查询所有订单
	PageInfo<Order> selectOrders(Integer pageNum);

	PageInfo<Order> selectOrdersByUid(Integer uid, Integer pageNum);

	void deleteOrder(String oid);
}

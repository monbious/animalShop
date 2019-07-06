package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.OrderDetailMapper;
import com.animal.dao.OrderMapper;
import com.animal.model.Order;
import com.animal.model.OrderDetail;
import com.animal.service.IOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//购物车的业务逻辑类
@Service
public class OrderService implements IOrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Autowired
	private OrderDetailMapper orderDetailMapper;

	public int addOrders(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.addOrder(order);
	}

	public PageInfo<Order> selectOrders(Integer pageNum) {
		PageHelper.startPage(pageNum, 3);
		List<Order> orders = orderMapper.selectOrders();
		for (Order order : orders) {
			List<OrderDetail> ods = orderDetailMapper.searchByOid(order.getOid());
			order.setOds(ods);
		}
		PageInfo<Order> info = new PageInfo<Order>(orders, 3);
		return info;
	}

	@Override
	public PageInfo<Order> selectOrdersByUid(Integer uid, Integer pageNum) {
		// System.out.println(pageNum);
		PageHelper.startPage(pageNum, 3);
		List<Order> orders = orderMapper.selectByUid(uid);
		for (Order order : orders) {
			List<OrderDetail> ods = orderDetailMapper.searchByOid(order.getOid());
			order.setOds(ods);
		}
		PageInfo<Order> info = new PageInfo<Order>(orders, 3);
		return info;
	}

	@Override
	public void deleteOrder(String oid) {
		orderMapper.deleteByPrimaryKey(oid);
		orderDetailMapper.deleteByPrimaryKey(oid);
	}

}
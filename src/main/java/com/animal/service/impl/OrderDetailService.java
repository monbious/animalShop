package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.OrderDetailMapper;
import com.animal.model.OrderDetail;
import com.animal.service.IOrderDetailService;

//购物车的业务逻辑类
@Service
public class OrderDetailService implements IOrderDetailService {

	@Autowired
	private OrderDetailMapper orderDetailMapper;

	public int addOrdersDetail(OrderDetail odd) {
		// TODO Auto-generated method stub
		return orderDetailMapper.addOrdersDetail(odd);
	}

	public List<OrderDetail> selectOrdersDetail() {
		// TODO Auto-generated method stub
		return orderDetailMapper.selectOrdersDetail();
	}

	public List<OrderDetail> searchByOid(String oid) {
		// TODO Auto-generated method stub
		return orderDetailMapper.searchByOid(oid);
	}

}
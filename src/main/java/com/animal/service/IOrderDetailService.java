package com.animal.service;

import java.util.List;

import com.animal.model.OrderDetail;

//订单的service
public interface IOrderDetailService {

	int addOrdersDetail(OrderDetail odd);

	List<OrderDetail> selectOrdersDetail();

	List<OrderDetail> searchByOid(String oid);

}

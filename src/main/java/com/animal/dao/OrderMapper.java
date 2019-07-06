package com.animal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.animal.model.Order;
import com.animal.model.OrderExample;

@Mapper
public interface OrderMapper {
	long countByExample(OrderExample example);

	int deleteByExample(OrderExample example);

	int deleteByPrimaryKey(String oid);

	int insert(Order record);

	int insertSelective(Order record);

	List<Order> selectByExample(OrderExample example);

	Order selectByPrimaryKey(String oid);

	int updateByExampleSelective(@Param("record") Order record, @Param("example") OrderExample example);

	int updateByExample(@Param("record") Order record, @Param("example") OrderExample example);

	int updateByPrimaryKeySelective(Order record);

	int updateByPrimaryKey(Order record);

	int addOrder(Order order);

	List<Order> selectOrders();

	int updateOrders(Order order);

	// 删除订单
	int deleteOrders(int id);

	List<Order> selectByUid(Integer uid);
}
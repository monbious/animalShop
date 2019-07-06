package com.animal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.animal.model.OrderDetail;
import com.animal.model.OrderDetailExample;

@Mapper
public interface OrderDetailMapper {
	long countByExample(OrderDetailExample example);

	int deleteByExample(OrderDetailExample example);

	int deleteByPrimaryKey(String oid);

	int insert(OrderDetail record);

	int insertSelective(OrderDetail record);

	List<OrderDetail> selectByExample(OrderDetailExample example);

	OrderDetail selectByPrimaryKey(String oid);

	int updateByExampleSelective(@Param("record") OrderDetail record, @Param("example") OrderDetailExample example);

	int updateByExample(@Param("record") OrderDetail record, @Param("example") OrderDetailExample example);

	int updateByPrimaryKeySelective(OrderDetail record);

	int updateByPrimaryKey(OrderDetail record);

	int addOrdersDetail(OrderDetail odd);

	List<OrderDetail> selectOrdersDetail();

	List<OrderDetail> searchByOid(String oid);
}
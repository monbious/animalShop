package com.animal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.animal.model.Cart;
import com.animal.model.CartExample;

@Mapper
public interface CartMapper {
	long countByExample(CartExample example);

	int deleteByExample(CartExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Cart record);

	int insertSelective(Cart record);

	List<Cart> selectByExample(CartExample example);

	Cart selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Cart record, @Param("example") CartExample example);

	int updateByExample(@Param("record") Cart record, @Param("example") CartExample example);

	int updateByPrimaryKeySelective(Cart record);

	int updateByPrimaryKey(Cart record);

	int addCart(Cart cart);

	// 根据购物车id，来查询一条购物车数据
	Cart selectOne(Cart cart);

	// 根据id，修改数量
	int updateCart(Cart cart);

	// 根据用户的id来查询该用户的数据
	List<Cart> selectByUid(int uid);

	// 查询购物车表中的所有数据
	List<Cart> selectCartAll();

	// 删除操作
	void deleteCart(int id);
}
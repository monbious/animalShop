package com.animal.service;

import java.util.List;

import com.animal.model.Cart;

//购物车的service
public interface ICartService {
	// 增加商品到购物车里面；
	void addCart(Cart cart);

	// 根据购物车id，来查询一条购物车数据
	Cart selectOne(Cart cart);

	// 根据用户的id来查询该用户的数据
	List<Cart> selectByUid(int uid);

	List<Cart> selectCartAll();

	void deleteCart(Integer id);

	void updateCart(Cart cart);

	Cart getCartByUidandSid(Integer uid, Integer sid);

	void deleteCartByUidandSid(Integer uid, Integer sid);

	Cart selectById(Integer cid);
}

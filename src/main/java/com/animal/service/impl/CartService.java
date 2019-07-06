package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.CartMapper;
import com.animal.model.Cart;
import com.animal.model.CartExample;
import com.animal.model.CartExample.Criteria;
import com.animal.service.ICartService;

//购物车的业务逻辑类
@Service
public class CartService implements ICartService {

	@Autowired
	private CartMapper cartMapper;

	// 参数cart本身带有商品sid
	public void addCart(Cart cart) {
		cartMapper.addCart(cart);
	}

	// 根据购物车id，来查询一条购物车数据
	public Cart selectOne(Cart cart) {
		return cartMapper.selectOne(cart);
	}

	public List<Cart> selectByUid(int uid) {
		return cartMapper.selectByUid(uid);
	}

	public void deleteCart(Integer id) {
		// TODO Auto-generated method stub
		cartMapper.deleteCart(id);
	}

	public List<Cart> selectCartAll() {
		// TODO Auto-generated method stub
		return cartMapper.selectCartAll();
	}

	public void updateCart(Cart cart) {
		// TODO Auto-generated method stub
		CartExample example = new CartExample();
		Criteria criteria = example.createCriteria();
		criteria.andUidEqualTo(cart.getUid()).andSidEqualTo(cart.getSid());
		cartMapper.updateByExampleSelective(cart, example);
	}

	public Cart getCartByUidandSid(Integer uid, Integer sid) {
		Cart cart = new Cart();
		cart.setUid(uid);
		cart.setSid(sid);
		return cartMapper.selectOne(cart);
	}

	public void deleteCartByUidandSid(Integer uid, Integer sid) {
		CartExample example = new CartExample();
		Criteria criteria = example.createCriteria();
		criteria.andUidEqualTo(uid).andSidEqualTo(sid);
		cartMapper.deleteByExample(example);
	}

	@Override
	public Cart selectById(Integer cid) {
		Cart cart = cartMapper.selectByPrimaryKey(cid);
		return cart;
	}

}
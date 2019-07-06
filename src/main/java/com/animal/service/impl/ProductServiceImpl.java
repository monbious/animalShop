package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.ProductMapper;
import com.animal.model.Product;
import com.animal.service.IProductService;

@Service
public class ProductServiceImpl implements IProductService {

	@Autowired
	private ProductMapper productMapper;

	public List<Product> search() {
		// TODO Auto-generated method stub
		return productMapper.search();
	}

	public int add(Product products) {
		// TODO Auto-generated method stub
		return productMapper.add(products);
	}

	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return productMapper.delete(id);
	}

	public Product selectById(Integer id) {
		// TODO Auto-generated method stub
		return productMapper.selectById(id);
	}

	public int update(Product products) {
		// TODO Auto-generated method stub
		return productMapper.update(products);
	}

	public int deleteMany(int[] idMany) {
		// TODO Auto-generated method stub
		return productMapper.deleteMany(idMany);
	}

	public List<Product> selectByCid(Integer cid) {
		// TODO Auto-generated method stub
		return productMapper.selectByCid(cid);
	}

	@Override
	public List<Product> selectAllByLike(String query) {
		List<Product> pros = productMapper.selectAllByLike("%" + query + "%");
		return pros;
	}

}

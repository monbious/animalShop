package com.animal.service;

import java.util.List;

import com.animal.model.Product;

public interface IProductService {

	public List<Product> search();

	public int add(Product products);

	public int delete(Integer id);

	public Product selectById(Integer id);

	public List<Product> selectByCid(Integer cid);

	public int update(Product products);

	public int deleteMany(int[] idMany);

	List<Product> selectAllByLike(String query);
}

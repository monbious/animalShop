package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.CategoryMapper;
import com.animal.model.Category;
import com.animal.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {

	@Autowired
	private CategoryMapper categoryMapper;

	public List<Category> search() {
		// TODO Auto-generated method stub
		return categoryMapper.search();// 调用categoryDao方法，返回查询结果
	}

	public void insertCategory(Category category) {
		// TODO Auto-generated method stub
		categoryMapper.insert(category);
	}

	public int deleteCategory(int cid) {
		// TODO Auto-generated method stub
		return categoryMapper.deleteCategory(cid);
	}

	public int updateCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryMapper.updateCategory(category);
	}

	public Category findOneCategory(int cid) {
		// TODO Auto-generated method stub
		return categoryMapper.findOneCategory(cid);
	}

	public int selectCategory(int cid) {
		// TODO Auto-generated method stub
		return categoryMapper.selectCategory(cid);
	}

}
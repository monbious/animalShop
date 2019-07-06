package com.animal.service;

import java.util.List;

import com.animal.model.Category;

//业务层的接口
public interface ICategoryService {

	public List<Category> search();

	// 增加一个插入代码
	void insertCategory(Category category);

	// 删除操作
	public int deleteCategory(int cid);

	// 修改操作
	public int updateCategory(Category category);

	// 查询具体的一条数据;根据id查询某一个用户
	public Category findOneCategory(int cid);

	public int selectCategory(int cid);

}
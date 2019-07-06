package com.animal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.animal.model.Category;
import com.animal.model.CategoryExample;

@Mapper
public interface CategoryMapper {
	long countByExample(CategoryExample example);

	int deleteByExample(CategoryExample example);

	int deleteByPrimaryKey(Integer cid);

	void insert(Category record);

	int insertSelective(Category record);

	List<Category> selectByExample(CategoryExample example);

	Category selectByPrimaryKey(Integer cid);

	int updateByExampleSelective(@Param("record") Category record, @Param("example") CategoryExample example);

	int updateByExample(@Param("record") Category record, @Param("example") CategoryExample example);

	int updateByPrimaryKeySelective(Category record);

	int updateByPrimaryKey(Category record);

	List<Category> search();

	int deleteCategory(int cid);

	int selectCategory(int cid);

	// 修改操作
	int updateCategory(Category category);

	// 查询具体的一条数据;根据id查询某一个用户
	Category findOneCategory(int cid);
}
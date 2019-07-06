package com.animal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.animal.model.Product;
import com.animal.model.ProductExample;

@Mapper
public interface ProductMapper {
	long countByExample(ProductExample example);

	int deleteByExample(ProductExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Product record);

	int insertSelective(Product record);

	List<Product> selectByExample(ProductExample example);

	Product selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

	int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);

	int updateByPrimaryKeySelective(Product record);

	int updateByPrimaryKey(Product record);

	List<Product> search();

	int add(Product products);

	int delete(Integer id);

	Product selectById(Integer id);

	List<Product> selectByCid(Integer cid);

	int update(Product products);

	int deleteMany(int[] idMany);

	List<Product> selectAllByLike(@Param("q") String query);
}
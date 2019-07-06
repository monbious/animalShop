package com.animal.service;

import java.util.List;

import com.animal.model.User;

public interface IUserService {

	public List<User> search();

	public int insertUser(User user);

	public int deleteUser(int id);

	public int updateUser(User user);

	// 查询单条数据
	public User findOneUser(int id);

	public User findOne(User user);

}
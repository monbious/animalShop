package com.animal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.dao.UserMapper;
import com.animal.model.User;
import com.animal.service.IUserService;

@Service("userService")
public class UserService implements IUserService {

	@Autowired
	private UserMapper userMapper;

	public List<User> search() {
		return userMapper.search();
	}

	public int insertUser(User user) {
		return userMapper.insertUser(user);
	}

	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return userMapper.deleteUser(id);
	}

	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateUser(user);
	}

	public User findOneUser(int id) {
		// TODO Auto-generated method stub
		return userMapper.findOneUser(id);
	}

	public User findOne(User user) {
		// TODO Auto-generated method stub
		return userMapper.findOne(user);
	}

}
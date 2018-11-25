package com.gx.service.user.impl;import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gx.dao.UserMapper;
import com.gx.po.User;
import com.gx.service.user.UserService;
import com.gx.vo.UserVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-16 下午8:00:56 
 * @version 1.0 
 */
@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User login(String name, String pwd) {
		// TODO Auto-generated method stub
		return this.userMapper.login(name, pwd);
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return this.userMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<UserVo> findAll() {
		// TODO Auto-generated method stub
		return this.userMapper.findQueryAll();
	}

	@Override
	public List<UserVo> findbyName(String name) {
		// TODO Auto-generated method stub
		return this.userMapper.findQueryByName(name);
	}

	@Override
	public User findbyID(int id) {
		// TODO Auto-generated method stub
		return this.findById(id);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.userMapper.updateByPrimaryKey(user);
	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		this.userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		this.userMapper.insert(user);
	}

}

package com.gx.service.user;
import java.util.List;

import com.gx.po.User;
import com.gx.vo.UserVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-16 上午9:39:22 
 * @version 1.0 
 */
public interface UserService {
	public User login(String name,String pwd);
	
	public User findById(int id);
	
	public List<UserVo> findAll();
	
	public List<UserVo> findbyName(String name);
	
	public void saveUser(User user);
	
	public User findbyID(int id);
	
	public void updateUser(User user);
	
	public void deleteUser(int id);
}

package com.gx.service.role;import java.util.List;

import com.gx.po.Role;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 上午9:47:52 
 * @version 1.0 
 */
public interface RoleService {

	public List<Role> findAll();
	
	public List<Role> findByName(String name);
	
	public void saveRole(Role role);
	
	public Role findById(int id);
	
	public void updateRole(Role role);
	
	public void deleteRole(int id);
}

package com.gx.vo;

import com.gx.po.User;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-15 下午8:39:43 
 * @version 1.0 
 */
public class UserVo extends User{
	private String rolename;
	
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
	
}

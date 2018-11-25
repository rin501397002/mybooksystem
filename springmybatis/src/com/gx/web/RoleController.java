package com.gx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gx.core.BaseController;
import com.gx.po.Role;
import com.gx.service.role.RoleService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 上午8:15:28 
 * @version 1.0 
 */
@Controller
@RequestMapping("/roleController")
public class RoleController extends BaseController{
	@Autowired
	private RoleService roleService;
	
	private Role role;
	private String ids;

	@RequestMapping("/list")
	public String findAll(){
		List<Role> roles=this.roleService.findAll();
		request.setAttribute("roless", roles);
		return "/role/role_list";
	}
	@RequestMapping("/listByname")
	public String findByName(Role role1){
		List<Role> roles=this.roleService.findByName(role1.getRolename());
		request.setAttribute("roless", roles);
		return "/role/role_list";
	}
	@RequestMapping("/toadd")
	public String toadd(){
		
		return "/role/role_add";
	}
	@RequestMapping("/add")
	public String add(Role role1){
		this.roleService.saveRole(role1);
		return findAll();
	}
	@RequestMapping("/toupdate")
	public String toupdate(Role role1){
		role =this.roleService.findById(role1.getRoleid());
		request.setAttribute("roles", role);
		return "/role/role_update";
	}
	@RequestMapping("/update")
	public String update(Role role1){
		this.roleService.updateRole(role1);
		return findAll();
	}
	@RequestMapping("/delete")
	public String delete(Role role1){
		this.roleService.deleteRole(role1.getRoleid());
		return findAll();
	}
	@RequestMapping("/delitem")
	public String delitem(String ids){
		String[] sts=ids.split(",");
		for (String sid:sts) {
			this.roleService.deleteRole(Integer.parseInt(sid));
		}
		return findAll();
	}
	
	@RequestMapping("/toview")
	public String toview(Role role1){
		role =this.roleService.findById(role1.getRoleid());
		request.setAttribute("roles", role);
		return "/role/role_view";
	}
	
	
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	
	
}

package com.gx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gx.core.BaseController;
import com.gx.po.Role;
import com.gx.po.User;
import com.gx.service.role.RoleService;
import com.gx.service.user.UserService;
import com.gx.vo.UserVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-16 上午9:54:07 
 * @version 1.0 
 */
@Controller
@RequestMapping("/userController")
public class UserController extends BaseController{
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	
	private User user;
	private String ids;
	
	@RequestMapping("/findById")
	public String findById(Model model){
		User user=this.userService.findById(1);
		model.addAttribute("vo", user);
		return "/main/main";
	}
	
	@RequestMapping("/login")
	public String login(String username,String password){
		boolean b=false;
		User user=this.userService.login(username, password);
		if(user!=null){
			b=true;
			request.getSession().setAttribute("pfUser", user);
		}else {
			b=false;
		}
		
		if(b){
			return "/main/success";
		}else {
			return "/main/login_false";
		}
		
	}
	@RequestMapping("/list")
	public String queryAll(){
		List<UserVo> userVos=this.userService.findAll();
		request.setAttribute("Users", userVos);
		return "/user/user_list";
	}
	
	@RequestMapping("/listByname")
	public String queryByName(User user){
		List<UserVo> userVos=this.userService.findbyName(user.getUsername());
		request.setAttribute("Users", userVos);
		return "/user/user_list";
	}
	
	@RequestMapping("/toadd")
	public String toadd(){
		List<Role> roles=this.roleService.findAll();
		request.setAttribute("Roles", roles);
		return "/user/user_add";
	}
	
	@RequestMapping("/add")
	public String add(User user){
		this.userService.saveUser(user);
		return queryAll();
	}
	
	@RequestMapping("/toupdate")
	public String toupdate(User user){
		user=this.userService.findById(user.getUserid());
		List<Role> roles=this.roleService.findAll();
		request.setAttribute("roless", roles);
		request.setAttribute("users", user);
		return "/user/user_update";
	}
	
	@RequestMapping("/update")
	public String update(User user){
		this.userService.updateUser(user);
		return queryAll();
	}
	
	@RequestMapping("/delete")
	public String delete(User user){
		this.userService.deleteUser(user.getUserid());
		return queryAll();
	}
	
	@RequestMapping("/delitem")
	public String delitem(String ids){
		String[] sts=ids.split(",");
		for (String sid:sts) {
			this.userService.deleteUser(Integer.parseInt(sid));
		}
		return queryAll();
	}
	
	@RequestMapping("/toview")
	public String toview(User user){
		user=this.userService.findById(user.getUserid());
		request.setAttribute("users", user);
		return "/user/user_view";
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	
	
}

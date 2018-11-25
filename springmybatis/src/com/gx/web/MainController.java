package com.gx.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-16 下午5:24:09 
 * @version 1.0 
 */
@Controller
@RequestMapping("/mainController")
public class MainController {
	
	@RequestMapping("/top")
	public String top(){
		return "/main/top";
	}
	
	@RequestMapping("/menu")
	public String menu(){
		return "/main/menu";
	}
	
	@RequestMapping("/center")
	public String center(){
		return "/main/center";
	}
}

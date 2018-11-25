package com.gx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gx.core.BaseController;
import com.gx.po.Booktype;
import com.gx.service.booktype.BooktypeService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午5:06:00 
 * @version 1.0 
 */
@Controller
@RequestMapping("/booktypeController")
public class BooktypeController extends BaseController{
	@Autowired
	private BooktypeService booktypeService;
	
	
	@RequestMapping("/list")
	public String findAll(){
		List<Booktype> booktypes=this.booktypeService.findAll();
		request.setAttribute("booktypes", booktypes);
		return "/booktype/booktype_list";
	}
	@RequestMapping("/listByname")
	public String findByname(Booktype booktype){
		List<Booktype> booktypes=this.booktypeService.findByName(booktype.getBooktypename());
		request.setAttribute("booktypes", booktypes);
		return "/booktype/booktype_list";
	}
	@RequestMapping("/toadd")
	public String toadd(){
		
		return "/booktype/booktype_add";
	}
	@RequestMapping("/add")
	public String add(Booktype booktype){
		this.booktypeService.saveBooktype(booktype);
		return findAll();
	}
	@RequestMapping("/toupdate")
	public String toupdate(Booktype booktype){
		booktype=this.booktypeService.findById(booktype.getBooktypeid());
		request.setAttribute("booktypea", booktype);
		return "/booktype/booktype_update";
	}
	@RequestMapping("/update")
	public String update(Booktype booktype){
		this.booktypeService.updateBooktype(booktype);
		return findAll();
	}
	@RequestMapping("/delete")
	public String delete(Booktype booktype){
		this.booktypeService.deletBooktype(booktype.getBooktypeid());
		return findAll();
	}
	@RequestMapping("/delitem")
	public String delitem(String ids){
		String[] sts=ids.split(",");
		for (String sid:sts) {
			this.booktypeService.deletBooktype(Integer.parseInt(sid));
		}
		return findAll();
	}
	@RequestMapping("/toview")
	public String toview(Booktype booktype){
		booktype=this.booktypeService.findById(booktype.getBooktypeid());
		request.setAttribute("booktypea", booktype);
		return "/booktype/booktype_view";
	}
}

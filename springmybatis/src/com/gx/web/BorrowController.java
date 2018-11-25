package com.gx.web;import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gx.core.BaseController;
import com.gx.po.Book;
import com.gx.service.book.BookService;
import com.gx.service.borrow_return.Borrow_returnService;
import com.gx.service.role.RoleService;
import com.gx.service.user.UserService;
import com.gx.vo.BookVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-18 下午5:32:59 
 * @version 1.0 
 */
@Controller
@RequestMapping("/borrowController")
public class BorrowController extends BaseController{
	@Autowired
	private Borrow_returnService borrow_returnService;
	@Autowired
	private BookService bookService;
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	public String findAll(){
		List<BookVo> bookVos=this.bookService.findAll();
		request.setAttribute("books", bookVos);
		return "/borrow_return/book_borrow";
	}
	
	public String fingByName(Book book){
		List<BookVo> bookVos=this.bookService.findByName(book.getBookname());
		request.setAttribute("books", bookVos);
		return "/borrow_return/book_borrow";
	}
	
	public String add(){
		
		return "";
	}
}

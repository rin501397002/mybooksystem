package com.gx.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.gx.core.BaseController;
import com.gx.po.Book;
import com.gx.po.Booktype;
import com.gx.po.Library;
import com.gx.service.book.BookService;
import com.gx.service.booktype.BooktypeService;
import com.gx.service.library.LibraryService;
import com.gx.vo.BookVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午5:06:13 
 * @version 1.0 
 */
@Controller
@RequestMapping("/bookController")
public class BookController extends BaseController {
	@Autowired
	private BookService bookService;
	@Autowired
	private BooktypeService booktypeService;
	@Autowired
	private LibraryService libraryService;
	
	
	@RequestMapping("/list")
	public String findAll(){
		List<BookVo> bookVos=this.bookService.findAll();
		request.setAttribute("books", bookVos);
		return "/book/book_list";
	}
	@RequestMapping("/listByname")
	public String findByname(Book book){
		List<BookVo> bookVos=this.bookService.findByName(book.getBookname());
		request.setAttribute("books", bookVos);
		return "/book/book_list";
	}
	@RequestMapping("/toadd")
	public String toadd(){
		List<Booktype> booktypes=this.booktypeService.findAll();
		List<Library> libraries=this.libraryService.findAll();
		request.setAttribute("booktypesa", booktypes);
		request.setAttribute("librariesa", libraries);
		return "/book/book_add";
	}
	@RequestMapping("/add")
	public String add(Book book){
		book.setEntrydate(new Date());
		this.bookService.saveBook(book);
		return findAll();
	}
	@RequestMapping("/toupdate")
	public String toupdate(Book book){
		book=this.bookService.findById(book.getBookid());
		List<Booktype> booktypes=this.booktypeService.findAll();
		List<Library> libraries=this.libraryService.findAll();
		request.setAttribute("booktypesa", booktypes);
		request.setAttribute("librariesa", libraries);
		request.setAttribute("booka", book);
		return "/book/book_update";
	}
	@RequestMapping("/update")
	public String update(Book book){
		this.bookService.updateBook(book);
		return findAll();
	}
	@RequestMapping("/delete")
	public String delete(Book book){
		this.bookService.deleteBook(book.getBookid());
		return findAll();
	}
	@RequestMapping("/delitem")
	public String delitem(String ids){
		String[] sts=ids.split(",");
		for (String sid:sts) {
			this.bookService.deleteBook(Integer.parseInt(sid));
		}
		return findAll();
	}
	@RequestMapping("/toview")
	public String toview(Book book){
		book=this.bookService.findById(book.getBookid());
		request.setAttribute("booka", book);
		return "/book/book_view";
	}
}

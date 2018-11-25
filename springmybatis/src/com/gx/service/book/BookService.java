package com.gx.service.book;import java.util.List;

import com.gx.po.Book;
import com.gx.vo.BookVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:35:16 
 * @version 1.0 
 */
public interface BookService {

	public List<BookVo> findAll();
	
	public List<BookVo> findByName(String name);
	
	public void saveBook(Book book);
	
	public Book findById(int id);
	
	public void updateBook(Book book);
	
	public void deleteBook(int id);
}

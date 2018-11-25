package com.gx.service.book.impl;import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.gx.dao.BookMapper;
import com.gx.po.Book;
import com.gx.service.book.BookService;
import com.gx.vo.BookVo;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:35:30 
 * @version 1.0 
 */
@Transactional
@Service("bookService")
public class BookServiceImpl implements BookService {
	@Autowired
	private BookMapper bookMapper;

	@Override
	public List<BookVo> findAll() {
		// TODO Auto-generated method stub
		return this.bookMapper.findAll();
	}

	@Override
	public List<BookVo> findByName(String name) {
		// TODO Auto-generated method stub
		return this.bookMapper.findByName(name);
	}

	@Override
	public void saveBook(Book book) {
		// TODO Auto-generated method stub
		this.bookMapper.insert(book);
	}

	@Override
	public Book findById(int id) {
		// TODO Auto-generated method stub
		return this.bookMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateBook(Book book) {
		// TODO Auto-generated method stub
		this.bookMapper.updateByPrimaryKey(book);
	}

	@Override
	public void deleteBook(int id) {
		// TODO Auto-generated method stub
		this.bookMapper.deleteByPrimaryKey(id);
	}

}

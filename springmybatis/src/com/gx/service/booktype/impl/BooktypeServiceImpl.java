package com.gx.service.booktype.impl;import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gx.dao.BooktypeMapper;
import com.gx.po.Booktype;
import com.gx.service.booktype.BooktypeService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:35:01 
 * @version 1.0 
 */
@Transactional
@Service("booktypeService")
public class BooktypeServiceImpl implements BooktypeService {
	@Autowired
	private BooktypeMapper booktypeMapper;

	@Override
	public List<Booktype> findAll() {
		// TODO Auto-generated method stub
		return this.booktypeMapper.findAll();
	}

	@Override
	public List<Booktype> findByName(String name) {
		// TODO Auto-generated method stub
		return this.booktypeMapper.findByName(name);
	}

	@Override
	public void saveBooktype(Booktype booktype) {
		// TODO Auto-generated method stub
		this.booktypeMapper.insert(booktype);
	}

	@Override
	public Booktype findById(int id) {
		// TODO Auto-generated method stub
		return this.booktypeMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateBooktype(Booktype booktype) {
		// TODO Auto-generated method stub
		this.booktypeMapper.updateByPrimaryKey(booktype);
	}

	@Override
	public void deletBooktype(int id) {
		// TODO Auto-generated method stub
		this.booktypeMapper.deleteByPrimaryKey(id);
	}

}

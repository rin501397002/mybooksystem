package com.gx.service.borrow_return.impl;import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gx.dao.BorrowrecordMapper;
import com.gx.po.Book;
import com.gx.po.Borrowrecord;
import com.gx.service.borrow_return.Borrow_returnService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:34:29 
 * @version 1.0 
 */
@Transactional
@Service("borrow_returnService")
public class Borrow_returnServiceImpl implements Borrow_returnService {
	@Autowired
	private BorrowrecordMapper borrowrecordMapper;
	
	@Override
	public void save(Borrowrecord borrowrecord) {
		// TODO Auto-generated method stub
		this.borrowrecordMapper.insert(borrowrecord);
	}

	@Override
	public Book findBooknum(int id) {
		// TODO Auto-generated method stub
		return this.borrowrecordMapper.findBooknum(id);
	}

	@Override
	public int findUserborrownum(int id) {
		// TODO Auto-generated method stub
		return this.borrowrecordMapper.findUserborrownum(id);
	}

	@Override
	public int findUserOwnnum(int id) {
		// TODO Auto-generated method stub
		return this.borrowrecordMapper.findUserOwnnum(id);
	}

	@Override
	public int findBooklose(int id) {
		// TODO Auto-generated method stub
		return this.borrowrecordMapper.findBooklose(id);
	}

	@Override
	public int findBookBorrow(int id) {
		// TODO Auto-generated method stub
		return this.borrowrecordMapper.findBookBorrow(id);
	}

}

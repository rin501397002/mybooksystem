package com.gx.service.borrow_return;

import com.gx.po.Book;
import com.gx.po.Borrowrecord;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:34:08 
 * @version 1.0 
 */
public interface Borrow_returnService {

	public void save(Borrowrecord borrowrecord);
	
	//查询图书总数
  	public Book findBooknum(int id);

  	// 查询用户可借图书数
  	public int findUserborrownum(int id);
  	
  	//用户已借图书数
  	public int findUserOwnnum(int id);

  	// 查询丢失图书数
  	public int findBooklose(int id);

  	// 查询已借图书数
  	public int findBookBorrow(int id);
}

package com.gx.service.booktype;import java.util.List;

import com.gx.po.Booktype;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:34:48 
 * @version 1.0 
 */

public interface BooktypeService {

	public List<Booktype> findAll();
	
	public List<Booktype> findByName(String name);
	
	public void saveBooktype(Booktype booktype);
	
	public Booktype findById(int id);
	
	public void updateBooktype(Booktype booktype);
	
	public void deletBooktype(int id);
}

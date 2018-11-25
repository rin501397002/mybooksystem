package com.gx.dao;

import org.apache.ibatis.annotations.Param;

import com.gx.po.Book;
import com.gx.po.Borrowrecord;

public interface BorrowrecordMapper {
    int deleteByPrimaryKey(Integer borrowid);

    int insert(Borrowrecord record);

    int insertSelective(Borrowrecord record);

    Borrowrecord selectByPrimaryKey(Integer borrowid);

    int updateByPrimaryKeySelective(Borrowrecord record);

    int updateByPrimaryKey(Borrowrecord record);
    
    
    //查询图书总数
  	public Book findBooknum(@Param("id")int id);

  	// 查询用户可借图书数
  	public int findUserborrownum(@Param("id")int id);
  	
  	//用户已借图书数
  	public int findUserOwnnum(@Param("id")int id);

  	// 查询丢失图书数
  	public int findBooklose(@Param("id")int id);

  	// 查询已借图书数
  	public int findBookBorrow(@Param("id")int id);

}
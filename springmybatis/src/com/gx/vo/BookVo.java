package com.gx.vo;import com.gx.po.Book;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-18 上午9:31:46 
 * @version 1.0 
 */
public class BookVo extends Book{
	private String booktypename;
	private String libraryname;
	
	
	public String getBooktypename() {
		return booktypename;
	}
	public void setBooktypename(String booktypename) {
		this.booktypename = booktypename;
	}
	public String getLibraryname() {
		return libraryname;
	}
	public void setLibraryname(String libraryname) {
		this.libraryname = libraryname;
	}
	
	
}

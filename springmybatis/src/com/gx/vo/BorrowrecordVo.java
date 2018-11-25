package com.gx.vo;

import java.util.Date;

import com.gx.po.Borrowrecord;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-18 下午4:59:33 
 * @version 1.0 
 */
public class BorrowrecordVo extends Borrowrecord{
	//User
	private String libraryname;
	private String booktypename;
	private String booknumber;//图书编号
	private String bookname;
	private Double price;
	//Book
	private String borrownumber;//借书证号
	private String username;
	private Date maturitydate;//到期日期
	//Fine
	private Double finemoney;//罚款
	
	private Date nowday;
	private int  cqdate;
	public String getLibraryname() {
		return libraryname;
	}
	public void setLibraryname(String libraryname) {
		this.libraryname = libraryname;
	}
	public String getBooktypename() {
		return booktypename;
	}
	public void setBooktypename(String booktypename) {
		this.booktypename = booktypename;
	}
	public String getBooknumber() {
		return booknumber;
	}
	public void setBooknumber(String booknumber) {
		this.booknumber = booknumber;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getBorrownumber() {
		return borrownumber;
	}
	public void setBorrownumber(String borrownumber) {
		this.borrownumber = borrownumber;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getMaturitydate() {
		return maturitydate;
	}
	public void setMaturitydate(Date maturitydate) {
		this.maturitydate = maturitydate;
	}
	public Double getFinemoney() {
		return finemoney;
	}
	public void setFinemoney(Double finemoney) {
		this.finemoney = finemoney;
	}
	public Date getNowday() {
		return nowday;
	}
	public void setNowday(Date nowday) {
		this.nowday = nowday;
	}
	public int getCqdate() {
		return cqdate;
	}
	public void setCqdate(int cqdate) {
		this.cqdate = cqdate;
	}
	
	
}

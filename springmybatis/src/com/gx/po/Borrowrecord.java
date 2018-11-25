package com.gx.po;

import java.util.Date;

public class Borrowrecord {
    private Integer borrowid;

    private Integer userid;

    private Integer bookid;

    private Date borrowdate;

    private Date returndate;

    private Integer ifreturn;

    private Integer renewtime;

    private Integer ifovertime;

    private Integer borrowstate;

    public Integer getBorrowid() {
        return borrowid;
    }

    public void setBorrowid(Integer borrowid) {
        this.borrowid = borrowid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public Date getBorrowdate() {
        return borrowdate;
    }

    public void setBorrowdate(Date borrowdate) {
        this.borrowdate = borrowdate;
    }

    public Date getReturndate() {
        return returndate;
    }

    public void setReturndate(Date returndate) {
        this.returndate = returndate;
    }

    public Integer getIfreturn() {
        return ifreturn;
    }

    public void setIfreturn(Integer ifreturn) {
        this.ifreturn = ifreturn;
    }

    public Integer getRenewtime() {
        return renewtime;
    }

    public void setRenewtime(Integer renewtime) {
        this.renewtime = renewtime;
    }

    public Integer getIfovertime() {
        return ifovertime;
    }

    public void setIfovertime(Integer ifovertime) {
        this.ifovertime = ifovertime;
    }

    public Integer getBorrowstate() {
        return borrowstate;
    }

    public void setBorrowstate(Integer borrowstate) {
        this.borrowstate = borrowstate;
    }
}
package com.gx.po;

public class Role {
    private Integer roleid;

    private String rolename;

    private String remark;

    private Integer ifmanager;

    private Integer borrowday;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getIfmanager() {
        return ifmanager;
    }

    public void setIfmanager(Integer ifmanager) {
        this.ifmanager = ifmanager;
    }

    public Integer getBorrowday() {
        return borrowday;
    }

    public void setBorrowday(Integer borrowday) {
        this.borrowday = borrowday;
    }
}
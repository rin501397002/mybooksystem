package com.gx.po;

public class User {
    private Integer userid;
    private String username;
    private Integer sex;
    private String password;
    private String borrownumber;
    private String mailbox;
    private String telephone;
    private Boolean ifborrow;
    private Integer number;
    private Integer role;
    
    public User(Integer userid, String username, Integer sex, String password, String borrownumber, String mailbox, String telephone, Boolean ifborrow, Integer number, Integer role) {
        this.userid = userid;
        this.username = username;
        this.sex = sex;
        this.password = password;
        this.borrownumber = borrownumber;
        this.mailbox = mailbox;
        this.telephone = telephone;
        this.ifborrow = ifborrow;
        this.number = number;
        this.role = role;
    }

    public User() {
        super();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getBorrownumber() {
        return borrownumber;
    }

    public void setBorrownumber(String borrownumber) {
        this.borrownumber = borrownumber == null ? null : borrownumber.trim();
    }

    public String getMailbox() {
        return mailbox;
    }

    public void setMailbox(String mailbox) {
        this.mailbox = mailbox == null ? null : mailbox.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public Boolean getIfborrow() {
        return ifborrow;
    }

    public void setIfborrow(Boolean ifborrow) {
        this.ifborrow = ifborrow;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }
}
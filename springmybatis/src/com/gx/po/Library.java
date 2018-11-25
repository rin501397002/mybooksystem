package com.gx.po;

public class Library {
    private Integer libraryid;

    private String libraryname;

    public Integer getLibraryid() {
        return libraryid;
    }

    public void setLibraryid(Integer libraryid) {
        this.libraryid = libraryid;
    }

    public String getLibraryname() {
        return libraryname;
    }

    public void setLibraryname(String libraryname) {
        this.libraryname = libraryname == null ? null : libraryname.trim();
    }
}
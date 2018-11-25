package com.gx.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.gx.po.Booktype;

public interface BooktypeMapper {
    int deleteByPrimaryKey(Integer booktypeid);

    int insert(Booktype record);

    int insertSelective(Booktype record);

    Booktype selectByPrimaryKey(Integer booktypeid);

    int updateByPrimaryKeySelective(Booktype record);

    int updateByPrimaryKey(Booktype record);
    
    List<Booktype> findAll();
    
    List<Booktype> findByName(@Param("name")String name);
}
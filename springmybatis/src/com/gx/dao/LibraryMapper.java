package com.gx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gx.po.Library;

public interface LibraryMapper {
    int deleteByPrimaryKey(Integer libraryid);

    int insert(Library record);

    int insertSelective(Library record);

    Library selectByPrimaryKey(Integer libraryid);

    int updateByPrimaryKeySelective(Library record);

    int updateByPrimaryKey(Library record);
    
    List<Library> findAll();
    
    List<Library> findByName(@Param("name")String name);
}
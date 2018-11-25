package com.gx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.gx.po.User;
import com.gx.vo.UserVo;

@Repository(value="userMapper")
public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    public List<UserVo> findAllVo();
    
    public UserVo findUserVoById(@Param("id")int id,@Param("name")String name);
    
    public List<UserVo> findUserVo(@Param("vo") UserVo userVo);
    
    public User login(@Param("username")String username,@Param("password")String password);
    
    List<UserVo> findQueryAll();
    
    List<UserVo> findQueryByName(@Param("name")String name);
    
}
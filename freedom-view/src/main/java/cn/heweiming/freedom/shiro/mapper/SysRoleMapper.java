package cn.heweiming.freedom.shiro.mapper;

import java.util.List;

import cn.heweiming.freedom.shiro.model.SysRole;

public interface SysRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRole record);

    SysRole selectByPrimaryKey(Integer id);

    List<SysRole> selectAll();

    int updateByPrimaryKey(SysRole record);
}
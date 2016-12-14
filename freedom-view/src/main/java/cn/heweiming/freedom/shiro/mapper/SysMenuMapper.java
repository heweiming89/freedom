package cn.heweiming.freedom.shiro.mapper;

import java.util.List;

import cn.heweiming.freedom.shiro.model.SysMenu;

public interface SysMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysMenu record);

    SysMenu selectByPrimaryKey(Integer id);

    List<SysMenu> selectAll();

    int updateByPrimaryKey(SysMenu record);
}
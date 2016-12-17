package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysMenu;
import java.util.List;

public interface SysMenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysMenu record);

    SysMenu selectByPrimaryKey(Integer id);

    List<SysMenu> selectAll();

    int updateByPrimaryKey(SysMenu record);
}
package cn.heweiming.freedom.shiro.mapper;

import java.util.List;

import cn.heweiming.freedom.shiro.model.SysPermissions;

public interface SysPermissionsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysPermissions record);

    SysPermissions selectByPrimaryKey(Integer id);

    List<SysPermissions> selectAll();

    int updateByPrimaryKey(SysPermissions record);
}
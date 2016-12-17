package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysPermissions;
import java.util.List;

public interface SysPermissionsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysPermissions record);

    SysPermissions selectByPrimaryKey(Integer id);

    List<SysPermissions> selectAll();

    int updateByPrimaryKey(SysPermissions record);
}
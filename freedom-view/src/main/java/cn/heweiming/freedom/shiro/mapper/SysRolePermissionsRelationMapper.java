package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysRolePermissionsRelation;
import java.util.List;

public interface SysRolePermissionsRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRolePermissionsRelation record);

    SysRolePermissionsRelation selectByPrimaryKey(Integer id);

    List<SysRolePermissionsRelation> selectAll();

    int updateByPrimaryKey(SysRolePermissionsRelation record);
}
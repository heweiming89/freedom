package cn.heweiming.freedom.shiro.mapper;

import java.util.List;

import cn.heweiming.freedom.shiro.model.SysRolePermissionsRelation;

public interface SysRolePermissionsRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRolePermissionsRelation record);

    SysRolePermissionsRelation selectByPrimaryKey(Integer id);

    List<SysRolePermissionsRelation> selectAll();

    int updateByPrimaryKey(SysRolePermissionsRelation record);
}
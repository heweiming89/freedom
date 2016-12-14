package cn.heweiming.freedom.shiro.mapper;

import java.util.List;

import cn.heweiming.freedom.shiro.model.SysUserRoleRelation;

public interface SysUserRoleRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysUserRoleRelation record);

    SysUserRoleRelation selectByPrimaryKey(Integer id);

    List<SysUserRoleRelation> selectAll();

    int updateByPrimaryKey(SysUserRoleRelation record);
}
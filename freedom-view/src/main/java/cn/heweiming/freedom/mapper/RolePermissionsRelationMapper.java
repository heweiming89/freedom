package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.RolePermissionsRelation;
import java.util.List;

public interface RolePermissionsRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RolePermissionsRelation record);

    RolePermissionsRelation selectByPrimaryKey(Integer id);

    List<RolePermissionsRelation> selectAll();

    int updateByPrimaryKey(RolePermissionsRelation record);
}
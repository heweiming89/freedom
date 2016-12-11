package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.UserRoleRelations;
import java.util.List;

public interface UserRoleRelationsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRoleRelations record);

    UserRoleRelations selectByPrimaryKey(Integer id);

    List<UserRoleRelations> selectAll();

    int updateByPrimaryKey(UserRoleRelations record);
}
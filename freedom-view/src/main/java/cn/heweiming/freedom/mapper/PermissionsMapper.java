package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.Permissions;
import java.util.List;

public interface PermissionsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Permissions record);

    Permissions selectByPrimaryKey(Integer id);

    List<Permissions> selectAll();

    int updateByPrimaryKey(Permissions record);
}
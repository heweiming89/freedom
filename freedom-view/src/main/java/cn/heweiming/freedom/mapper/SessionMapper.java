package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.Session;
import java.util.List;

public interface SessionMapper {
    int deleteByPrimaryKey(String id);

    int insert(Session record);

    Session selectByPrimaryKey(String id);

    List<Session> selectAll();

    int updateByPrimaryKey(Session record);
}
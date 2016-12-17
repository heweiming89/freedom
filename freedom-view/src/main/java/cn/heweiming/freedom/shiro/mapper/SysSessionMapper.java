package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysSession;
import java.util.List;

public interface SysSessionMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysSession record);

    SysSession selectByPrimaryKey(String id);

    List<SysSession> selectAll();

    int updateByPrimaryKey(SysSession record);
}
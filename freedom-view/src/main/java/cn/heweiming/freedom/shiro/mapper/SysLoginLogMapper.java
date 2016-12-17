package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysLoginLog;
import java.util.List;

public interface SysLoginLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysLoginLog record);

    SysLoginLog selectByPrimaryKey(Integer id);

    List<SysLoginLog> selectAll();

    int updateByPrimaryKey(SysLoginLog record);
}
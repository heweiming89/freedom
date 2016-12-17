package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysOperationLog;
import java.util.List;

public interface SysOperationLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysOperationLog record);

    SysOperationLog selectByPrimaryKey(Integer id);

    List<SysOperationLog> selectAll();

    int updateByPrimaryKey(SysOperationLog record);
}
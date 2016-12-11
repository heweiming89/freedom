package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.OperationLog;
import java.util.List;

public interface OperationLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OperationLog record);

    OperationLog selectByPrimaryKey(Integer id);

    List<OperationLog> selectAll();

    int updateByPrimaryKey(OperationLog record);
}
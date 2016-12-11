package cn.heweiming.freedom.mapper;

import cn.heweiming.freedom.model.LoginLog;
import java.util.List;

public interface LoginLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LoginLog record);

    LoginLog selectByPrimaryKey(Integer id);

    List<LoginLog> selectAll();

    int updateByPrimaryKey(LoginLog record);
}
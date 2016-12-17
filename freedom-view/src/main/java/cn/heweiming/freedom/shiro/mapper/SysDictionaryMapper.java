package cn.heweiming.freedom.shiro.mapper;

import cn.heweiming.freedom.shiro.model.SysDictionary;
import java.util.List;

public interface SysDictionaryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysDictionary record);

    SysDictionary selectByPrimaryKey(Integer id);

    List<SysDictionary> selectAll();

    int updateByPrimaryKey(SysDictionary record);
}
package cn.heweiming.freedom.shiro.service;

import java.util.List;

import cn.heweiming.freedom.shiro.domain.vo.SysMenuVo;
import cn.heweiming.freedom.shiro.model.SysMenu;
import cn.heweiming.freedom.shiro.model.SysUser;

public interface SysMenuService {

    int deleteByPrimaryKey(Integer id);

    int insert(SysMenu record);

    SysMenu selectByPrimaryKey(Integer id);

    List<SysMenu> selectAll();

    int updateByPrimaryKey(SysMenu record);
    
	List<SysMenuVo> findMenuByUser(SysUser user);
}

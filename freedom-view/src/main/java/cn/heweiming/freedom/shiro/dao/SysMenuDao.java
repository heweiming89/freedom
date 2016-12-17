package cn.heweiming.freedom.shiro.dao;

import java.util.List;

import cn.heweiming.freedom.shiro.domain.vo.SysMenuVo;
import cn.heweiming.freedom.shiro.model.SysUser;

public interface SysMenuDao {

	List<SysMenuVo> findMenuByUser(SysUser user);
	
}

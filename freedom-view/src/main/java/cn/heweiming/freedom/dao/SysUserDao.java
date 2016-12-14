package cn.heweiming.freedom.dao;

import java.util.List;

import cn.heweiming.freedom.model.Menu;
import cn.heweiming.freedom.model.Permissions;
import cn.heweiming.freedom.model.Role;

public interface SysUserDao {

	public List<Role> getRolesByUserId(Integer userId);
	
	public List<Permissions> getPermissionsByUserId(Integer userId);
	
	public List<Menu> getMenuByUserId(Integer userId);
	
}

package cn.heweiming.freedom.shiro.domain.vo;

import java.awt.Menu;
import java.util.List;

import cn.heweiming.freedom.shiro.model.SysMenu;

public class SysMenuVo extends SysMenu {
	
	private List<Menu> subMenuList;

	public List<Menu> getSubMenuList() {
		return subMenuList;
	}

	public void setSubMenuList(List<Menu> subMenuList) {
		this.subMenuList = subMenuList;
	}

}

package cn.heweiming.freedom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.heweiming.freedom.shiro.domain.vo.SysMenuVo;
import cn.heweiming.freedom.shiro.service.SysMenuService;

@Controller
public class ApplicationController {

	@Autowired
	private SysMenuService sysMenuService;

	@RequestMapping(value = "/admin/login")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/admin_login");
		return mav;
	}

	@RequestMapping(value = "/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("/index");
		// List<SysMenu> menus = sysMenuService.selectAll();
		// for (SysMenu sysMenu : menus) {
		// String str = ToStringBuilder.reflectionToString(sysMenu,
		// ToStringStyle.MULTI_LINE_STYLE);
		// System.out.println(str);
		// }
		List<SysMenuVo> menuVos = sysMenuService.findMenuByUser(null);
		for (SysMenuVo sysMenuVo : menuVos) {
			System.out.println(sysMenuVo.getName());
			System.out.println(sysMenuVo.getUrl());
			System.out.println(sysMenuVo.getSubMenuList().size());
			List<SysMenuVo> subMenuList = sysMenuVo.getSubMenuList();
			for (SysMenuVo subMenu : subMenuList) {
				System.out.println(subMenu);
//				System.out.println(subMenu.getName() + "/t" + subMenu.getUrl());
			}

		}
		mav.addObject("menuList", menuVos);
		return mav;
	}

}

package cn.heweiming.freedom.shiro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/sys/menu")
public class SysMenuController {

	@RequestMapping(value = "/")
	public ModelAndView menu() {
		ModelAndView mav = new ModelAndView("/sys/sys_menu");
		return mav;
	}

}

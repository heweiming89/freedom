package cn.heweiming.freedom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SystemController {

	@RequestMapping(value = "/admin/login")
	public ModelAndView adminLogin() {
		ModelAndView mav = new ModelAndView("/adminLogin");
		return mav;
	}

	@RequestMapping(value = "/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("/index");
		return mav;
	}

}

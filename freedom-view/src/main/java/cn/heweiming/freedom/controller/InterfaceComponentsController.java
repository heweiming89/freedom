package cn.heweiming.freedom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/ui")
public class InterfaceComponentsController {

	@RequestMapping(value="/font_awesome")
	public ModelAndView fontawesome(){
		ModelAndView mav = new ModelAndView("/interface_components/font_awesome");
		return mav;
	}
	
	
}

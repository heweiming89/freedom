package cn.heweiming.freedom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.heweiming.freedom.service.ActivitiDemoService;

@Controller
@RequestMapping(value = { "/activiti/demo" })
public class ActivitiDemoController {

	@Autowired
	private ActivitiDemoService activitiDemoService;

	@RequestMapping(value = { "/diagram" })
	@ResponseBody
	public byte[] downloadDiagram() {
		return activitiDemoService.downDiagram();
	}

}

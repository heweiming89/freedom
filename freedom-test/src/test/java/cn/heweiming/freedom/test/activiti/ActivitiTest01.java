package cn.heweiming.freedom.test.activiti;

import java.util.List;
import java.util.Map;

import org.activiti.engine.HistoryService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:applicationContext.xml",
		"classpath*:includes/applicationContext-activiti.xml" })
public class ActivitiTest01 {

	@Autowired
	private RepositoryService repositoryService;

	@Autowired
	private RuntimeService runtimeService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private HistoryService historyService;

	@Autowired
	private ManagementService managementService;

	@Test
//	@Ignore
	public void deployment() {
		Deployment deployment = repositoryService.createDeployment() //
				.addClasspathResource("helloworld.bpmn").name("helloworld").deploy();
		deployment.getId();
		long count = repositoryService.createProcessDefinitionQuery().count();
		System.out.println(deployment.getId());
		System.out.println(count);
	}

	@Test
	public void test() {
		List<Deployment> list = repositoryService.createDeploymentQuery().list();
		for (Deployment deployment : list) {
			System.out.println(deployment);
		}
		System.out.println("----------------");
		List<ProcessDefinition> list2 = repositoryService.createProcessDefinitionQuery().list();
		for (ProcessDefinition processDefinition : list2) {
			System.out.println(processDefinition);
		}
	}

	@Test
//	@Ignore
	public void startProcess() throws Exception {
		Map<String, Object> variables = null;
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("myProcess");
		System.out.println(processInstance);
	}

}

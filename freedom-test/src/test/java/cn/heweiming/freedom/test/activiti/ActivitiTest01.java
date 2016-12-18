package cn.heweiming.freedom.test.activiti;

import java.util.List;

import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.junit.Test;

public class ActivitiTest01 extends ActivitiTest {

	@Test
	// @org.activiti.engine.test.Deployment(resources = { "activititest01.bpmn"
	// })
//	@Transactional(value = "activitiTransactionManager")
	public void testAll() {
		Deployment deploy = repositoryService.createDeployment().addClasspathResource("activititest01.bpmn")
				.addClasspathResource("activititest01.png").name("activititest01").deploy();
		System.out.println(deploy.getId());
		// List<Deployment> list =
		// repositoryService.createDeploymentQuery().list();
		// for (Deployment deployment : list) {
		//
		// }
		// ProcessInstance processInstance =
		// runtimeService.startProcessInstanceByKey("activititest01Id");
		// System.out.println(processInstance);

		// try {
		// taskService.complete("57504");
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
		// String assignee = "李四";
		//
		// List<Task> taskList =
		// taskService.createTaskQuery().taskAssignee(assignee)
		// // .taskCandidateUser("张三")
		// .list();
		// System.out.println("打印任务");
		// for (Task task : taskList) {
		// System.out.println(task);
		// // taskService.claim(taskId, userId);
		// }

	}

	@Test
	// @Ignore
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
	// @Ignore
	public void startProcess() throws Exception {
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("myProcess");
		System.out.println(processInstance);
	}

	@Test
	public void testUser() {
		User user = identityService.newUser("test01");
		user.setEmail("test01@163.com");
		user.setFirstName("test");
		user.setLastName("01");
		user.setPassword("123456");
		identityService.saveUser(user);
	}

	@Test
	public void newGroup() {
		Group group = identityService.newGroup("deptLeader");
		group.setName("部门领导");
		group.setType("");
	}

	@Test
	public void checkUser() {
		User user = identityService.createUserQuery().userId("test01").singleResult();
		System.out.println(ToStringBuilder.reflectionToString(user));
		System.out.println(ToStringBuilder.reflectionToString(user, ToStringStyle.MULTI_LINE_STYLE));
		System.out.println("##########################");
		System.out.println(ToStringBuilder.reflectionToString(user, ToStringStyle.SHORT_PREFIX_STYLE));
		System.out.println("##########################");
		System.out.println(ToStringBuilder.reflectionToString(user, ToStringStyle.SIMPLE_STYLE));
		System.out.println("##########################");
		System.out.println(ToStringBuilder.reflectionToString(user, ToStringStyle.NO_FIELD_NAMES_STYLE));

	}

}

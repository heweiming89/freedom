package cn.heweiming.freedom.test.activiti;

import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:applicationContext.xml" })
public class ActivitiTest {

	@Autowired
	protected RepositoryService repositoryService;

	@Autowired
	protected RuntimeService runtimeService;

	@Autowired
	protected TaskService taskService;

	@Autowired
	protected HistoryService historyService;

	@Autowired
	protected ManagementService managementService;

	@Autowired
	protected IdentityService identityService;

}

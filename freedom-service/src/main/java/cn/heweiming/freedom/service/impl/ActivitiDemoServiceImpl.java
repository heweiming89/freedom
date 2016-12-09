package cn.heweiming.freedom.service.impl;

import java.io.IOException;
import java.io.InputStream;

import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Service;

import cn.heweiming.freedom.service.ActivitiDemoService;
import cn.heweiming.freedom.service.BaseService;

@Service(value = "activitiDemoService")
public class ActivitiDemoServiceImpl extends BaseService implements ActivitiDemoService {

	@Override
	public byte[] downDiagram() {
		byte[] data = null;
		ProcessDefinitionQuery processDefinitionQuery = repositoryService.createProcessDefinitionQuery();
		ProcessDefinition processDefinition = processDefinitionQuery.processDefinitionId("activititest01Id:1:4")
				.singleResult();
		try (InputStream inputStream = repositoryService.getResourceAsStream(processDefinition.getDeploymentId(),
				processDefinition.getDiagramResourceName())) {
			data = IOUtils.toByteArray(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return data;
	}

}

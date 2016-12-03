package cn.heweiming.freedom.controller;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.heweiming.freedom.bean.DataTablesRequest;
import cn.heweiming.freedom.bean.DataTablesResponse;
import cn.heweiming.freedom.bean.Paging;
import cn.heweiming.freedom.bean.Person;
import cn.heweiming.freedom.bean.ResponseObj;
import cn.heweiming.freedom.service.PersonService;
import cn.heweiming.freedom.util.DataTablesUtils;

@Controller
@RequestMapping(value = "/person")
public class PersonController {

	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/paging")
	@ResponseBody
	public DataTablesResponse pagingPerson(DataTablesRequest dtRequest)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		Paging<Person> personPaging = personService.findPersonPaging(dtRequest.getStart(), dtRequest.getLength());
		DataTablesResponse dtResponse = new DataTablesResponse(dtRequest.getDraw());
		DataTablesUtils.hanlerPagingToDtResponse(personPaging, dtResponse);
		List<Person> persons = personPaging.getData();
		List<Map<String, String>> data = new ArrayList<>();
		for (Person person : persons) {
			Map<String, String> personMap = BeanUtils.describe(person);
			personMap.put(DataTablesUtils.DT_RowId, person.getName());
			for (int i = 1; i <= 10; i++) {
				personMap.put("test" + i, UUID.randomUUID().toString().toLowerCase());
			}
			data.add(personMap);
		}
		dtResponse.setData(data);
		return dtResponse;
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	@ResponseBody
	public ResponseObj create(Person person, Map<String, Object> map)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		System.out.println("PersonController.create()");
		Map<String, String> resultMap = BeanUtils.describe(person);
		System.out.println(resultMap);
		System.out.println(map);
		return null;
	}

	@RequestMapping(value = "/", method = RequestMethod.PUT)
	@ResponseBody
	public ResponseObj edit(Person person, Map<String, Object> map)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		System.out.println("PersonController.edit()");
		Map<String, String> resultMap = BeanUtils.describe(person);
		System.out.println(resultMap);
		System.out.println(map);
		return null;
	}

	@RequestMapping(value = "/", method = RequestMethod.DELETE)
	@ResponseBody
	public ResponseObj delete(HttpServletRequest request)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		System.out.println("PersonController.delete()");
		Map<String, String[]> map = request.getParameterMap();
		for (String key : map.keySet()) {
			System.out.println(key + "\t" + Arrays.toString(map.get(key)));
		}
		return null;
	}

}

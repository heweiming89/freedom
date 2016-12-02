package cn.heweiming.freedom.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.heweiming.freedom.bean.DataTablesRequest;
import cn.heweiming.freedom.bean.DataTablesResponse;
import cn.heweiming.freedom.bean.Person;

@Controller
@RequestMapping(value = "/datatables")
public class DataTablesController {

	@RequestMapping(value = "/server/object")
	@ResponseBody
	public DataTablesResponse serverObject(DataTablesRequest reqDto) {
		DataTablesResponse respDto = new DataTablesResponse();
		respDto.setDraw(reqDto.getDraw());
		int size = reqDto.getLength();
		int start = reqDto.getStart();
		// System.out.println(reqDto.getStart());
		int total = 72;
		respDto.setRecordsTotal(total);
		respDto.setRecordsFiltered(total);
		// respDto.setError(String.format("error 测试 %1$tF %1$tT", new Date()));
		List<Person> data = new ArrayList<>(size);

		for (int i = 1; i <= size; i++) {
			int current = start + i;
			if (i > total || current > total) {
				break;
			}
			Person person = new Person();
			person.setAge(current);
			person.setBirthday(new Date());
			person.setGender("性别" + current);
			person.setName("姓名" + current);
			person.setNation("民族" + current);
			person.setWeight(current);
			person.setMobilePhone("手机号码" + current);
			data.add(person);
		}
		respDto.setData(data);
		return respDto;
	}
}

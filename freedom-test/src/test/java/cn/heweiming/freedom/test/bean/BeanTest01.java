package cn.heweiming.freedom.test.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.junit.Test;

import cn.heweiming.freedom.bean.Person;
import cn.heweiming.freedom.util.BeanUtils;

public class BeanTest01 {

	@Test
	public void testMapSwitchObj() throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		Random random = new Random();
		int current = 270;
		Person person = new Person();
		person.setAge(current);
		person.setBirthday(new Date());
		person.setGender("性别" + current);
		person.setName("姓名" + current);
		person.setNation("民族" + current);
		person.setWeight(current);
		person.setMobilePhone("手机号码" + current);
		person.setIncome(random.nextDouble() * 1_000_000_000);
		Map<String, String> map = BeanUtils.describe(person);
		System.out.println(map);
		Person newPerson = new Person();
		BeanUtils.populate(newPerson, map);
		System.out.println(newPerson);
	}

	// public static void premain(String agentArgs, Instrumentation inst)
	// throws ClassNotFoundException, UnmodifiableClassException {
	// ClassDefinition def = new ClassDefinition(TransClass.class, Transformer
	// .getBytesFromFile(Transformer.classNumberReturns2));
	// inst.redefineClasses(new ClassDefinition[] { def });
	// System.out.println("success");
	// }

}

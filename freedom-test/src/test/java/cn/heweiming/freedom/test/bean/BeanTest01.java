package cn.heweiming.freedom.test.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.junit.Test;

import cn.heweiming.freedom.bean.Person;
import cn.heweiming.freedom.enums.Gender;
import cn.heweiming.freedom.util.BeanUtils;

public class BeanTest01 {

	@Test
	public void testMapSwitchObj() throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		Random random = new Random();
		int current = 270;
		Person person = new Person();
		person.setAge(current);
		person.setBirthday(new Date());
		Gender gender = null;
        switch (current % 5) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            gender = Gender.FEMALE.getEnumByCode(String.valueOf(current % 5));
            break;
        default:
            break;
        }
		person.setGender(gender);
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

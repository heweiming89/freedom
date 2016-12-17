package cn.heweiming.freedom.test.joda;

import org.joda.time.DateTime;
import org.junit.Test;

public class JodaTimeTest {

	@Test
	public void test01(){
		DateTime dt = new DateTime();
		// range [0,86399999]
		System.out.println(dt.minusDays(1).withMillisOfDay(0).toDate());
		System.out.println(dt.withMillisOfDay(86399999));
	}
	
	@Test
	public void test02(){
		DateTime dateTime = DateTime.now().secondOfDay().withMinimumValue();
		System.out.println(dateTime.toDate());
		System.out.println(DateTime.now().secondOfDay().withMaximumValue());
	}
	
}

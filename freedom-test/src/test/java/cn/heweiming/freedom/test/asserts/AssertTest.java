package cn.heweiming.freedom.test.asserts;

import org.junit.Test;
import org.springframework.util.Assert;

public class AssertTest {

	@Test
	public void test01(){
		Assert.notNull(null);
	}
}

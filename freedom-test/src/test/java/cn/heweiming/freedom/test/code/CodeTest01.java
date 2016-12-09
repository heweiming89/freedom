package cn.heweiming.freedom.test.code;

import org.apache.commons.lang3.math.NumberUtils;
import org.junit.Test;

import cn.heweiming.freedom.enums.BaseEnum;
import cn.heweiming.freedom.enums.Gender;

public class CodeTest01 {

    @Test
    public void test01() {
        System.out.println(Gender.class.isAssignableFrom(BaseEnum.class));
        System.out.println(BaseEnum.class.isAssignableFrom(Gender.class));
        System.out.println(Enum.class.isAssignableFrom(Gender.class));
    }
    
    @Test
    public void test02(){
    	boolean b1 = NumberUtils.isNumber("3214");
    	boolean b2 = NumberUtils.isDigits("-4321");
    	System.out.println(b1);
    	System.out.println(b2);
    }
}

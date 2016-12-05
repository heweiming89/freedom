package cn.heweiming.freedom.test.code;

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
}

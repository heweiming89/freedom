package cn.heweiming.freedom.converter;

import org.apache.commons.beanutils.Converter;

import cn.heweiming.freedom.enums.BaseEnum;

public class EnumConverter implements Converter {

    @Override
    public <T> T convert(Class<T> type, Object value) {
        System.out.println(type);
        System.out.println(value);
        Object obj = null;
        if (type.isEnum() && BaseEnum.class.isAssignableFrom(type)) {
            System.out.println("是子类");
//            ((Class<Enum>)type).
            
            try {
                
                obj = ((BaseEnum)type.newInstance()).getEnumByCode((String)value);
            } catch (InstantiationException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        } else {
            return null;
        }
        return (T) obj;
    }

}

package cn.heweiming.freedom.converter;

import org.apache.commons.beanutils.Converter;

import cn.heweiming.freedom.enums.BaseEnum;

@SuppressWarnings("rawtypes")
public class EnumConverter implements Converter {

	@Override
	public <T> T convert(Class<T> type, Object value) {
		if (value == null) {
			return null;
		}
		if (type.isEnum() && BaseEnum.class.isAssignableFrom(type)) {
			T[] enumConstants = type.getEnumConstants();
			for (T t : enumConstants) {
				if (((BaseEnum) t).getCode().equals(value)) {
					return t;
				}
			}
			return null;
		} else {
			return null;
		}
	}

}

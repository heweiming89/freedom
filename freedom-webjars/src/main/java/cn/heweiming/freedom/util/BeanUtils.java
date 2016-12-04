package cn.heweiming.freedom.util;

import static cn.heweiming.freedom.common.Constant.DATE_FORMAT_FULL;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;
import org.apache.commons.lang3.time.DateFormatUtils;

import cn.heweiming.freedom.converter.DateConverter;

public class BeanUtils extends org.apache.commons.beanutils.BeanUtils {

	private static BeanUtilsBean beanUtilsBean = new BeanUtilsBean(new ConvertUtilsBean());

	private BeanUtils() {

	}
	
	static {
		ConvertUtils.register(new DateConverter(), Date.class);
	}

	private static class ConvertUtilsBean extends org.apache.commons.beanutils.ConvertUtilsBean {

		@Override
		public String convert(Object value) {
			if (value == null) {
				return null;
			} else if (value.getClass().isArray()) {
				if (Array.getLength(value) < 1) {
					return (null);
				}
				value = Array.get(value, 0);
				if (value == null) {
					return null;
				} else {
					Converter converter = lookup(String.class);
					return (converter.convert(String.class, value));
				}
			} else if (value.getClass() == Date.class) {
				return DateFormatUtils.format((Date) value, DATE_FORMAT_FULL);
			} else {
				Converter converter = lookup(String.class);
				return (converter.convert(String.class, value));
			}
		}

	}

	public static Object cloneBean(Object bean)
			throws IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException {
		return beanUtilsBean.cloneBean(bean);

	}

	public static Map<String, String> describe(Object bean)
			throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		return beanUtilsBean.describe(bean);
	}

}

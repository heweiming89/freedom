package cn.heweiming.freedom.serializer;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

/**
 * 解决Java Long数据转 JavaScript json对象时精度损失问题
 * 
 * @author heweiming
 * @Date 2016-11-18 11:00:33
 *
 */
public class UfmLongSerializer extends JsonSerializer<Long> {

	@Override
	public void serialize(Long value, JsonGenerator gen, SerializerProvider serializers)
			throws IOException, JsonProcessingException {
		if (value == null) {
			gen.writeString("");
		} else {
			gen.writeString(value.toString());
		}
	}

}

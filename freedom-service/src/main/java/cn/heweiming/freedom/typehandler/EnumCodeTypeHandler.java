package cn.heweiming.freedom.typehandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import cn.heweiming.freedom.enums.BaseEnum;

@SuppressWarnings("unused")
public class EnumCodeTypeHandler<E extends Enum<E> & BaseEnum<E>> extends BaseTypeHandler<E> {

	private Class<E> type;
	private final E[] enums;

	public EnumCodeTypeHandler(Class<E> type) {
		if (type == null) {
			throw new IllegalArgumentException("Type argument cannot be null");
		}
		this.type = type;
		this.enums = type.getEnumConstants();
		if (this.enums == null) {
			throw new IllegalArgumentException(type.getSimpleName() + " does not represent an enum type.");
		}
	}

	@Override
	public void setNonNullParameter(PreparedStatement ps, int i, E parameter, JdbcType jdbcType) throws SQLException {
		ps.setString(i, parameter.getCode());

	}

	@Override
	public E getNullableResult(ResultSet rs, String columnName) throws SQLException {
		String code = rs.getString(columnName);
		if (rs.wasNull()) {
			return null;
		} else {
			return enums[0].getEnumByCode(code);
		}
	}

	@Override
	public E getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		String code = rs.getString(columnIndex);
		if (rs.wasNull()) {
			return null;
		} else {
			return enums[0].getEnumByCode(code);
		}
	}

	@Override
	public E getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		String code = cs.getString(columnIndex);
		if (cs.wasNull()) {
			return null;
		} else {
			return enums[0].getEnumByCode(code);
		}
	}

}

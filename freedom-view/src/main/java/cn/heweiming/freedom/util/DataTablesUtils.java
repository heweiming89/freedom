package cn.heweiming.freedom.util;

import cn.heweiming.freedom.bean.DataTablesResponse;
import cn.heweiming.freedom.bean.Paging;

public class DataTablesUtils {

	public static final String DT_RowId = "DT_RowId";

	private DataTablesUtils() {

	}

	public static DataTablesResponse hanlerPagingToDtResponse(Paging<?> paging, DataTablesResponse dtResponse) {
		dtResponse.setRecordsTotal(paging.getTotal());
		dtResponse.setRecordsFiltered(paging.getTotal());
		dtResponse.setData(paging.getData());
		return dtResponse;
	}

}

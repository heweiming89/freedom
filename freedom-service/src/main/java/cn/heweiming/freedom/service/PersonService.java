package cn.heweiming.freedom.service;

import cn.heweiming.freedom.bean.Paging;
import cn.heweiming.freedom.bean.Person;

public interface PersonService {

	Paging<Person> findPersonPaging(int startIndex, int pageSize);

}

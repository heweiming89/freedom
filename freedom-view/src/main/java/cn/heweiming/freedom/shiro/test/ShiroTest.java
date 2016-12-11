package cn.heweiming.freedom.shiro.test;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

public class ShiroTest {

	public void test(){
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		session.setAttribute("someKey", "aValue");
		
		
		
		
		
		
	}
	
	
	
}

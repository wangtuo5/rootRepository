package daohibernateimp;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

public class TestHibernate {
	
	public void testQueryUser() {
		Configuration conf = new Configuration().configure(); // hibernate.cfg.xml
		SessionFactory factory = conf.buildSessionFactory();
		Session session = null;
		Transaction tx = null;

		
			session = factory.openSession();

		Query query = session.createQuery("from Admins u where u.loginname=?");
		query.setParameter(0, "ctx");

		// Iterator<User> it = query.iterate();
		// while (it.hasNext()) {
		// User user = it.next();
		// System.out.println(user.getName() + "," + user.getPwd());
		// }

//		List<User> userList = query.list();
//
//		for (User user : userList) {
//			System.out.println(user.getName() + "," + user.getPwd());
//		}

		session.close();
	
}
}
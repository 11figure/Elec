package junit;


import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

import com.dcfun.elec.domain.ElecText;


public class TestHibernate {

	@Test
	public void save(){
		Configuration configuration = new Configuration();
		configuration.configure();	//������·�� hibernate.cfg.xml��ӳ���ļ�
		
		SessionFactory sf = configuration.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tr = s.beginTransaction();
		
		//���Բ������� �����浽���ݿ�
		ElecText elecText = new ElecText();
		elecText.setTextName("����Hibernate����");
		elecText.setTextDate(new Date());
		elecText.setTextRemark("����hibernate��ע");
		s.save(elecText);
		
		tr.commit();
		s.close();
		
	}
	
}

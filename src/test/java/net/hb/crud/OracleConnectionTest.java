package net.shopping.crud;

import java.sql.Connection;
import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//@RunWith�� JUnit ������ ��ũ�� �׽�Ʈ ���� ����� Ȯ���� �� ����ϴ� ������̼�
//@ContextConfiguration�� �ڵ����� ������� ���ø����̼��� ���ؽ�Ʈ�� �������� ��ġ�� ����
//@RunWith, @ContextConfiguration �ֳ����̼��� ���� �׽�Ʈ �ڵ带 ������ �� �������� �ε��Ƿη� �ϴ� �κ�
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/resources/config/mybatis/dao-context.xml"})

public class OracleConnectionTest {				
		@Inject
		@Autowired
		private DataSource ds;
		
		@Test
		public void dbConnectionTest()  throws Exception{
		  Connection CN=ds.getConnection();
		  System.out.println("DB���Ἲ������ OKOK: " + CN );
		  //CN.close();
		}//end
}//OracleConnectionTest class END

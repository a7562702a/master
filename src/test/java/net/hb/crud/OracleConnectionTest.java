package net.hb.crud;

import java.sql.Connection;
import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//@RunWith은 JUnit 프레임 워크의 테스트 실행 방법을 확장할 때 사용하는 어노테이션
//@ContextConfiguration은 자동으로 만들어줄 애플리케이션의 컨텍스트의 설정파일 위치를 지정
//@RunWith, @ContextConfiguration 애노테이션은 현재 테스트 코드를 실행할 때 스프링이 로딩되로록 하는 부분
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/resources/config/mybatis/dao-context.xml"})

public class OracleConnectionTest {				
		@Inject
		@Autowired
		private DataSource ds;
		
		@Test
		public void dbConnectionTest()  throws Exception{
		  Connection CN=ds.getConnection();
		  System.out.println("DB연결성공성공 OKOK: " + CN );
		  //CN.close();
		}//end
}//OracleConnectionTest class END

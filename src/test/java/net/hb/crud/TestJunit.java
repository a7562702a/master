package net.hb.crud;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


public class TestJunit {
	
  @Test	
  public void dbTest() {
	 try{
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	   String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
	   Connection CN=DriverManager.getConnection(url,"system","1234");
	   System.out.println("db연결성공성공 4-14-화요일 success ~~~");
	}catch(Exception ex){System.out.println("db연결에러:"+ ex);  }	
  }//end
  
}//class end

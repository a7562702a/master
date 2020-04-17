package net.shopping.hello;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class HelloDAO implements HelloDAOImp { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void dbInsert(HelloDTO dto) {
	}//end	
	
	
}//BoardDAO class END









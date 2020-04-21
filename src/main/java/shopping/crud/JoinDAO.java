package shopping.crud;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class JoinDAO {

@Autowired
SqlSessionTemplate temp;
	
public void dbInsert_join(JoinDTO dto) {
	  temp.insert("Join.join_add", dto); 
	}//end
 

}//LoginDAO end

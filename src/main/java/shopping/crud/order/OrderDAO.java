package shopping.crud.order;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO {
@Autowired
SqlSessionTemplate temp;

public void dbInsert(OrderDTO dto) {
	
}//end
}//class end

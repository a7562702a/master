package shopping.crud.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;



@Repository
@Component
public class ProductReviewDAO {

@Autowired
SqlSessionTemplate temp;
	
 	public List<ProductQuestDTO> dbSelect( ){
 		 List<ProductQuestDTO> list=temp.selectList("review.selectAll");
	  return list;
	}//end
 	 
 	

}//LoginDAO end

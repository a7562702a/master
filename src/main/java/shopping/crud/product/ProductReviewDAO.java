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
	
 	public List<ProductReviewDTO> dbSelect(int start, int end){
 		ProductReviewDTO dto = new ProductReviewDTO();
 		dto.setStart(start);
 		dto.setEnd(end);
 		List<ProductReviewDTO> list=temp.selectList("review.selectAll",dto);
	  return list;
	}//end
 	 
 	public void dbInsert(ProductReviewDTO dto){
		temp.insert("review.insert",dto);
	}//end
 	
 	public int dbCount() {	
 		return temp.selectOne("review.countAll");
	}//end
	

 	public int dbDelete(int qid) {	
 		return temp.delete("review.delete",qid);
	}//end
 	
}//LoginDAO end

package shopping.crud.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductQuestRepDAO {
	
	@Autowired
	SqlSessionTemplate temp;
	
	public void dbInsert(ProductQuestRepDTO dto) {
		temp.insert("productquest_rep.add", dto);
	} //end
	
	public List<ProductQuestRepDTO> dbSelect(int qrn) {
		List<ProductQuestRepDTO> list = temp.selectList("productquest_rep.selectAll", qrn);   
		return list;
	}//end
	
	public void dbDelete(int qrn) {
		temp.delete("productquest_rep.delete",qrn);
	}
	
}//BoardReplyDAO class END

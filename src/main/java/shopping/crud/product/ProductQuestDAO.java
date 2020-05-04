package shopping.crud.product;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;



@Repository
@Component
public class ProductQuestDAO {

@Autowired
SqlSessionTemplate temp;
	
 	public List<ProductQuestDTO> dbSelect(int start, int end, String prid){
 		 ProductQuestDTO dto = new ProductQuestDTO();
 		 dto.setStart(start);
 		 dto.setEnd(end);
 		 dto.setProduct_id(prid);
 		 List<ProductQuestDTO> list=temp.selectList("quest.selectAll",dto);
	  return list;
	}//end
 	 
 	public int dbCount(){
 		return temp.selectOne("quest.countAll");
 	}//end
 	
 	public ProductQuestDTO dbDetail(int data){
 		return temp.selectOne("quest.detail",data);
 	}//end
 	
 	public ProductQuestDTO dbpwd(ProductQuestDTO dto) {
 		return temp.selectOne("quest.pwd",dto);
 	}//end

 	public void dbInsert(ProductQuestDTO dto) {
 		temp.insert("quest.insert",dto);
 	}//end
 	
	public void dbDelete(int questnum) {
 		temp.insert("quest.delete",questnum);
 	}//end
	
}//LoginDAO end

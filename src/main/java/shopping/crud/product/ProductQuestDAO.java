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
	
 	public List<ProductQuestDTO> dbSelect( ){
 		 List<ProductQuestDTO> list=temp.selectList("quest.selectAll");
	  return list;
	}//end
 	 
 	public ProductQuestDTO dbDetail(int data){
 		return temp.selectOne("quest.detail",data);
 	}//end
 	
 	public int dbpwd(int pwd) {
 		return temp.selectOne("quest.pwd",pwd);
 	}//end

 	public void dbInsert(ProductQuestDTO dto) {
 		temp.insert("quest.insert",dto);
 	}//end
}//LoginDAO end

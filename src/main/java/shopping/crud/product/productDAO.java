package shopping.crud.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


@Repository
@Component
public class productDAO {
	
	@Autowired
	SqlSessionTemplate temp;
	
	public List<productDTO> productList( ){
		  List<productDTO> list=temp.selectList("product.selectAll");
		  return list;
		}//list end
	
	public List<productDTO> productList(int category){
		  List<productDTO> list=temp.selectList("product.selectAll2", category);
		  return list;
		}//list end
	
	public productDTO productDetail(String data) {
		return temp.selectOne("product.selectDetail",data);
		
	}//detail end
	
	public int dbCount() {
		return temp.selectOne("product.countAll");
	}//count end
	
	public int dbDelete(int pId) {
		return temp.delete("product.del",pId);
	}//delete end
	
	
	
}//DAO END


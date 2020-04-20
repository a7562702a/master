package shopping.crud.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


@Repository
@Component
public class ProductDAO {
	
	@Autowired
	SqlSessionTemplate temp;
	
	public List<ProductDTO> productList( ){
		  List<ProductDTO> list=temp.selectList("product.selectAll");
		  return list;
		}//list end
	
	public List<ProductDTO> productList(int category){
		  List<ProductDTO> list=temp.selectList("product.selectAll2", category);
		  return list;
		}//list end
	
	public ProductDTO productDetail(int pId) {
		return temp.selectOne("product.detail",pId);
		
	}//detail end
	
	public int dbCount() {
		return temp.selectOne("product.countAll");
	}//count end
	
	public int dbDelete(int pId) {
		return temp.delete("product.del",pId);
	}//delete end
	
	
	
}//DAO END


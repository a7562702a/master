package shopping.crud.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;



@Repository
@Component
public class orderDAO {
	@Autowired
	SqlSessionTemplate temp;

	public void dbInsert(orderDTO dto) {
		System.out.println("인서트 시작");
         System.out.println(dto.getOrder_num());
         System.out.println(dto.getUser_id());
         System.out.println(dto.getProduct_id());
         System.out.println(dto.getProduct_name());
         System.out.println(dto.getProduct_img());
         System.out.println(dto.getOption1());
         System.out.println(dto.getOption2());
         System.out.println(dto.getPrice());
         System.out.println(dto.getCount());
         System.out.println(dto.getUser_name());
         System.out.println(dto.getUser_address1());
         System.out.println(dto.getUser_address2());
         System.out.println(dto.getUser_phone());
         System.out.println("인서트데이터 종료");
		temp.insert("order.add",dto);
	}// end
	
	public List<orderDTO> dbSelectproduct(){
		List<orderDTO> list=temp.selectList("order.selectproduct");
		return list;
	}//end
	
	public String dbSelectorderusers(String data) {
		return temp.selectOne("order.selectorderusers",data);
	}
	
	public List<orderDTO> dbSelectorder1(String data){
		List<orderDTO> list=temp.selectList("order.selectorder1",data);
		return list;
	}//end
	
	public String dbSelectorder(String data){
		System.out.println(data+"dao");
		
		 return temp.selectOne("order.selectorder",data);
		
	}//end

	public orderDTO dbSelectusers(String data) {
		return temp.selectOne("order.selectusers",data);
	  }//end
	
	
	public void dbdelete(int data) {
		temp.delete("order.del",data);
	}
}//orderDAO end

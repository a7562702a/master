package shopping.crud;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class customerDAO { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
//	public void dbInsert(customerDTO dto) {
//	  temp.insert("board.add", dto); 
//	}//end	
	
	public List<customerDTO> dbSelect_customer(String user_id ) {
	  return temp.selectList("customer.selectAll",user_id);
	}//end

	public List<customerDTO> dbSelect_customer(int start, int end, String user_id) {
	  customerDTO dto = new customerDTO();
	  dto.setStart(start); 
	  dto.setEnd(end);
	  dto.setUser_id(user_id);
	  return temp.selectList("customer.selectAll",dto);
	}//end
	
	public List<customerDTO> dbSelect_customer(int start, int end, String skey, String sval, String user_id) {      
		  customerDTO dto = new customerDTO();
		  dto.setStart(start); 
		  dto.setEnd(end);
		  dto.setSkey(skey);
		  dto.setSval(sval);
		  dto.setUser_id(user_id);

			System.out.println("------------------------");
			System.out.println(dto.getStart() + "다오");
			System.out.println(dto.getEnd() + "다오");
			System.out.println(dto.getSkey() + "다오");
			System.out.println(dto.getSval() + "다오");
			System.out.println("------------------------");

			System.out.println("------------------------ 리스트 체크");
			System.out.println(temp.selectList("customer.selectAll",dto));
			System.out.println("------------------------");
		  return temp.selectList("customer.selectAll",dto);
		}//end
		
	public int dbCount_customer(String user_id) {
	  return temp.selectOne("customer.countAll", user_id);
	}//end
	
	public int dbCountSearch_customer(String skey, String sval, String user_id) {
		   customerDTO dto = new customerDTO();
		   dto.setSkey(skey);
		   dto.setSval(sval);
		   dto.setUser_id(user_id);
		   return temp.selectOne("customer.countAllSearch", dto);
		}//end
	

}//BoardDAO class END









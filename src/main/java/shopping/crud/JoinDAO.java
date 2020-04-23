package shopping.crud;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class JoinDAO {

@Autowired
SqlSessionTemplate temp;
	
public void dbInsert_join(JoinDTO dto) {
//		System.out.println("DAO 오류 확인 시작");
//		System.out.println(dto.getUser_id());
//		System.out.println(dto.getUser_pwd());
//		System.out.println(dto.getUser_name());
//		System.out.println(dto.getUser_phone());
//		System.out.println(dto.getUser_address1());
//		System.out.println(dto.getUser_address2());
//		System.out.println(dto.getUser_email());
//		System.out.println("DAO 오류 확인 시작");
	  temp.insert("Join.join_add", dto); 
	}//end
 
public JoinDTO dbDetail_join(String data) {
	JoinDTO dto = temp.selectOne("Join.join_detail", data);
	return dto;
}

public void dbDelete_join(String data) {
	temp.delete("Join.join_delete",data);
}

public void dbUpdata_join(JoinDTO dto) {
	temp.update("Join.join_update",dto);
}

public String dbSelect_login(JoinDTO dto){
	System.out.println(dto.getUser_id() + "JoinDAO");
	System.out.println(dto.getUser_pwd());
	  return  (String)temp.selectOne("Join.login_select",dto);
	}//end
}//LoginDAO end

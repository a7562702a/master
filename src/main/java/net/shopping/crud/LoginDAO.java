package net.shopping.crud;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class LoginDAO {

@Autowired
SqlSessionTemplate temp;
	
 	public List<LoginDTO> dbSelect( ){
	  List<LoginDTO> list=temp.selectList("login.selectAll");
	  return list;
	}//end
 	 
 	public String login(LoginDTO dto){
	  String dtoRest=temp.selectOne("login.selectDetail",dto);
 	  return  dtoRest;
	}//end

}//LoginDAO end

package net.shopping.crud;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;


@Service
public class BoardService implements BoardServiceImp { 
   
	@Autowired
	//SqlSessionTemplate temp ;
	BoardDAOImp  dao;
	
	public void svdbInsert(BoardDTO dto) {
		dao.dbInsert(dto);
	}//end	
	
	public List<BoardDTO> svdbSelect( ) {
	  return dao.dbSelect();
	}//end
		
	public int svdbCount() {
	  return dao.dbCount();
	}//end
	
	public BoardDTO  svdbDetail(int data ) {
		return dao.dbDetail(data);
	}//end
	
	public void svdbDelete(int data) {
		dao.dbDelete(data);
	}//end
	
}//BoardDAO class END









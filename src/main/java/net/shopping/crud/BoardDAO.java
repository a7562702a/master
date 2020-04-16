package net.shopping.crud;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO implements BoardDAOImp { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void dbInsert(BoardDTO dto) {
	  temp.insert("board.add", dto); 
	}//end	
	
	public List<BoardDTO> dbSelect( ) {
	  return temp.selectList("board.selectAll");
	}//end

	public List<BoardDTO> dbSelect(int start, int end) {
	  BoardDTO dto = new BoardDTO();
	  dto.setStart(start); 
	  dto.setEnd(end);
	  return temp.selectList("board.selectAll",dto);
	}//end
	
	public List<BoardDTO> dbSelect(int start, int end, String skey, String sval) {      
		  BoardDTO dto = new BoardDTO();
		  dto.setStart(start); 
		  dto.setEnd(end);
		  dto.setSkey(skey);
		  dto.setSval(sval);
		  return temp.selectList("board.selectAll",dto);
		}//end
		
	public int dbCount() {
	  return temp.selectOne("board.countAll");
	}//end
	
	public int dbCountSearch(String skey, String sval) {
		   BoardDTO dto = new BoardDTO();
		   dto.setSkey(skey);
		   dto.setSval(sval);
		   return temp.selectOne("board.countAllSearch", dto);
		}//end
	
	public BoardDTO  dbDetail(int data ) {
		BoardDTO dto = temp.selectOne("board.detail", data);
		return dto;
	}//end

	public void  dbDelete(int data ) {
		temp.delete("board.delete", data);
	}//end
	

	public void dbUpdate(BoardDTO dto) {
		temp.update("board.update",dto);  
	}
}//BoardDAO class END









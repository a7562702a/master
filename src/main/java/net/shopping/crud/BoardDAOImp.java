package net.shopping.crud;

import java.util.List;

public interface BoardDAOImp {
  
  public void dbInsert(BoardDTO dto);
  public List<BoardDTO> dbSelect( );
  public List<BoardDTO> dbSelect(int start, int end);	
  public List<BoardDTO> dbSelect(int start, int end, String skey, String sval);    
  
  public int dbCount() ;
  public int dbCountSearch(String skey, String sval) ;
  
  public BoardDTO  dbDetail(int data );
  public void dbDelete(int data);
  public void dbUpdate(BoardDTO dto);
}//interface end

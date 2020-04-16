package net.shopping.crud;

import java.util.List;

public interface BoardServiceImp {
  
  public void svdbInsert(BoardDTO dto);
  public List<BoardDTO> svdbSelect( );	
  public int svdbCount() ;
  public BoardDTO  svdbDetail(int data );
  public void svdbDelete(int data);
}//interface end

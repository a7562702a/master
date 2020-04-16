package net.shopping.order;

import java.util.List;

public interface GuestDAOImp {
  public void dbInsert(GuestDTO dto);
  public List<GuestDTO> dbSelect( );	
  public int dbCount() ;
  public GuestDTO dbDetail(int data);
}//interface end

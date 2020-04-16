package net.shopping.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuestDAO { //��1 = �����(��Ʈ�� ����� xml����)
		//class="org.mybatis.spring.SqlSessionTemplate"
		
		@Autowired
		SqlSessionTemplate temp;
		//��1 = ����� temp�ʵ�� board.xml���� id����
		
		public void dbInsert(GuestDTO dto) {
			temp.insert("guest.add", dto);
			System.out.println("guest���̺� ����");
		}
		
		public List<GuestDTO> dbSelect() {
//			List list = temp.selectList("board.selectAll");
			//board.selectAll
			return temp.selectList("guest.selectAll");
		}

		public int dbCoun() {
			return temp.selectOne("guest.countAll");
		}
		
		public GuestDTO dbDetail(int data) {
			return temp.selectOne("guest.detail",data);
		}
		
		public void dbDelete(int data) {
			temp.delete("guest.delete",data);
			System.out.println(data + "�� ���� �Ϸ�");
		}

		public void dbUpdate(GuestDTO dto) {
			temp.update("guest.update",dto);  
		}
	
}

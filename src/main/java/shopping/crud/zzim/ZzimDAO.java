package shopping.crud.zzim;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class ZzimDAO {

	@Autowired
	SqlSessionTemplate temp;
		
	public void dbInsertZzim(ZzimDTO dto) {
		temp.insert("Zzim.insertZzim",dto);
	}//end
	
	public List<ZzimDTO> dbSelect(String id) {
		return temp.selectList("Zzim.selectZzim",id);
	}//end
	
	public void dbdelete(int num) {
		System.out.println("DAO단 데이터 확인 : " +num );
		temp.delete("Zzim.deleteZzim",num); 
	}//end
 

}//LoginDAO end

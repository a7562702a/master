package shopping.crud.zzim;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class ZzimDTO {
	private String user_id;
	private int zzim_num;
	private String product_id;
	private String product_name;
	private String option1;
	private String option2;
	private String user_email;
	private int price ;
	private int count ;
	private String img1;
	

}//ZzimDTO class End

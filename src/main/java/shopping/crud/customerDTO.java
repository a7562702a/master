package shopping.crud;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data
@Getter
@Setter

public class customerDTO {
	private int question_num;
	private String question_Category, question_title , question_content , user_id, question_file ;
	private int rn, rcnt;
	private int start, end;  
	private String skey, sval;
}//class END

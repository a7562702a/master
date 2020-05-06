package shopping.crud;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data
@Getter
@Setter

public class customerDTO {
	private int qna_Num;
	private String qna_Kategorie, qna_title, qna_detail, user_id, file1;
	private int rn, rcnt;
	private int start, end;  
	private String skey, sval;
}//class END

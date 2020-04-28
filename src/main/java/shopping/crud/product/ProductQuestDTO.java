package shopping.crud.product;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class ProductQuestDTO {
	private int product_quest_num, pwd, qrn, start, end;
	private String product_id, title, content;

	
	
}//LoginDTO class End

package shopping.crud.product;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class ProductQuestRepDTO {
	
	private int product_quest_num, rrn, product_rep_num;
	private String product_id, content;
	
	
}//ReplyDTO  class END

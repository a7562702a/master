package shopping.crud.product;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class ProductReviewDTO {
	private int review_num, point, rrn;
	private String product_id, user_id, content, file1;

	
	
}//LoginDTO class End

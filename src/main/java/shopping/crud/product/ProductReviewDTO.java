package shopping.crud.product;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class ProductReviewDTO {
	private int review_num, point, rrn, start, end;
	private String product_id, user_id, content, file1;
	private MultipartFile upload_f;
	
	
}//LoginDTO class End

package shopping.crud.product;

import org.springframework.web.multipart.MultipartFile;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter

public class ProductDTO {
	private String product_id;
	private String product_name;
	private int product_category;
	private String product_desc;
	private String product_color;
	private String product_size;
	private String product_img1;
	private String product_img2;
	private String product_img3;
	private int product_price;


}//DTO END

package shopping.crud.order;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class orderDTO {
	private int price, count;
	private String order_num, user_id, product_id, product_name,product_color,product_size,product_desc,product_img1,product_price;
	
	private String user_address1, user_address2;
	private String user_name, user_phone, status,file1;
	private java.util.Date wdate;
	private MultipartFile upload_f;
}

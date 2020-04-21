package shopping.crud.product;

import org.springframework.web.multipart.MultipartFile;

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
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_category() {
		return product_category;
	}
	public void setProduct_category(int product_category) {
		this.product_category = product_category;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	public String getProduct_img1() {
		return product_img1;
	}
	public void setProduct_img1(String product_img1) {
		this.product_img1 = product_img1;
	}
	public String getProduct_img2() {
		return product_img2;
	}
	public void setProduct_img2(String product_img2) {
		this.product_img2 = product_img2;
	}
	public String getProduct_img3() {
		return product_img3;
	}
	public void setProduct_img3(String product_img3) {
		this.product_img3 = product_img3;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	
	

}//DTO END

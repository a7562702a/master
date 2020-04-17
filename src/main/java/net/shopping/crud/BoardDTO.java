package net.shopping.crud;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class BoardDTO {
	private int hobby_idx;
	private String name, title, content, gender, hobby ;
	private String img_file_name;
	private MultipartFile upload_f;
	private int rn, rcnt;
	
	private int start, end;  
	private String skey, sval;
}//class END
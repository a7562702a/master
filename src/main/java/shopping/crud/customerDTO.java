package shopping.crud;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Data
@Getter
@Setter

public class customerDTO {
	private int QnA_num;
	private String QnA_Kategorie, QnA_title, QnA_detail ;
	private String img_file_name;
	private int rn, rcnt;
	private int start, end;  
	private String skey, sval;
}//class END

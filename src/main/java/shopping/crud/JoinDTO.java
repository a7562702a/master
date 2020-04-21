package shopping.crud;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class JoinDTO {
	private String user_id;
	private String user_name;
	private String use_pwd;
	private String user_phone;
	private String user_address1;
	private String user_address2;
	private String user_email;
	private Date user_joindate;
	private String user_level;

}//LoginDTO class End

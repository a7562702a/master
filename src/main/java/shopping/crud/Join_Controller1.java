package shopping.crud;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Join_Controller1 {
	
	@Autowired
	JoinDAO joinDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(Join_Controller1.class);
	

	@RequestMapping(value="login.do",method=RequestMethod.GET)
	 public String login(Model model){
		return "login";  
	}//end
	
	@RequestMapping("/Insert_join.do")
	public String board_insert(JoinDTO dto) {  
		joinDAO.dbInsert_join(dto); 
	  return "redirect:/boardList.do";
	}//end
	
}//LoginController class END
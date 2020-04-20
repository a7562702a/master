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
public class LoginController {
	
	@Autowired
	LoginDAO loginDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	

	@RequestMapping(value="login.do",method=RequestMethod.GET)
	 public String login(Model model){
		return "login";  
	}//end
	
	@RequestMapping(value="loginprocess.do")
	public String loginprocess(LoginDTO dto, HttpServletResponse response, HttpSession session)	throws Exception
	{
		
		return "redirect:/.do";
	}//end
	
	
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate(); 
		return "redirect:/.jsp";
	}//end
	
}//LoginController class END
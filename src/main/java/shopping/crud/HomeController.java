package shopping.crud;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {   
   private static final Logger logger=LoggerFactory.getLogger(HomeController.class);
   
   
   
   //@Autowired
   //private ServletContext  application;
   
   
   @RequestMapping("/home.do")
   public String goHome() {
      return "home";
   }//end
   
   @RequestMapping("/main_bar.do")
   public ModelAndView mainbar(){
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("main_bar");
	         return mav;
   }//end
   
   @RequestMapping("/my_page.do")
   public String go_my_page(HttpServletResponse response, HttpSession session,
			HttpServletRequest request) {
	    String Previous_page = request.getHeader("Referer");
	    System.out.println("========================= 이전페이지 확인");
	    System.out.println(Previous_page);
	    System.out.println("========================= 이전페이지 확인");
		session.setAttribute("Previous_page", Previous_page);
      return "my_page";
   }//end
   
   @RequestMapping("/customer_center.do")
   public String go_customer_center() {
      return "customer_center";
   }//end
   
   @RequestMapping("/footer.do")
   public ModelAndView footer(){
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("footer");
	         return mav;
   }//end


}//BoardController class END
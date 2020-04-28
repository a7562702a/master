package shopping.crud.product;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ProductQuestController {

	@Autowired
	ProductQuestDAO pdao;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductQuestController.class);
	
	
	
	@RequestMapping(value="/productQuestList.do")
	public String product_select(Model model) {
		List<ProductQuestDTO> PD = pdao.dbSelect();
		model.addAttribute("PD",PD);
		return "ProductQuestList";
	}//end
	
	@RequestMapping(value="/productQuestDetail.do")
	public String product_detail(@RequestParam("qid") int data, Model model) {
		model.addAttribute("dto",pdao.dbDetail(data));
		return "redirect:/productQuestList.do";
	}//end
	
	@RequestMapping(value="/productQuestPwd.do")
	public String product_pwd(Model model, @RequestParam("pwd") int pwd, ProductQuestDTO dto,HttpServletResponse response, HttpSession session) throws Exception{
		System.out.println(pwd);			
		System.out.println(dto.getProduct_quest_num());
		int result=pdao.dbpwd(pwd);	
		session.setAttribute("questpwd",result);
		if(result==0){
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().append("<script>"
				   + "alert('비번이 정확하지 않습니다.');"
				   + "window.history.back();"
				   + "</script>").flush();
			return "redirect:/productQuestList.do";
		}
		return "redirect:/productQuestDetail.do?qid="+dto.getProduct_quest_num();
		
	}
	
	@RequestMapping(value="/productQuestOut.do")
	public String product_remove( HttpSession session) {	
		session.removeAttribute("questpwd");
		return "redirect:/productQuestList.do";
	}//end
	
	@RequestMapping(value = "/productQuest.do")
	public String board_write() {
		return "ProductQuestWrite";
	}//end
	
	@RequestMapping("/productQuestInsert.do")
	public String board_insert(ProductQuestDTO dto) {
		pdao.dbInsert(dto);
		return "redirect:/productQuestList.do";
	}//end
	
}//BoardReplyController class END



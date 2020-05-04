package shopping.crud.product;

import java.io.File;
import java.io.IOException;
import java.util.List;

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
public class ProductQuestController {

	@Autowired
	ProductQuestDAO pdao;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductQuestController.class);
	
	
	
	@RequestMapping(value="/productQuestList.do")
	public String quest_select(HttpServletRequest request, Model model, @RequestParam("prid") String prid) {
		String pnum;
		 int pageNUM, pagecount;
		 int start, end; 
		 int startpage, endpage;  
		 int temp;	
		 String sqry="";
		 String skey="", sval="";
		 String returnpage=""; 
		 int Rnumber; 
		 
		 pnum=request.getParameter("pagePQNum");
		 if(pnum=="" || pnum==null) {
			 pnum="1";
		 }
		 
		 pageNUM=Integer.parseInt(pnum);
		 int Gtotal=pdao.dbCount();
		 start=(pageNUM-1)*10+1;
		 end=pageNUM*10;
	 
		 if(Gtotal%10==0) {pagecount = Gtotal/10;}
		 else {pagecount = (Gtotal/10)+1;}
		 
		 temp=(pageNUM-1)%10;
		 startpage=pageNUM-temp;
		 endpage=startpage+9;
		 if(endpage>pagecount) {endpage=pagecount;}
	
		
		
		List<ProductQuestDTO> PD = pdao.dbSelect(start,end,prid);
		model.addAttribute("pageNUM", pageNUM);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("pagecount", pagecount);
		model.addAttribute("prid", prid);
		model.addAttribute("PD",PD);
		return "ProductQuestList";
	}//end
	
	@RequestMapping(value="/productQuestDetail.do")
	public String quest_detail(@RequestParam("qid") int data, Model model, @RequestParam("prid") String prid) {
		model.addAttribute("dto",pdao.dbDetail(data));
		return "redirect:/productQuestList.do";
	}//end
	
	@RequestMapping(value="/productQuestPwd.do")
	public String quest_pwd(Model model, ProductQuestDTO dto,HttpServletResponse response, HttpSession session, @RequestParam("prid") String prid) throws Exception{			
		ProductQuestDTO result=pdao.dbpwd(dto);	
		session.setAttribute("questpwd",dto.getPwd());
		session.setAttribute("questnum",dto.getProduct_quest_num());
		
		if(result==null){
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().append("<script>"
				   + "alert('비번이 정확하지 않습니다.');"
				   + "window.history.back();"
				   + "</script>").flush();
			return "redirect:/productQuestList.do";
		}return "redirect:/productDetail.do?pid="+prid;	
	}
	
	@RequestMapping(value="/productQuestOut.do")
	public String quest_remove( HttpSession session, @RequestParam("prid") String prid) {	
		session.removeAttribute("questpwd");
		return "redirect:/productDetail.do?pid="+prid;
	}//end
	
	@RequestMapping(value = "/productQuest.do")
	public String quest_write(@RequestParam("prid") String prid,Model model) {
		model.addAttribute("prid",prid);
		return "ProductQuestWrite";
	}//end
	
	@RequestMapping("/productQuestInsert.do")
	public String quest_insert(ProductQuestDTO dto, @RequestParam("prid") String prid) {
		pdao.dbInsert(dto);
		return "redirect:/productDetail.do?pid="+prid;
	}//end
	
	@RequestMapping("/productQuestDelete.do")
	public String quest_delete(@RequestParam("qqid") int qqid, @RequestParam("prid") String prid) {
		pdao.dbDelete(qqid);
		return "redirect:/productDetail.do?pid="+prid;
	}//end
	
}//BoardReplyController class END



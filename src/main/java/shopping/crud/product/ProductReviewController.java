package shopping.crud.product;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

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
public class ProductReviewController {

	@Autowired
	ProductReviewDAO pdao;
	
	@Autowired
	private ServletContext application;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductReviewController.class);
	
	
	
	@RequestMapping(value="/productReviewList.do")
	public String productR_select(HttpServletRequest request, Model model) {
		 String pnum;
		 int pageNUM, pagecount;
		 int start, end; 
		 int startpage, endpage;  
		 int temp;	
		 String sqry="";
		 String skey="", sval="";
		 String returnpage=""; 
		 int Rnumber; 
		 
		 pnum=request.getParameter("pagePRNum");
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
	
		
		
		List<ProductReviewDTO> PD = pdao.dbSelect(start,end);
		 model.addAttribute("pageNUM", pageNUM);
		 model.addAttribute("startpage", startpage);
		 model.addAttribute("endpage", endpage);
		 model.addAttribute("pagecount", pagecount);
		
		 
		 model.addAttribute("PD",PD);
		 return "ProductReviewList";
	}//end
	
	@RequestMapping(value="/productReview.do")
	public String productR_write() {	
		return "ProductReviewWrite";
	}//end
	
	@RequestMapping("/productReviewInsert.do")
	public String productR_insert(ProductReviewDTO dto,HttpServletRequest request) {
		String path=application.getRealPath("/resources/upload");
		String img=dto.getUpload_f().getOriginalFilename();
		File file = new File(path, img); 
		try {
			dto.getUpload_f().transferTo(file);
		}catch (Exception e) {System.out.println(e);	}		
		dto.setFile1(img);
		pdao.dbInsert(dto);
		return "redirect:/productReviewList.do";
	}//end

	@RequestMapping("/productReviewDelete.do")
	public String quest_insert(@RequestParam("rid") int questnum) {
		pdao.dbDelete(questnum);
		return "redirect:/productReviewList.do";
	}//end
	
}//BoardReplyController class END




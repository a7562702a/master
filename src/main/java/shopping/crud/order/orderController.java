package shopping.crud.order;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
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
public class orderController {
    @Inject
	@Autowired
	orderDAO dao;
    @Autowired
    private ServletContext application;
	private static final Logger logger = LoggerFactory.getLogger(orderController.class);

	@RequestMapping(value = "/orderInsert.do", method = RequestMethod.GET)
	public String order_insert(orderDTO dto) {
		String path=application.getRealPath("/resources/upload");
		System.out.println(path);
		String img=dto.getUpload_f().getOriginalFilename();
		File file=new File(path,img);
	try {dto.getUpload_f().transferTo(file);}
	catch(Exception e) {System.out.println("Error:"+e);}
	    dto.setFile1(img);
	    System.out.println("컨트롤 물리적파일="+dto.getFile1());
	    System.out.println();
	    dao.dbInsert(dto);
		return "redirect:/orderList2.do";
	}// end
	
	@RequestMapping("/orderList.do")
	public String order_list(@RequestParam("idx")String data,Model model){
		List<orderDTO> product=dao.dbSelectproduct();
		System.out.println(data);
		orderDTO users=dao.dbSelectusers(data);
		model.addAttribute("product", product);
		model.addAttribute("users",users);
		
		return "orderList";
	}//end
	
	@RequestMapping("/orderDelete.do")
	public String order_delete(HttpServletRequest request) {
		int data=Integer.parseInt(request.getParameter("idx"));
		//dao.dbdelete(data);
		return "redirect:/orderList.do";
	}//end

}// BoardReplyController class END

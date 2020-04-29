package shopping.crud.order;

import java.io.File;
import java.util.ArrayList;
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
	
	
	@RequestMapping("/order.do")
	public ModelAndView order_write(HttpServletRequest request, ModelAndView mov ) { //바로구매
		ArrayList<orderDTO> product = new ArrayList<orderDTO>();
		String pid = request.getParameter("pid");
		String pimg = request.getParameter("pimg");
		String[] pname = request.getParameterValues("product_name");
		String[] poption1 = request.getParameterValues("product_option1");
		String[] poption2 = request.getParameterValues("product_option2");
		String[] pcount = request.getParameterValues("count");
		String[] pprice = request.getParameterValues("product_price");

		
		for(int i = 0; i<pname.length; i++) {
			orderDTO odto = new orderDTO();
			odto.setProduct_id(pid);
			odto.setProduct_img1(pimg);
			odto.setProduct_name(pname[i]);
			odto.setProduct_color(poption1[i]);
			odto.setProduct_size(poption2[i]);
			odto.setCount(Integer.parseInt(pcount[i]));
			odto.setProduct_price(pprice[i]);
			product.add(odto);
			System.out.println(product.get(i).getProduct_color() + product.get(i).getProduct_size());

		}
		System.out.println(product.size());
	
		mov.addObject("product",product);
		mov.setViewName("orderList");
		return mov;
	}//end
	


	@RequestMapping( "/orderInsert.do")
	public String order_insert(orderDTO dto) {
//		String path=application.getRealPath("/resources/upload");
//		System.out.println(path);
//		String img=dto.getUpload_f().getOriginalFilename();
//		System.out.println(img);
//		File file=new File(path,img);
//	try {dto.getUpload_f().transferTo(file);}
//	catch(Exception e) {System.out.println("Error:"+e);}
//	    dto.setFile1(img);
//	    System.out.println("컨트롤 물리적파일="+dto.getFile1());
//	    System.out.println();
	    dao.dbInsert(dto);
		return "redirect:/orderList2.do";
	}// end
	
	@RequestMapping("/orderList.do")
	public String order_list(@RequestParam("oid")String data,Model model){
		//List<orderDTO> product=dao.dbSelectproduct();
		List<orderDTO> order=dao.dbSelectorder(data);
		System.out.println(data);
		orderDTO users=dao.dbSelectusers(data);
		//model.addAttribute("product", product);
		model.addAttribute("order", order);
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

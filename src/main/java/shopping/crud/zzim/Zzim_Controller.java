package shopping.crud.zzim;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class Zzim_Controller {
	
	@Autowired
	ZzimDAO zzimDAO; 
	
	private static final Logger logger = LoggerFactory.getLogger(Zzim_Controller.class);
	

	@RequestMapping(value="zzim.do",method=RequestMethod.GET)
	 public String Zzim(Model model){
		return "zzimList";  
	}//end
	
	@RequestMapping("/zzimInsert.do")
	public ModelAndView zzim_insert(HttpServletRequest request, ModelAndView mov, HttpSession session ) { //바로구매
		ArrayList<ZzimDTO> product = new ArrayList<ZzimDTO>();
		//String userId = (String)session.getAttribute("userId");
		//String userEmail = (String)session.getAttribute("userEmail");
		String pid = request.getParameter("pid");
		String pimg = request.getParameter("pimg");
		String[] pname = request.getParameterValues("product_name");
		String[] poption1 = request.getParameterValues("product_option1");
		String[] poption2 = request.getParameterValues("product_option2");
		String[] pcount = request.getParameterValues("count");
		String[] pprice = request.getParameterValues("product_price");

		for(int i = 0; i<pname.length; i++) {
			ZzimDTO dto = new ZzimDTO();
			//dto.setUser_id(userId);
			dto.setUser_id("aaaa");	
			dto.setProduct_id(pid);
			dto.setImg1(pimg);
			dto.setProduct_name(pname[i]);
			dto.setOption1(poption1[i]);
			dto.setOption2(poption2[i]);
			dto.setCount(Integer.parseInt(pcount[i]));
			dto.setPrice(Integer.parseInt(pprice[i]));
			product.add(dto);
			//System.out.println(dto.getUser_id()+dto.getOption1());
			zzimDAO.dbInsertZzim(dto);

		}
		//System.out.println(product.size());
	
		mov.addObject("list",product);
		mov.setViewName("zzimList");
		return mov;
	}//end
	
	
	@RequestMapping("/zzimList.do")
	public String zzim_select(HttpServletRequest request, Model model) {
		List<ZzimDTO> list = zzimDAO.dbSelect("aaaa");
		model.addAttribute("list",list);
		
	  return "zzimList";
	}//end
	
	@RequestMapping("/zzimDelete.do")
	public String zzim_delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("화면에서 넘어온 데이터 확인 : "+id);
		zzimDAO.dbdelete(id);
		
	  return "redirect:zzimList.do";
	}//end
	
	@RequestMapping("/zzimSelectDelete.do")
	public String zzim_selectdelete(Model model , HttpServletRequest request) {
		
		System.out.println("선택 삭제 시작 확인");
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		String data = request.getParameter("hiddenValue");
		System.out.println(data);
		String[] num = data.split(",");
		System.out.println(cnt + "선택된 갯수");
		System.out.println(num.length);
		
		try{ 
				for(int i = 0; i < num.length; i++){			
					System.out.println("넘어온데이터 : "+num[i]);
					zzimDAO.dbdelete(Integer.parseInt(num[i]));
				}

		} catch(Exception e){
			e.printStackTrace();
			System.out.println("선택삭제 오류 발생");
		}

	  return "redirect:zzimList.do";
	}//end
	
}//LoginController class END
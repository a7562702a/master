package shopping.crud;
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
import org.springframework.web.servlet.ModelAndView; //�����Ͽ����߰�


@Controller
public class customerController {	
	private static final Logger logger=LoggerFactory.getLogger(customerController.class);
	
	
	@Inject
	@Autowired
	customerDAO dao; 
	
		
	
	@RequestMapping(value="/customer.do", method=RequestMethod.GET)
	public String goCustomer() {
	   return "customer_center";
	}

	@RequestMapping("/customerList.do")
	public ModelAndView board_select(HttpServletRequest request ,ModelAndView mav, HttpSession session) {
		 String pnum;
		 String user_id = (String) session.getAttribute("userId");
		 int pageNUM, pagecount;
		 int start, end; 
		 int startpage, endpage;  
		 int temp;
		 String sqry="";
		 String skey="", sval="";
		 String returnpage=""; 
		 int Rnumber ;  //�������� ���ȣ ���
		
		 skey=request.getParameter("keyfield");
		 sval=request.getParameter("keyword");
		 if(skey==null || sval==null || skey=="" || sval=="") {
			 skey="QnA_title"; sval="";
		 }
		 
		 
		 //http://localhost:8080/crud/boardList.do?pageNum=3&keyfield=title&keyword=p
		 returnpage="&keyfield="+skey+"&keyword="+sval;//4-13-������ �˻��� ��������ȣŬ����[3]���
		 
		 pnum=request.getParameter("pageNum");
		 if(pnum=="" || pnum==null) {
			pnum="1"; 
		 }
		 
		pageNUM=Integer.parseInt(pnum); //[21]~[27����]~[30]
		
		int GGtotal = dao.dbCount_customer(user_id); //��ü���ڵ尹�� 342��
		int Gtotal = dao.dbCountSearch_customer(skey, sval, user_id); //��ȸ���ڵ尹��
		int Stotal = dao.dbCountSearch_customer(skey, sval, user_id); //��ȸ���ڵ尹��
		
		start=(pageNUM-1)*10+1;
		end=pageNUM*10;
		
		if( Gtotal%10==0){ pagecount=Gtotal/10;}
		else { pagecount=(Gtotal/10)+1; }
		
		//���������� [21]  ��������[30]
		temp=(pageNUM-1)%10;  //6
		startpage=pageNUM-temp; //21
		endpage=startpage+9;
		if(endpage>pagecount) { endpage=pagecount; }
		
//		List<customerDTO> list_customer = dao.dbSelect_customer();
//		List<customerDTO> list_customer = dao.dbSelect_customer(start,end);
		List<customerDTO> listcustomer = dao.dbSelect_customer(start,end,skey,sval,user_id);

		System.out.println("------------------------");
		System.out.println(start + "컨트롤러");
		System.out.println(end + "컨트롤러");
		System.out.println(skey + "컨트롤러");
		System.out.println(sval + "컨트롤러");
		System.out.println("------------------------");
		
		System.out.println("------------------------ 컨트롤러 리스트 체크");
		System.out.println(listcustomer);
		System.out.println();
		System.out.println(listcustomer.get(0).getQna_Num());
		System.out.println(listcustomer.get(1).getQna_Num());
		System.out.println("------------------------");
		
		mav.addObject("Gtotal", Gtotal); //��ȸ����
		mav.addObject("GGtotal", GGtotal); //��ü����
		mav.addObject("listcustomer", listcustomer);
		mav.addObject("pageNUM", pageNUM);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("pagecount", pagecount);
		mav.addObject("skey", skey);
		mav.addObject("sval", sval);	
		mav.addObject("returnpage", returnpage);
		mav.addObject("user_id",user_id);
		mav.setViewName("customer_center");
	    return mav; 
	}//end

	
}//BoardController class END












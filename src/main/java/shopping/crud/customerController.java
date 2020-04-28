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
	
	//��Ʈ�ѹ��� dao��ü����
	@Inject
	@Autowired
	customerDAO dao; 
	
	
	
	@Autowired
	private ServletContext  application;
	
	
	@RequestMapping(value="/customer.do", method=RequestMethod.GET)
	public String goCustomer() {
	   return "customer_center";
	}

	@RequestMapping("/customerList.do")
	public String board_select(HttpServletRequest request ,Model model) {
		 String pnum;
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
		
		int GGtotal = dao.dbCount_customer(); //��ü���ڵ尹�� 342��
		int Gtotal = dao.dbCountSearch_customer(skey, sval); //��ȸ���ڵ尹��
		int Stotal = dao.dbCountSearch_customer(skey, sval); //��ȸ���ڵ尹��
		
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
		List<customerDTO> list_customer = dao.dbSelect_customer(start,end,skey,sval);

		System.out.println("------------------------");
		System.out.println(start + "컨트롤러");
		System.out.println(end + "컨트롤러");
		System.out.println(skey + "컨트롤러");
		System.out.println(sval + "컨트롤러");
		System.out.println("------------------------");
		
		customerDTO dtto = new customerDTO();
		System.out.println("------------------------ 컨트롤러 리스트 체크");
		System.out.println(list_customer);
		System.out.println("------------------------");
		
		model.addAttribute("Gtotal", Gtotal); //��ȸ����
		model.addAttribute("GGtotal", GGtotal); //��ü����
		model.addAttribute("list_customer", list_customer);
		model.addAttribute("pageNUM", pageNUM);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("pagecount", pagecount);
		model.addAttribute("skey", skey);
		model.addAttribute("sval", sval);	
		model.addAttribute("returnpage", returnpage);
	    return "customer_center"; 
	}//end

	
}//BoardController class END












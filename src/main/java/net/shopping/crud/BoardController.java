package net.shopping.crud;

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
public class BoardController {	
	private static final Logger logger=LoggerFactory.getLogger(BoardController.class);
	
	//��Ʈ�ѹ��� dao��ü����
	@Inject
	@Autowired
	//BoardDAO dao;  ����
	BoardDAOImp dao; 
	
	
	
	@Autowired
	private ServletContext  application;
	
	
	@RequestMapping(value="/board.do", method=RequestMethod.GET)
	public String guest_write() {
	   return "boardWrite";
	}//end
	
	
	@RequestMapping("/boardInsert.do")
	public String board_insert(BoardDTO dto) {  
	  String path=application.getRealPath("/resources/upload");
	  String img=dto.getUpload_f().getOriginalFilename();
	  File file = new File(path, img);
	  
	  try{ dto.getUpload_f().transferTo(file); }catch(Exception ex){  }  
	  dto.setImg_file_name(img); 
	  dao.dbInsert(dto); 
	  return "redirect:/boardList.do";
	}//end
	//////////////////////////////////////////////////////////////
	
	
//	@RequestMapping("/boardList.do")
//	public String board_select(Model model) {
//		int Gtotal = dao.dbCount();
//		List<BoardDTO> LG = dao.dbSelect();
//		model.addAttribute("Gtotal", Gtotal);
//		model.addAttribute("LG", LG);
//	    return "boardList"; 
//	}//end

	@RequestMapping("/boardList.do")
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
			 skey="title"; sval="";
		 }
		 
		 
		 //http://localhost:8080/crud/boardList.do?pageNum=3&keyfield=title&keyword=p
		 returnpage="&keyfield="+skey+"&keyword="+sval;//4-13-������ �˻��� ��������ȣŬ����[3]���
		 
		 pnum=request.getParameter("pageNum");
		 if(pnum=="" || pnum==null) {
			pnum="1"; 
		 }
		 
		pageNUM=Integer.parseInt(pnum); //[21]~[27����]~[30]
		
		int GGtotal = dao.dbCount(); //��ü���ڵ尹�� 342��
		int Gtotal = dao.dbCountSearch(skey, sval); //��ȸ���ڵ尹��
		int Stotal = dao.dbCountSearch(skey, sval); //��ȸ���ڵ尹��
		
		start=(pageNUM-1)*10+1;
		end=pageNUM*10;
		
		if( Gtotal%10==0){ pagecount=Gtotal/10;}
		else { pagecount=(Gtotal/10)+1; }
		
		//���������� [21]  ��������[30]
		temp=(pageNUM-1)%10;  //6
		startpage=pageNUM-temp; //21
		endpage=startpage+9;
		if(endpage>pagecount) { endpage=pagecount; }
		
		//List<BoardDTO> LG = dao.dbSelect();
		//List<BoardDTO> LG = dao.dbSelect(start,end);
		List<BoardDTO> LG = dao.dbSelect(start,end,skey,sval);
		
		model.addAttribute("Gtotal", Gtotal); //��ȸ����
		model.addAttribute("GGtotal", GGtotal); //��ü����
		model.addAttribute("LG", LG);
		model.addAttribute("pageNUM", pageNUM);
		model.addAttribute("startpage", startpage);
		model.addAttribute("endpage", endpage);
		model.addAttribute("pagecount", pagecount);
		model.addAttribute("skey", skey);
		model.addAttribute("sval", sval);	
		model.addAttribute("returnpage", returnpage);
	    return "boardList"; 
	}//end
	
	 @RequestMapping("boardDetail.do")
	 public String  board_detail( @RequestParam("Gidx") int data , Model model ) {
	    BoardDTO dto=dao.dbDetail(data);
	    model.addAttribute("dto", dto);
	    return "boardDetail" ;
	 }
	 
	 @RequestMapping("download.do")
	 public void  board_download( HttpServletRequest request, HttpServletResponse response) {
		 String path=application.getRealPath("/resources/upload");
		  String img= request.getParameter("Gidx");
		  File file = new File(path, img);
		 
		  
		  try{
		   //�߻�޼ҵ尡 ������ �߻�Ŭ����/�������̽� 
		   //File file = new File( path, data) ;
			  response.setHeader("Content-Disposition","attachment;filename="+ URLEncoder.encode(img, "UTF-8") );
		   InputStream is = new FileInputStream(file) ;
		   OutputStream os = response.getOutputStream();
		   
		   //ǥ�ص�����Ÿ��=primitiveType  byte,int,double,boolean,char,long
		   byte[] bt = new byte[(int)file.length()] ; //byteŸ���� 1����ƮŸ��
		   is.read(bt,0,bt.length);
		   os.write(bt); 
		   
		   is.close();
		   os.close();
		   }catch(Exception ex){  }  
	 }
	 
//	 @RequestMapping("/download.do")
//	 public void  board_download(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
//		 ModelAndView mav = new ModelAndView();
//		 String data="";		
//		 try {	
//		  String filename=URLEncoder.encode(request.getParameter("fidx"), "UTF-8");
//		  data=request.getParameter("idx");
//		  System.out.println("\n�ٿ�ε� filename="+filename+" idx="+data);
//		  
//		  String path=application.getRealPath("/resources/upload");
//		  System.out.println(path);
//		 
//		  filename=URLEncoder.encode(filename,"UTF-8");
//	      response.setHeader("Content-Disposition", "attachment;filename="+filename);
//		  File file=new File(path,filename);
//		 
//			 InputStream is=new FileInputStream(file);
//			 OutputStream os=response.getOutputStream();
//			 byte[ ] bt=new byte[(int)file.length()];
//			
//			 is.read(bt,0,bt.length);
//			 os.write(bt);
//			 
//			 is.close(); os.close(); 
//		  }catch(Exception ex) { }
//		 String url="redirect:/boarDetail.do?idx="+data;
//		 //return url;
//		  //return "redirect:/boarDetail.do?idx="+data;
//		  //mav.setViewName("redirect:/boarDetail.do?idx="+data);
//		 RequestDispatcher dis=request.getRequestDispatcher(url);
//		 //dis.forward(request, response);  ���������� 
//		 dis.include(request, response);
//	}//end
//	 
		@RequestMapping("/boardDelete.do")
		public String board_delete(HttpServletRequest request) {
			int data= Integer.parseInt(request.getParameter("Gidx"));
			dao.dbDelete(data);
			return "redirect:/boardList.do"; ///WEB-INF/views/boardDelete.jsp
		}
		

		@RequestMapping("/boardUpdateBF.do")
		public String board_updateBefor(HttpServletRequest request,Model model) {
			int data= Integer.parseInt(request.getParameter("Gidx"));
			model.addAttribute("dto", dao.dbDetail(data));
			return "boardEdit"; ///WEB-INF/views/boardDelete.jsp
		}

		@RequestMapping("/boardUpdateAF.do")
		public String board_updateaffter(BoardDTO dto) {
			 String path=application.getRealPath("/resources/upload");
			  String img=dto.getUpload_f().getOriginalFilename();
			  File file = new File(path, img);
			  
			  try{ dto.getUpload_f().transferTo(file); dto.setImg_file_name(img); }catch(Exception ex){  }  
			   
			  dao.dbUpdate(dto);
//			  return "redirect:/boardList.do";
			return "redirect:/boardDetail.do?Gidx="+dto.getHobby_idx(); ///WEB-INF/views/boardDelete.jsp
		}
}//BoardController class END












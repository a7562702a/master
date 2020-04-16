package net.shopping.order;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import net.shopping.crud.BoardController;


@Controller
public class GuestController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//��Ʈ�ѹ��� dao ��ü����
	@Autowired
	GuestDAO dao;

	@RequestMapping(value = "/guest.do", method = RequestMethod.GET)
	public String home() {
//		String url = "/WEB-INF/views/guestWrite.jsp";
		
		return "guestWrite";
	}

	@RequestMapping("/guest.do")
	public String guest_write() {
		return "guestWrite"; ///WEB-INF/views/boardWrite.jsp
	}

	@RequestMapping("/guestInsert.do")
	public String guest_insert(GuestDTO dto) {
		dao.dbInsert(dto); //�ٿ��ڹٹ����� �޼ҵ�ȣ��
		return "redirect:/guestList.do";
	}
	
	@RequestMapping("/gusetList.do")
	public String guest_select(Model model) {
		List<GuestDTO> LG = dao.dbSelect(); //�ٿ��ڹٹ����� �޼ҵ�ȣ��
		model.addAttribute("LG", LG);
		int total = dao.dbCoun();
		model.addAttribute("Gtotal", total);
		return "guestList"; ///WEB-INF/views/boardInsert.jsp
	}

	@RequestMapping("/guestList1.do")
	public ModelAndView guest_select1(Model model) {  // ModelAndView ���-----------------------
		ModelAndView mav = new ModelAndView();
		int total = dao.dbCoun();
		List<GuestDTO> LG = dao.dbSelect();
		mav.addObject("LG",LG);
		mav.addObject("Gtotal", total);
		mav.setViewName("guestList");
		return mav; ///WEB-INF/views/boardInsert.jsp
	}
	@RequestMapping("/guestDetail.do")
	public String guest_detail(HttpServletRequest request,Model model) {
		int data= Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("dto", dao.dbDetail(data));
		return "guestDetail"; ///WEB-INF/views/boardDelete.jsp
	}

	@RequestMapping("/guestDelete.do")
	public String guest_delete(HttpServletRequest request) {
		int data= Integer.parseInt(request.getParameter("idx"));
		dao.dbDelete(data);
		return "redirect:/gusetList.do"; ///WEB-INF/views/boardDelete.jsp
	}
	
	@RequestMapping("/guestUpdateBF.do")
	public String guest_updateBefor(HttpServletRequest request,Model model) {
		int data= Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("dto", dao.dbDetail(data));
		return "guestEdit"; ///WEB-INF/views/boardDelete.jsp
	}

	@RequestMapping("/guestUpdateAF.do")
	public String guest_updateaffter(GuestDTO dto) {
		dao.dbUpdate(dto);
		return "redirect:/guestDetail.do?idx="+dto.getSabun(); ///WEB-INF/views/boardDelete.jsp
	}
	
}

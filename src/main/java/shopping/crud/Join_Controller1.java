package shopping.crud;

import java.text.DateFormat;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class Join_Controller1 {

	@Autowired
	JoinDAO joinDAO;

	private static final Logger logger = LoggerFactory.getLogger(Join_Controller1.class);

	// 회원가입 페이지 이동
	@RequestMapping(value = "Join.do", method = RequestMethod.GET)
	public String join(Model model, HttpSession session) {
		return "user_join";
	}// end

	// 회원가입 정보 DB 저장
	@RequestMapping("/Insert_join.do")
	public String join_insert(JoinDTO dto) {
		System.out.println("controll 오류 확인 시작");
		System.out.println(dto.getUser_id() + "-id");
		System.out.println(dto.getUser_pwd() + "-pwd");
		System.out.println(dto.getUser_name() + "-name");
		System.out.println(dto.getUser_phone() + "-phone");
		System.out.println(dto.getUser_address1() + "-address1");
		System.out.println(dto.getUser_address2() + "-address2");
		System.out.println(dto.getUser_email() + "-email");
		System.out.println("controll 오류 확인 시작");
		joinDAO.dbInsert_join(dto);
		return "redirect:/Join.do";
	}// end

	// 개인 회원정보 확인
	@RequestMapping("Detail_join.do")
	public String join_detail(@RequestParam("uid") String data, Model model) {
		JoinDTO dto = joinDAO.dbDetail_join(data);
		model.addAttribute("dto", dto);
		return "user_join_detail";
	}

	// 회원정보 수정 전 DB 정보 확인
	@RequestMapping("/UpdateBF_join.do")
	public String join_updateBefor(HttpServletRequest request, Model model, HttpSession session) {
		session.setAttribute("pathuid", request.getParameter("uid"));
		session.setAttribute("path", "UpdateBF_join.do?uid=" + session.getAttribute("pathuid"));
		String data = request.getParameter("uid");
		model.addAttribute("dto", joinDAO.dbDetail_join(data));
		return "user_join_edit"; /// WEB-INF/views/boardDelete.jsp
	}

	// 회원정보 수정 후 DB 정보 입력
	@RequestMapping("/UpdateAF_join.do")
	public String join_updateaffter(JoinDTO dto) {
		joinDAO.dbUpdata_join(dto);
		return "redirect:my_page.do";
	}

	// 회원 탈퇴
	@RequestMapping("/Delete_join.do")
	public String join_delete(HttpServletRequest request, HttpSession session) {
		String data = request.getParameter("uid");
		joinDAO.dbDelete_join(data);
		return "redirect:/home.do"; /// WEB-INF/views/boardDelete.jsp
	}

	// 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}// end

	// 로그인 확인
	@RequestMapping(value = "loginprocess.do")
	public String loginprocess(JoinDTO dto, HttpServletResponse response, HttpSession session,
			HttpServletRequest request, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("\n 로그인컨트롤처리 넘어온 user_id=" + dto.getUser_id());
		System.out.println("로그인컨트롤처리 pwd=" + dto.getUser_pwd());

		String result = joinDAO.dbSelect_login(dto);
		System.out.println("로그인컨트롤처리 다오처리후=" + result);

		if (result == null || result == "" || result.equals("")) {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().append("<script>" + "alert('LoginController 아이디 또는 비밀번호가 일치하지 않습니다. - 시스템관리자');"
					+ "window.history.back();" + "</script>").flush();
			// 실패 후 다시 로그인 페이지로 이동
			return "redirect:/login.do";
		}
		session.setAttribute("userId", result);
		String prev_url = (String) session.getAttribute("path");
		System.out.println(prev_url + "컨트롤러에서 ");

		String referer = (String) session.getAttribute("referer");
		System.out.println("로그인 컨트롤러 리퍼럴 세션에서 받은값 =" + referer);
		if (referer == null || referer == "" || referer.equals("")) {
			return "redirect:home.do";
		}
		return "redirect:" + referer;
	}// end

	// 로그아웃
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.do";
	}// end

}
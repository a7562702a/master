package shopping.crud.order;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import shopping.crud.JoinDAO;
import shopping.crud.JoinDTO;

@Controller
public class orderController {
	@Inject
	@Autowired
	orderDAO dao;

	@Autowired
	JoinDAO joinDAO;

	@Autowired
	private ServletContext application;
	private static final Logger logger = LoggerFactory.getLogger(orderController.class);

	@RequestMapping("/order.do")
	public ModelAndView order_write(HttpServletResponse response, HttpSession session, HttpServletRequest request,
			ModelAndView mov) { // 바로구매

		ArrayList<orderDTO> product = new ArrayList<orderDTO>();
		String[] pid = request.getParameterValues("product_id");
		String[] pimg = request.getParameterValues("product_img");
		String[] pname = request.getParameterValues("product_name");
		String[] poption1 = request.getParameterValues("product_option1");
		String[] poption2 = request.getParameterValues("product_option2");
		String[] pcount = request.getParameterValues("count");
		String[] pprice = request.getParameterValues("product_price");

		for (int i = 0; i < pname.length; i++) {
			orderDTO odto = new orderDTO();
			odto.setProduct_id(pid[i]);
			odto.setProduct_img1(pimg[i]);
			odto.setProduct_name(pname[i]);
			odto.setProduct_color(poption1[i]);
			odto.setProduct_size(poption2[i]);
			odto.setCount(Integer.parseInt(pcount[i]));
			odto.setProduct_price(pprice[i]);
			product.add(odto);
			System.out.println(product.get(i).getProduct_color() + product.get(i).getProduct_size());

		}
		System.out.println(product.size());

		String user_id = (String) session.getAttribute("userId");
		JoinDTO userDTO = joinDAO.dbDetail_join(user_id);
		mov.addObject("product", product);
		mov.addObject("user", userDTO);
		mov.setViewName("orderList");
		return mov;
	}// end

	@RequestMapping("/orderInsert.do")
	public String order_insert(HttpServletResponse response, HttpSession session, HttpServletRequest request,
			Model model) {

		String user_id = (String) session.getAttribute("userId");
		String order_num = dao.dbSelectorder(user_id);
		String a = null;
		if (order_num == "" || order_num == null) {
			a = "0";
		} else {
			int cnt1 = user_id.length();
			a = order_num.substring(cnt1);
			System.out.println(user_id+"의 지금까지 주문수:" + a);
		}
		int count = Integer.parseInt(a);
		count++;

		System.out.println(String.format("%05d", count));
		String ordernum = user_id + String.format("%05d", count);
		System.out.println("hi:" + ordernum);

		// ArrayList<orderDTO> order = new ArrayList<orderDTO>();
		String[] pid = request.getParameterValues("product_id");
		String[] pimg = request.getParameterValues("product_img");
		String[] pname = request.getParameterValues("product_name");
		String[] poption1 = request.getParameterValues("product_option1");
		String[] poption2 = request.getParameterValues("product_option2");
		String[] pcount = request.getParameterValues("count");
		String[] pprice = request.getParameterValues("product_price");

		for (int i = 0; i < pname.length; i++) {
			orderDTO odto = new orderDTO();

			odto.setProduct_id(pid[i]);
			odto.setProduct_img(pimg[i]);
			odto.setProduct_name(pname[i]);
			odto.setOrder_num(ordernum);
			odto.setOption1(poption1[i]);
			odto.setOption2(poption2[i]);
			odto.setCount(Integer.parseInt(pcount[i]));
			odto.setPrice(Integer.parseInt(pprice[i]));
			odto.setUser_id(user_id);
			odto.setUser_name(request.getParameter("user_name"));
			odto.setUser_address1(request.getParameter("user_address1"));
			odto.setUser_address2(request.getParameter("user_address2"));
			odto.setUser_phone(request.getParameter("user_phone"));
			// order.add(odto);
			try {
				dao.dbInsert(odto);
				System.out.println("inserted");
			} catch (Exception e) {
				System.out.println("error: " + e);
				break;
			}

		} // for end

		try {

			response.setContentType("text/html; charset=utf-8");
			response.getWriter().append("<script> var result=confirm('상품이 결제되었습니다. 주문내역을 확인하시겠습니까?);"
							+ "if(result){location.href='my_page.do';}"
							+ "else{ location.href='home.do'; } </script>").flush();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "my_page.do";
	}// end

	@RequestMapping("/orderList.do")
	public String order_list(HttpSession session, HttpServletRequest request, Model model) {
		// List<orderDTO> product=dao.dbSelectproduct();
		String data = (String) session.getAttribute("userId");
		List<orderDTO> order = dao.dbSelectorder1(data);
		System.out.println(data);
		orderDTO users = dao.dbSelectusers(data);
		System.out.println(users);
		model.addAttribute("orders", order);
		model.addAttribute("users", users);

		return "my_page.do";
	}// end

	@RequestMapping("/orderDelete.do")
	public String order_delete(HttpServletRequest request) {
		int data = Integer.parseInt(request.getParameter("idx"));
		dao.dbdelete(data);
		return "redirect:/orderList.do";
	}// end

}// BoardReplyController class END

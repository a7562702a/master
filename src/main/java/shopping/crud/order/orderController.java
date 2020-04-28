package shopping.crud.order;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class orderController {

	@Autowired
	orderDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(orderController.class);
	
	@RequestMapping(value="/order.do", method = RequestMethod.GET)
	public String order_insert(orderDTO dto) {
		
		return "orderList";
	}//end
	
	
}//BoardReplyController class END



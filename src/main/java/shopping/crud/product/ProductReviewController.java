package shopping.crud.product;

import java.util.List;

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
public class ProductReviewController {

	@Autowired
	ProductReviewDAO pdao;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductReviewController.class);
	
	
	
	@RequestMapping(value="/productReviewList.do")
	public String product_select(Model model) {
		List<ProductQuestDTO> PD = pdao.dbSelect();
		model.addAttribute("PD",PD);
		return "ProductReviewList";
	}//end
	

}//BoardReplyController class END



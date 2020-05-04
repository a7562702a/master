package shopping.crud.product;

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
public class ProductQuestRepController {

	@Autowired
	ProductQuestRepDAO rdao;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductQuestRepController.class);
	
	@RequestMapping(value="/questreply.do", method=RequestMethod.GET)
	public String reply_insert(ProductQuestRepDTO dto) {
		rdao.dbInsert(dto);
		return "redirect:/productDetail.do?pid=101a00001";
	}//end
	
	@RequestMapping(value="/productquestrep_list.do", method=RequestMethod.GET)
	public ModelAndView reply_select(@RequestParam("pqr") int pqr) {
		ModelAndView mav = new ModelAndView();
		List<ProductQuestRepDTO> rPQ = rdao.dbSelect(pqr);
		mav.addObject("rPQ", rPQ);
		mav.setViewName("Productquest_rep");
		return mav;
	}//end
	
	
	@RequestMapping(value="/questreply_delete.do", method=RequestMethod.GET)
	public String reply_delete(@RequestParam("qrd") int qrd) {
	  rdao.dbDelete(qrd);
	  return "redirect:/productDetail.do?pid=101a00001";
	}//end
	
		
//	@RequestMapping(value="/boardreply_edit.do")
//	public String reply_preEdit(@RequestParam("rhobby_idx") int rhobby_idx,@RequestParam("rwriter") String rwriter, @RequestParam("rmemo") String rmemo, @RequestParam("hobby_idx") int hobby_idx  ){
//		ProductQuestRepDTO rdto = new ProductQuestRepDTO();
//		rdto.setRhobby_idx(rhobby_idx);
//		rdto.setRwriter(rwriter);
//		rdto.setRmemo(rmemo);
//		rdto.setHobby_idx(hobby_idx);
//		System.out.println("��Ʈ�Ѽ���:  "+rdto.getRhobby_idx()+" "+rdto.getRwriter()+" "+rdto.getRmemo()+" "+rdto.getHobby_idx());
//		rdao.dbUpdate(rdto);
//		return "redirect:/boardDetail.do?idx=" + rdto.getHobby_idx();
//	}//end
	
}//BoardReplyController class END



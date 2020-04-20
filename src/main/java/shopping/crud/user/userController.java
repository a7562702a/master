package shopping.crud.user;

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
public class userController {

	@Autowired
	BoardReplyDAO rdao;
	
	private static final Logger logger = LoggerFactory.getLogger(userController.class);
	
	@RequestMapping(value="/boardreply.do", method = RequestMethod.GET)
	public String reply_insert(BoardReplyDTO dto) {
		rdao.dbInsert(dto);
		return "redirect:/boardDetail.do?Gidx="+dto.getHobby_idx();
	}//end
	
	@RequestMapping(value="/boardreply_list.do", method=RequestMethod.GET)
	public ModelAndView reply_select(@RequestParam("idx") int idx) {
		ModelAndView mav = new ModelAndView();
		List<BoardReplyDTO> rLG = rdao.dbSelect(idx);
		mav.addObject("rLG",rLG);
		mav.setViewName("board_reply");
		return mav;
	}//end
	
	
	@RequestMapping(value="/boardreply_delete.do")
	public String reply_delete(@RequestParam("Ridx") int Ridx,@RequestParam("idx") int idx ) {
	  rdao.dbDelete(Ridx);
	  return "redirect:/boardDetail.do?Gidx="+idx;
	}//end
	
	
	@RequestMapping(value="/boardreply_edit.do")
	public String reply_preEdit(@RequestParam("rhobby_idx") int rhobby_idx,@RequestParam("rwriter") String rwriter, @RequestParam("rmemo") String rmemo, @RequestParam("hobby_idx") int hobby_idx  ){
		BoardReplyDTO rdto = new BoardReplyDTO();
		rdto.setRhobby_idx(rhobby_idx);
		rdto.setRwriter(rwriter);
		rdto.setRmemo(rmemo);
		rdto.setHobby_idx(hobby_idx);
		rdao.dbUpdate(rdto);
		return "redirect:/boardDetail.do?Gidx=" + rdto.getHobby_idx();
	}//end
	
}//BoardReplyController class END



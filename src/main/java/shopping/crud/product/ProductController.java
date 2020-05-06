package shopping.crud.product;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

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
public class ProductController {

	@Inject
	@Autowired
	ProductDAO pdao;

	@Autowired
	private ServletContext application;

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@RequestMapping(value = "/productList.do", method = RequestMethod.GET)
	public String showList(HttpServletRequest request, Model model) {
		int categoryNum = Integer.parseInt(request.getParameter("category"));
		List<ProductDTO> list = pdao.productList(categoryNum);
		model.addAttribute("productList", list);
		return "productList";
	}// List end

	@RequestMapping(value = "/productDetail.do", method = RequestMethod.GET)
	public String product_detail(@RequestParam("pid") String data, Model model) {
		System.out.println("조회할 데이터: "+ data);
		ProductDTO dto = pdao.productDetail(data);
		System.out.println("조회된 데이터: "+dto.getProduct_id());
		System.out.println("colors: "+dto.getProduct_color());
		System.out.println("sizes: "+dto.getProduct_size());
		model.addAttribute("prid",data);
		model.addAttribute("dto", dto);

		return "productDetail";
	}// Detail end
	

	
	/*------------------------------------------------------------------------

	@RequestMapping("/productInsert.do")
	public String board_insert(ProductDTO dto) {

		  
	  String path=application.getRealPath("/resources/upload");
	  System.out.println(path);
	  String img=dto.getUpload_f().getOriginalFilename();
	  File file = new File(path, img); //경로에 파일화
	  
	  try{
	    dto.getUpload_f().transferTo(file);
	  }catch(Exception ex){ System.out.println("파일에러:"+ex); }

	  
	  //upload_f데이터를 물리적파일화 img_file_name필드연결
	  dto.setImg_file_name(img); 
	  System.out.println("컨트롤 물리적파일="+dto.getImg_file_name());
	  dao.dbInsert(dto); 
	  return "redirect:/boardList.do";
	}//end
	
	
------------------------------------------------------------------------*/
	
	@RequestMapping("/productDelete.do")
	public String board_delete(@RequestParam("pid") int data, Model model) {
	  int result =pdao.dbDelete(data);
	  if(result>0) return "redirect:/productList.do";
	  else return "redirect:/productDetail.do";
	}//detail end
	

}// ProductController class END

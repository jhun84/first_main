package first.sample.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.ProductService;

@Controller
public class ProductController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="productService")
	private ProductService productService;
	
	@RequestMapping(value="/sample/openProductList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productList");
	     
	    Map<String,Object> resultMap = productService.productBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openProductSearch.do", method=RequestMethod.GET)
	public ModelAndView openBoardSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productList");
	    System.out.println("Call product_search");
	     
	    Map<String,Object> resultMap = productService.productBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openProductWrite.do")
	public ModelAndView openProductWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productWrite");
	     
	    return mv;
	}
	
}

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
	public ModelAndView openProductSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productList");
	     
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
	@RequestMapping(value="/sample/insertProduct.do")
	public ModelAndView insertProduct(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openProductList.do");
	     
	    productService.insertProduct(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openProductDetail.do")
	public ModelAndView openProductDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productDetail");
	     
	    Map<String,Object> map = productService.selectProductDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openProductUpdate.do")
	public ModelAndView openProductUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/product/productUpdate");
	     
	    Map<String,Object> map = productService.selectProductDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/sample/updateProduct.do")
	public ModelAndView updateProduct(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openProductDetail.do");
	     
	    productService.updateProduct(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/sample/deleteProduct.do")
	public ModelAndView deleteProduct(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openProductList.do");
	     
	    productService.deleteProduct(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/product/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			productService.ckeditorImageUpload(request, response, upload);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

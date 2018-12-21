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
import first.sample.service.ServiceService;

@Controller
public class ServiceController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="serviceService")
	private ServiceService serviceService;
	
	@RequestMapping(value="/sample/openServiceList.do")
	public ModelAndView openServiceList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceList");
	     
	    Map<String,Object> resultMap = serviceService.serviceBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openServiceearch.do", method=RequestMethod.GET)
	public ModelAndView openServiceSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceList");
	     
	    Map<String,Object> resultMap = serviceService.serviceBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openServiceWrite.do")
	public ModelAndView openServiceWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/sample/insertService.do")
	public ModelAndView insertService(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openServiceList.do");
	     
	    serviceService.insertService(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openServiceDetail.do")
	public ModelAndView openServiceDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceDetail");
	     
	    Map<String,Object> map = serviceService.selectServiceDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openServiceUpdate.do")
	public ModelAndView openServiceUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceUpdate");
	     
	    Map<String,Object> map = serviceService.selectServiceDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/sample/updateService.do")
	public ModelAndView updateService(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openServiceDetail.do");
	     
	    serviceService.updateService(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/sample/deleteService.do")
	public ModelAndView deleteService(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openServiceList.do");
	     
	    serviceService.deleteService(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/service/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			System.out.println("Call ck image upload");
			serviceService.ckeditorImageUpload(request, response, upload);
			System.out.println("Called ck image upload");

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

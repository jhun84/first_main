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
import first.sample.service.CooperService;
import first.sample.service.ProductService;
import first.sample.service.S_CooperService;

@Controller
public class S_CooperController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="s_cooperService")
	private S_CooperService s_cooperService;
	
	@RequestMapping(value="/s_cooper/openS_CooperList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/social_cooper/s_cooperList");
	     
	    Map<String,Object> resultMap = s_cooperService.s_cooperBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/openS_CooperSearch.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView openS_CooperSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/social_cooper/s_cooperList");
	     
	    Map<String,Object> resultMap = s_cooperService.s_cooperBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/openS_CooperWrite.do")
	public ModelAndView openS_CooperWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/social_cooper/s_cooperWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/insertS_Cooper.do")
	public ModelAndView insertS_Cooper(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_cooper/openS_CooperList.do");
	     
	    s_cooperService.insertS_Cooper(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/openS_CooperDetail.do")
	public ModelAndView openS_CooperDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/social_cooper/s_cooperDetail");
	     
	    Map<String,Object> map = s_cooperService.selectS_CooperDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/openS_CooperUpdate.do")
	public ModelAndView openS_CooperUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/social_cooper/s_cooperUpdate");
	     
	    Map<String,Object> map = s_cooperService.selectS_CooperDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/s_cooper/updateS_Cooper.do")
	public ModelAndView updateS_Cooper(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_cooper/openS_CooperDetail.do");
	     
	    s_cooperService.updateS_Cooper(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/s_cooper/deleteS_Cooper.do")
	public ModelAndView deleteS_Cooper(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_cooper/openS_CooperList.do");
	     
	    s_cooperService.deleteS_Cooper(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/s_cooper/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			s_cooperService.ckeditorImageUpload(request, response, upload);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

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
import first.sample.service.SenterpriseService;

@Controller
public class SenterpriseController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="senterpriseService")
	private SenterpriseService senterpriseService;
	
	@RequestMapping(value="/s_enterprise/openSenterpriseList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/s_enterprise/senterpriseList");
	     
	    Map<String,Object> resultMap = senterpriseService.senterBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/openSenterpriseDetail.do")
	public ModelAndView openSenterpriseDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/s_enterprise/senterpriseDetail");
	     
	    Map<String,Object> map = senterpriseService.selectSenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/openSenterpriseWrite.do")
	public ModelAndView openSenterpriseWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/s_enterprise/senterpriseWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/openSenterpriseUpdate.do")
	public ModelAndView openSenterpriseUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/s_enterprise/senterpriseUpdate");
	    
	    Map<String,Object> map = senterpriseService.selectSenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/insertSenterprise.do")
	public ModelAndView insertSenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_enterprise/openSenterpriseList.do");
	    
	    senterpriseService.insertSenterprise(commandMap.getMap(), request);	     
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/updateSenterprise.do")
	public ModelAndView updateSenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_enterprise/openSenterpriseDetail.do");	    
	    senterpriseService.updateSenterprise(commandMap.getMap(), request);
	    
	    mv.addObject("IDX", commandMap.get("IDX"));	    
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/addYear_insert.do")
	public ModelAndView addYear_insert(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_enterprise/openSenterpriseDetail.do");	    
	    senterpriseService.addYear_insert(commandMap.getMap(), request);
	    
	    mv.addObject("IDX", commandMap.get("IDX"));	    
	    return mv;
	}
	@RequestMapping(value="/s_enterprise/deleteSenterprise.do")
	public ModelAndView deleteSenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/s_enterprise/openSenterpriseList.do");
	    
	    senterpriseService.deleteSenterprise(commandMap.getMap(), request);	     
	    return mv;
	}
	
}

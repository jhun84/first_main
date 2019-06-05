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
import first.sample.service.Pre_VenterpriseService;

@Controller
public class Pre_VenterpriseController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="pre_venterpriseService")
	private Pre_VenterpriseService pre_venterpriseService;
	
	@RequestMapping(value="/prev_enterprise/openPreVenterpriseList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/prev_enterprise/pre_venterpriseList");
	     
	    Map<String,Object> resultMap = pre_venterpriseService.pre_venterBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/openPreVenterpriseDetail.do")
	public ModelAndView openPreVenterpriseDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/prev_enterprise/pre_venterpriseDetail");
	     
	    Map<String,Object> map = pre_venterpriseService.selectPreVenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/openPreVenterpriseWrite.do")
	public ModelAndView openPreVenterpriseWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/prev_enterprise/pre_venterpriseWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/openPreVenterpriseUpdate.do")
	public ModelAndView openVenterpriseUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/prev_enterprise/pre_venterpriseUpdate");
	    
	    Map<String,Object> map = pre_venterpriseService.selectPreVenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/insertPreVenterprise.do")
	public ModelAndView insertPreVenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/prev_enterprise/openPreVenterpriseList.do");
	    
	    pre_venterpriseService.insertPreVenterprise(commandMap.getMap(), request);	     
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/addYear_insert.do")
	public ModelAndView addYear_insert(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/prev_enterprise/openPreVenterpriseDetail.do");	    
	    pre_venterpriseService.addYear_insert(commandMap.getMap(), request);
	    
	    mv.addObject("IDX", commandMap.get("IDX"));	    
	    return mv;
	}
	@RequestMapping(value="/prev_enterprise/updatePre_Venterprise.do")
	public ModelAndView updateSenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/prev_enterprise/openPreVenterpriseDetail.do");	    
	    pre_venterpriseService.updatePre_Venterprise(commandMap.getMap(), request);
	    
	    mv.addObject("IDX", commandMap.get("IDX"));	    
	    return mv;
	}
		
}

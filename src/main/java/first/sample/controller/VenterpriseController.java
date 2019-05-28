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
import first.sample.service.VenterpriseService;

@Controller
public class VenterpriseController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="venterpriseService")
	private VenterpriseService venterpriseService;
	
	@RequestMapping(value="/v_enterprise/openVenterpriseList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/v_enterprise/venterpriseList");
	     
	    Map<String,Object> resultMap = venterpriseService.venterBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/v_enterprise/openVenterpriseDetail.do")
	public ModelAndView openVenterpriseDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/v_enterprise/venterpriseDetail");
	     
	    Map<String,Object> map = venterpriseService.selectVenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/v_enterprise/openVenterpriseWrite.do")
	public ModelAndView openVenterpriseWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/v_enterprise/venterpriseWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/v_enterprise/openVenterpriseUpdate.do")
	public ModelAndView openVenterpriseUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/v_enterprise/venterpriseUpdate");
	    
	    Map<String,Object> map = venterpriseService.selectVenterpriseDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/v_enterprise/insertVenterprise.do")
	public ModelAndView insertVenterprise(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/v_enterprise/openVenterpriseList.do");
	    
	    venterpriseService.insertVenterprise(commandMap.getMap(), request);	     
	    return mv;
	}
	@RequestMapping(value="/v_enterprise/openVenter_MoneyWrite.do")
	public ModelAndView openVenter_MoneyWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/v_enterprise/venter_moneyWrite");
	     
	    return mv;
	}	
		
}

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
import first.sample.service.Pre_CertiService;

@Controller
public class Pre_CertiController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="pre_certiService")
	private Pre_CertiService pre_certiService;
	
	@RequestMapping(value="/pre_certi/openPre_CertifiedList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certified_List");
	     
	    Map<String,Object> resultMap = pre_certiService.pre_certiBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/openPre_CertiDetail.do")
	public ModelAndView openPre_CertiDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certiDetail");
	     
	    Map<String,Object> map = pre_certiService.selectPre_CertiDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	    mv.addObject("people_list", map.get("people_list"));
	    mv.addObject("vul_info", map.get("vul_info"));
	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/openPre_Certi_CompanyWrite.do")
	public ModelAndView openPre_Certi_CompanyWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certi_companyWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/openPre_Certi_CompanyUpdate.do")
	public ModelAndView openPre_Certi_CompanyUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certi_companyUpdate");
	    
	    Map<String,Object> map = pre_certiService.selectPre_CertiDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	    mv.addObject("people_list", map.get("people_list"));
	    mv.addObject("vul_info", map.get("vul_info"));
	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/insertPre_Certified_Company.do")
	public ModelAndView insertPre_Certified_Company(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/pre_certi/openPre_CertifiedList.do");
	    
	    pre_certiService.insertPre_Certi_company(commandMap.getMap(), request);	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/openPre_Certi_MoneyWrite.do")
	public ModelAndView openPre_Certi_MoneyWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certi_moneyWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/pre_certi/openPre_Certi_PeopleWrite.do")
	public ModelAndView openPre_Certi_PeopleWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/pre_certi/pre_certi_peopleWrite");
	     
	    return mv;
	}
	
		
}

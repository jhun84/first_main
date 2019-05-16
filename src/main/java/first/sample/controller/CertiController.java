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
import first.sample.service.CertiService;

@Controller
public class CertiController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="certiService")
	private CertiService certiService;
	
	@RequestMapping(value="/certi/openCertifiedList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certified_List");
	     
	    Map<String,Object> resultMap = certiService.certiBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/certi/openCertiDetail.do")
	public ModelAndView openCertiDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certiDetail");
	     
	    Map<String,Object> map = certiService.selectCertiDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	    mv.addObject("people_list", map.get("people_list"));
	    mv.addObject("vul_info", map.get("vul_info"));
	     
	    return mv;
	}
	@RequestMapping(value="/certi/openCerti_CompanyWrite.do")
	public ModelAndView openCerti_CompanyWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certi_companyWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/certi/openCerti_CompanyUpdate.do")
	public ModelAndView openCerti_CompanyUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certi_companyUpdate");
	    
	    Map<String,Object> map = certiService.selectCertiDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	    mv.addObject("people_list", map.get("people_list"));
	    mv.addObject("vul_info", map.get("vul_info"));
	     
	    return mv;
	}
	@RequestMapping(value="/certi/insertCertified_Company.do")
	public ModelAndView insertCertified_Company(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/certi/openCertifiedList.do");
	    
	    certiService.insertCerti_company(commandMap.getMap(), request);	     
	    return mv;
	}
	@RequestMapping(value="/certi/openCerti_MoneyWrite.do")
	public ModelAndView openCerti_MoneyWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certi_moneyWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/certi/openCerti_PeopleWrite.do")
	public ModelAndView openCerti_PeopleWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/certi/certi_peopleWrite");
	     
	    return mv;
	}
	
}

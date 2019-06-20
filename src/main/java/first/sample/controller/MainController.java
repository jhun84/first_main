package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.MainService;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="mainService")
	private MainService mainService;
	
	@RequestMapping(value="/main/selectNoticeList.do")
	public ModelAndView selectNoticeList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/main/main_view");
	     
	    Map<String,Object> map = mainService.selectMainDetail(commandMap.getMap());	    
	    mv.addObject("list", map.get("list"));
	    mv.addObject("product_list", map.get("product_list"));
	    mv.addObject("service_list", map.get("service_list"));
	     
	    return mv;
	}
}

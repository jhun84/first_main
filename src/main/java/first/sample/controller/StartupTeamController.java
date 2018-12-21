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
import first.sample.service.StartupTeamService;

@Controller
public class StartupTeamController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="startupTeamService")
	private StartupTeamService startupTeamService;
	
	@RequestMapping(value="/sample/open_StartupTeamList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_team/startup_teamList");
	     
	    Map<String,Object> resultMap = startupTeamService.startupTeamBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/open_startup_teamSearch.do", method=RequestMethod.GET)
	public ModelAndView openCooperSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_team/startup_teamList");
	     
	    Map<String,Object> resultMap = startupTeamService.startupTeamBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/open_startup_teamWrite.do")
	public ModelAndView openStartupTeamWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_team/startup_teamWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/sample/insertStartupTeam.do")
	public ModelAndView insertStartupTeam(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/open_StartupTeamList.do");
	     
	    startupTeamService.insertStartupTeam(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openStartupTeamDetail.do")
	public ModelAndView openStartupTeamDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_team/startup_teamDetail");
	     
	    Map<String,Object> map = startupTeamService.selectStartupTeamDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openStartupTeamUpdate.do")
	public ModelAndView openStartupTeamUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_team/startup_teamUpdate");
	     
	    Map<String,Object> map = startupTeamService.selectStartupTeamDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/sample/updateStartupTeam.do")
	public ModelAndView updateStartupTeam(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openStartupTeamDetail.do");
	     
	    startupTeamService.updateStartupTeam(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/sample/deleteStartupTeam.do")
	public ModelAndView deleteStartupTeam(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/open_StartupTeamList.do");
	     
	    startupTeamService.deleteStartupTeam(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/startup_team/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			startupTeamService.ckeditorImageUpload(request, response, upload);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

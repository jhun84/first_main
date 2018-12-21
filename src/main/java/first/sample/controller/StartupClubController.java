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
import first.sample.service.StartupClubService;

@Controller
public class StartupClubController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="startupClubService")
	private StartupClubService startupClubService;
	
	@RequestMapping(value="/sample/open_StartupClubList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_club/startup_clubList");
	     
	    Map<String,Object> resultMap = startupClubService.startupClubBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/open_startup_clubSearch.do", method=RequestMethod.GET)
	public ModelAndView openStartupClubSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_club/startup_clubList");
	     
	    Map<String,Object> resultMap = startupClubService.startupClubBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/open_startup_clubWrite.do")
	public ModelAndView openStartupClubWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_club/startup_clubWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/sample/insertStartupClub.do")
	public ModelAndView insertStartupClub(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/open_StartupClubList.do");
	     
	    startupClubService.insertStartupClub(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openStartupClubDetail.do")
	public ModelAndView openStartupClubDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_club/startup_clubDetail");
	     
	    Map<String,Object> map = startupClubService.selectStartupClubDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/sample/openStartupClubUpdate.do")
	public ModelAndView openStartupClubUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/startup_club/startup_clubUpdate");
	     
	    Map<String,Object> map = startupClubService.selectStartupClubDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/sample/updateStartupClub.do")
	public ModelAndView updateStartupClub(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/openStartupClubDetail.do");
	     
	    startupClubService.updateStartupClub(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/sample/deleteStartupClub.do")
	public ModelAndView deleteStartupClub(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/sample/open_StartupClubList.do");
	     
	    startupClubService.deleteStartupClub(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/startup_club/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			startupClubService.ckeditorImageUpload(request, response, upload);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

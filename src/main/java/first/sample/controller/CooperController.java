package first.sample.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.sl.usermodel.*;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.CooperService;
import first.excel.vo.*;

@Controller
public class CooperController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="cooperService")
	private CooperService cooperService;
	
	@RequestMapping(value="/cooper/openCooperList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/cooper/cooperList");
	     
	    Map<String,Object> resultMap = cooperService.cooperBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/openCooperSearch.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView openCooperSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/cooper/cooperList");
	     
	    Map<String,Object> resultMap = cooperService.cooperBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/openCooperWrite.do")
	public ModelAndView openCooperWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/cooper/cooperWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/jusoPopup.do")
	public ModelAndView openjusoPopup() throws Exception{
	    ModelAndView mv = new ModelAndView("/include/jusoPopup");
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/insertCooper.do")
	public ModelAndView insertCooper(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/cooper/openCooperList.do");
	     
	    cooperService.insertCooper(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/openCooperDetail.do")
	public ModelAndView openCooperDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/cooper/cooperDetail");
	     
	    Map<String,Object> map = cooperService.selectCooperDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/openCooperUpdate.do")
	public ModelAndView openCooperUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/cooper/cooperUpdate");
	     
	    Map<String,Object> map = cooperService.selectCooperDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/cooper/updateCooper.do")
	public ModelAndView updateCooper(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/cooper/openCooperDetail.do");
	     
	    cooperService.updateCooper(commandMap.getMap(), request);
	    mv.addObject("SEQ_NO", commandMap.get("SEQ_NO")); 
	    return mv;
	}
	@RequestMapping(value="/cooper/deleteCooper.do")
	public ModelAndView deleteCooper(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/cooper/openCooperList.do");
	     
	    cooperService.deleteCooper(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/cooper/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {
			cooperService.ckeditorImageUpload(request, response, upload);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
			
}

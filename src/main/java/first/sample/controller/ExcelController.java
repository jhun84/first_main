package first.sample.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.CooperService;

@Controller
public class ExcelController {
	@Resource(name="cooperService")
	private CooperService cooperService;
	
	@RequestMapping(value = "/cooper/cooper_excelDown.do")
	public ModelAndView exportToExcel(CommandMap commandMap) throws Exception {                
		ModelAndView mv = new ModelAndView("/excel/resultListExcel");
		
		Map<String,Object> resultMap = cooperService.cooperBoardList(commandMap.getMap());	     	   
	    mv.addObject("list", resultMap.get("result"));
		
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
		Calendar c = Calendar.getInstance();
		String day = fmt.format(c.getTime());

		mv.addObject("fileName", "resultList_" + day);
		return mv;
	}
}

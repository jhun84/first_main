package first.sample.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.sample.service.CertiService;
import first.sample.service.CooperService;
import first.sample.service.Pre_CertiService;
import first.sample.service.Pre_VenterpriseService;
import first.sample.service.S_CooperService;
import first.sample.service.SenterpriseService;
import first.sample.service.StartupClubService;
import first.sample.service.StartupTeamService;
import first.sample.service.VenterpriseService;

@Controller
public class ExcelController {
	@Resource(name="cooperService")
	private CooperService cooperService;
	
	@Resource(name="s_cooperService")
	private S_CooperService s_cooperService;
	
	@Resource(name="startupClubService")
	private StartupClubService startupClubService;
	
	@Resource(name="startupTeamService")
	private StartupTeamService startupTeamService;
	
	@Resource(name="venterpriseService")
	private VenterpriseService venterpriseService;
	
	@Resource(name="pre_venterpriseService")
	private Pre_VenterpriseService pre_venterpriseService;
	
	@Resource(name="senterpriseService")
	private SenterpriseService senterpriseService;
	
	@Resource(name="certiService")
	private CertiService certiService;
	
	@Resource(name="pre_certiService")
	private Pre_CertiService pre_certiService;
	
	//Çùµ¿Á¶ÇÕ ¿¢¼¿´Ù¿î·Îµå
	@RequestMapping(value = "/cooper/ExcelDown.do")
	public ModelAndView cooper_exportToExcel(CommandMap commandMap) throws Exception {                
		ModelAndView mv = new ModelAndView("/excel/CooperListExcel");
		
		Map<String,Object> resultMap = cooperService.cooperExcelList(commandMap.getMap());	     	   
	    mv.addObject("list", resultMap.get("list"));
		
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
		Calendar c = Calendar.getInstance();
		String day = fmt.format(c.getTime());

		mv.addObject("fileName", "CooperList_" + day);
		return mv;
	}
	//»çÈ¸ÀûÇùµ¿Á¶ÇÕ ¿¢¼¿´Ù¿î·Îµå
	@RequestMapping(value = "/s_cooper/ExcelDown.do")
	public ModelAndView scooper_exportToExcel(CommandMap commandMap) throws Exception {                
		ModelAndView mv = new ModelAndView("/excel/S_CooperListExcel");
		
		Map<String,Object> resultMap = s_cooperService.s_cooperExcelList(commandMap.getMap());	     	   
	    mv.addObject("list", resultMap.get("list"));
		
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
		Calendar c = Calendar.getInstance();
		String day = fmt.format(c.getTime());

		mv.addObject("fileName", "S_CooperList_" + day);
		return mv;
	}
	//»çÈ¸ÀûÀ°¼ºµ¿¾Æ¸® ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/club/ExcelDown.do")
    public ModelAndView startup_club_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/Startup_clubListExcel");
    	
    	Map<String,Object> resultMap = startupClubService.startupClubExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "startup_ClubList_" + day);
    	return mv;
    }
    //»çÈ¸ÀûÀ°¼ºÂý¾÷ÆÀ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/team/ExcelDown.do")
    public ModelAndView startup_team_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/Startup_teamListExcel");
    	
    	Map<String,Object> resultMap = startupTeamService.startupTeamExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "startup_TeamList_" + day);
    	return mv;
    }
    //¸¶À»±â¾÷ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/v_enterprise/ExcelDown.do")
    public ModelAndView v_enterprise_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/V_enterprise_ListExcel");
    	
    	Map<String,Object> resultMap = venterpriseService.venterExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "Venterprise_TeamList_" + day);
    	return mv;
    }
    //¿¹ºñ¸¶À»±â¾÷ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/prev_enterprise/ExcelDown.do")
    public ModelAndView prev_enterprise_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/Prev_enterprise_ListExcel");
    	
    	Map<String,Object> resultMap = pre_venterpriseService.pre_venterExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "Prev_enterprise_TeamList_" + day);
    	return mv;
    }
    //ÀÚÈ°±â¾÷ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/s_enterprise/ExcelDown.do")
    public ModelAndView s_enterprise_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/S_enterprise_ListExcel");
    	
    	Map<String,Object> resultMap = senterpriseService.senterExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "S_enterprise_TeamList_" + day);
    	return mv;
    }
    //ÀÎÁõ»çÈ¸Àû±â¾÷ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/certi/ExcelDown.do")
    public ModelAndView certi_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/Certi_ListExcel");
    	
    	Map<String,Object> resultMap = certiService.certiExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "CertiList_" + day);
    	return mv;
    }
    //¿¹ºñÀÎÁõ»çÈ¸Àû±â¾÷ ¿¢¼¿´Ù¿î·Îµå
    @RequestMapping(value = "/pre_certi/ExcelDown.do")
    public ModelAndView pre_certi_exportToExcel(CommandMap commandMap) throws Exception {                
    	ModelAndView mv = new ModelAndView("/excel/Pre_certi_ListExcel");
    	
    	Map<String,Object> resultMap = pre_certiService.pre_certiExcelList(commandMap.getMap());	     	   
        mv.addObject("list", resultMap.get("list"));
    	
    	SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
    	Calendar c = Calendar.getInstance();
    	String day = fmt.format(c.getTime());
    
    	mv.addObject("fileName", "Pre_CertiList_" + day);
    	return mv;
    }
}


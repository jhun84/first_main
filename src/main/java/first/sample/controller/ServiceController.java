package first.sample.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.sample.service.ProductService;
import first.sample.service.ServiceService;

@Controller
public class ServiceController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="serviceService")
	private ServiceService serviceService;
	
	@RequestMapping(value="/service/openServiceList.do")
	public ModelAndView openServiceList(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceList");
	     
	    Map<String,Object> resultMap = serviceService.serviceBoardList(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/service/openServiceSearch.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView openServiceSearch(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceList");
	     
	    Map<String,Object> resultMap = serviceService.serviceBoardSearch(commandMap.getMap());
	     
	    mv.addObject("paginationInfo", (PaginationInfo)resultMap.get("paginationInfo"));
	    mv.addObject("list", resultMap.get("result"));
	     
	    return mv;
	}
	@RequestMapping(value="/service/openServiceWrite.do")
	public ModelAndView openServiceWrite(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceWrite");
	     
	    return mv;
	}
	@RequestMapping(value="/service/insertService.do")
	public ModelAndView insertService(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/service/openServiceList.do");
	     
	    serviceService.insertService(commandMap.getMap(), request);
	     
	    return mv;
	}
	@RequestMapping(value="/service/openServiceDetail.do")
	public ModelAndView openServiceDetail(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceDetail");
	     
	    Map<String,Object> map = serviceService.selectServiceDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	@RequestMapping(value="/service/openServiceUpdate.do")
	public ModelAndView openServiceUpdate(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("/service/serviceUpdate");
	     
	    Map<String,Object> map = serviceService.selectServiceDetail(commandMap.getMap());
	    mv.addObject("map", map.get("map"));
	    mv.addObject("list", map.get("list"));
	     
	    return mv;
	}
	 
	@RequestMapping(value="/service/updateService.do")
	public ModelAndView updateService(CommandMap commandMap, HttpServletRequest request) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/service/openServiceDetail.do");
	     
	    serviceService.updateService(commandMap.getMap(), request);
	    mv.addObject("IDX", commandMap.get("IDX")); 
	    return mv;
	}
	@RequestMapping(value="/service/deleteService.do")
	public ModelAndView deleteService(CommandMap commandMap) throws Exception{
	    ModelAndView mv = new ModelAndView("redirect:/service/openServiceList.do");
	     
	    serviceService.deleteService(commandMap.getMap());
	     
	    return mv;
	}
	@RequestMapping(value="/service/ckeditorImageUpload.do", method=RequestMethod.POST)
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws     Exception {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-utf-8");

		try {			
			serviceService.ckeditorImageUpload(request, response, upload);			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/service/downloadFile.do")
    public void downloadFile(CommandMap commandMap, HttpServletResponse response) throws Exception{
        Map<String,Object> map = serviceService.selectFileInfo(commandMap.getMap());
        String storedFileName = (String)map.get("STORED_FILE_NAME");
        String originalFileName = (String)map.get("ORIGINAL_FILE_NAME");
         
        byte fileByte[] = FileUtils.readFileToByteArray(new File("/home/hosting_users/hunchori/tomcat/webapps/upload/"+storedFileName));
        //byte fileByte[] = FileUtils.readFileToByteArray(new File("/Users/hoonyhun/Documents/Upload/"+storedFileName));
        //byte fileByte[] = FileUtils.readFileToByteArray(new File("C:\\Users\\JeongHun\\workspace\\first\\upload\\"+storedFileName));
        
         
        response.setContentType("application/octet-stream");
        response.setContentLength(fileByte.length);
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(originalFileName,"UTF-8")+"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.getOutputStream().write(fileByte);
         
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }
	
}

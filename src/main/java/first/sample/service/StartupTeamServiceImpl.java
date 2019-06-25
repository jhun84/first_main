package first.sample.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import first.common.util.FileUtils;
import first.sample.dao.*;

@Service("startupTeamService")
public class StartupTeamServiceImpl implements StartupTeamService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="startupTeamDAO")
	private StartupTeamDAO startupTeamDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> startupTeamBoardList(Map<String, Object> map) throws Exception {
	    return startupTeamDAO.startupTeamBoardList(map);
	}
	@Override
	public Map<String, Object> startupTeamExcelList(Map<String, Object> map) throws Exception {	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    	     
	    List<Map<String,Object>> list = startupTeamDAO.startupTeamExcelList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}
	@Override
	public Map<String, Object> startupTeamBoardSearch(Map<String, Object> map) throws Exception {
	    return startupTeamDAO.startupTeamBoardSearch(map);
	}
	@Override
    public void insertStartupTeam(Map<String, Object> map, HttpServletRequest request) throws Exception {
		startupTeamDAO.insertStartupTeam(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectStartupTeamDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = startupTeamDAO.selectStartupTeamDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = sampleDAO.selectFileList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void updateStartupTeam(Map<String, Object> map, HttpServletRequest request) throws Exception{
		startupTeamDAO.updateStartupTeam(map);
	}
	
	@Override
	public void deleteStartupTeam(Map<String, Object> map) throws Exception {
		startupTeamDAO.deleteStartupTeam(map);
	}
	
	@SuppressWarnings("resource")
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception {

		OutputStream out = null;
		PrintWriter printWriter = null;	
		String fileName = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		String uploadPath = FILE_URL + fileName;

		out = new FileOutputStream(new File(uploadPath));
		out.write(bytes);

		String callback = "1";
		printWriter = response.getWriter();

		String fileUrl = SAVE_URL + fileName; //url 寃쎈�
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','�대�몄�瑜� ��濡��� �����듬����.'"
	               + ")</script>");
		printWriter.flush();
	    
	}
	
	
}

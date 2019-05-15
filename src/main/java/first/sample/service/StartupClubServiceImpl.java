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

@Service("startupClubService")
public class StartupClubServiceImpl implements StartupClubService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="startupClubDAO")
	private StartupClubDAO startupClubDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> startupClubBoardList(Map<String, Object> map) throws Exception {
	    return startupClubDAO.startupClubBoardList(map);
	}
	@Override
	public Map<String, Object> startupClubBoardSearch(Map<String, Object> map) throws Exception {
	    return startupClubDAO.startupClubBoardSearch(map);
	}
	@Override
    public void insertStartupClub(Map<String, Object> map, HttpServletRequest request) throws Exception {
		startupClubDAO.insertStartupClub(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectStartupClubDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = startupClubDAO.selectStartupClubDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = sampleDAO.selectFileList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void updateStartupClub(Map<String, Object> map, HttpServletRequest request) throws Exception{
		startupClubDAO.updateStartupClub(map);
	}
	
	@Override
	public void deleteStartupClub(Map<String, Object> map) throws Exception {
		startupClubDAO.deleteStartupClub(map);
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

		String fileUrl = SAVE_URL + fileName; //url 경로
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','이미지를 업로드 하였습니다.'"
	               + ")</script>");
		printWriter.flush();
	    
	}
	
	
}

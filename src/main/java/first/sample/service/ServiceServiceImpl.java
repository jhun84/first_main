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

@Service("serviceService")
public class ServiceServiceImpl implements ServiceService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="serviceDAO")
	private ServiceDAO serviceDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> serviceBoardList(Map<String, Object> map) throws Exception {
	    return serviceDAO.serviceBoardList(map);
	}
	@Override
	public Map<String, Object> serviceBoardSearch(Map<String, Object> map) throws Exception {
	    return serviceDAO.serviceBoardSearch(map);
	}
	@Override
    public void insertService(Map<String, Object> map, HttpServletRequest request) throws Exception {
		serviceDAO.insertService(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectServiceDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = serviceDAO.selectServiceDetail(map);
	    resultMap.put("map", tempMap);
	      
	    return resultMap;
	}

	@Override
	public void updateService(Map<String, Object> map, HttpServletRequest request) throws Exception{
		serviceDAO.updateService(map);
	}
	
	@Override
	public void deleteService(Map<String, Object> map) throws Exception {
		serviceDAO.deleteService(map);
	}
	
	@SuppressWarnings("resource")
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception {

		OutputStream out = null;
		PrintWriter printWriter = null;	
		String fileName = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		String uploadPath = FILE_URL + fileName;

		System.out.println("file_url="+uploadPath);

		out = new FileOutputStream(new File(uploadPath));
		out.write(bytes);

		String callback = "1";
		System.out.println("callback:"+callback);
		printWriter = response.getWriter();

		String fileUrl = SAVE_URL + fileName; //url 경로
		System.out.println("fileurl="+fileUrl);
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','이미지를 업로드 하였습니다.'"
	               + ")</script>");
		printWriter.flush();
	    
	}
	
	
}

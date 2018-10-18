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
import first.sample.dao.SampleDAO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Override
	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
	    return sampleDAO.selectBoardList(map);
	}
	
	@Override
    public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
        sampleDAO.insertBoard(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }

	@Override
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
	    sampleDAO.updateHitCnt(map);
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = sampleDAO.selectBoardDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = sampleDAO.selectFileList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception{
	    sampleDAO.updateBoard(map);
	    sampleDAO.deleteFileList(map);
	    
	    List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map, request);
	    
	    Map<String,Object> tempMap = null;
	    for(int i=0, size=list.size(); i<size; i++){
	        tempMap = list.get(i);
	        if(tempMap.get("IS_NEW").equals("Y")){
	            sampleDAO.insertFile(tempMap);
	        }
	        else{
	            sampleDAO.updateFile(tempMap);
	        }
	    }
	}
	
	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception {
	    sampleDAO.deleteBoard(map);
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

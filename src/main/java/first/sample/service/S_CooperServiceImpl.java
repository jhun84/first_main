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
import first.sample.dao.CooperDAO;
import first.sample.dao.ProductDAO;
import first.sample.dao.S_CooperDAO;
import first.sample.dao.SampleDAO;

@Service("s_cooperService")
public class S_CooperServiceImpl implements S_CooperService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="s_cooperDAO")
	private S_CooperDAO s_cooperDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> s_cooperBoardList(Map<String, Object> map) throws Exception {
	    return s_cooperDAO.s_cooperBoardList(map);
	}
	@Override
	public Map<String, Object> s_cooperBoardSearch(Map<String, Object> map) throws Exception {
	    return s_cooperDAO.s_cooperBoardSearch(map);
	}
	@Override
    public void insertS_Cooper(Map<String, Object> map, HttpServletRequest request) throws Exception {
		s_cooperDAO.insertS_Cooper(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectS_CooperDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = s_cooperDAO.selectS_CooperDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = sampleDAO.selectFileList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void updateS_Cooper(Map<String, Object> map, HttpServletRequest request) throws Exception{
		s_cooperDAO.updateS_Cooper(map);
	}
	
	@Override
	public void deleteS_Cooper(Map<String, Object> map) throws Exception {
		s_cooperDAO.deleteS_Cooper(map);
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

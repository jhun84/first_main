package first.common.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import first.sample.dao.SenterDAO;
 
@Component("fileUtils")
public class FileUtils {
    //private static final String filePath = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
    //private static final String filePath = "/Users/hoonyhun/Documents/Upload/";
	private static final String filePath = "C:\\Users\\JeongHun\\Documents\\Upload";
	@Resource(name="senterDAO")
	private SenterDAO senterDAO;
     
    public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
         
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
         
        //String boardIdx = (String)map.get("IDX");
        String boardIdx = String.valueOf(map.get("IDX"));
                 
        File file = new File(filePath);
        if(file.exists() == false){
            file.mkdirs();
        }
         
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            
            if(multipartFile.isEmpty() == false){
            	originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                String subject = String.valueOf(map.get("subject_0"));
                
                file = new File(filePath + storedFileName);
                multipartFile.transferTo(file);                                
                
                listMap = new HashMap<String,Object>();
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                listMap.put("SUBJECT", subject);
                                                      
                list.add(listMap);                                                 
            }
        }
        return list;
    }
    public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
         
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
         
        //String boardIdx = (String)map.get("IDX");
        String boardIdx = String.valueOf(map.get("IDX"));
        String requestName = null;
        String idx = null;
         
         
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                 
                multipartFile.transferTo(new File(filePath + storedFileName));
                 
                listMap = new HashMap<String,Object>();
                listMap.put("IS_NEW", "Y");
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                list.add(listMap);
            }
            else{
                requestName = multipartFile.getName();
                System.out.println("requestname="+requestName);
                idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
                System.out.println("file_idx="+idx);
                if(map.containsKey(idx) == true && map.get(idx) != null){
                    listMap = new HashMap<String,Object>();
                    listMap.put("IS_NEW", "N");
                    listMap.put("FILE_IDX", map.get(idx));
                    list.add(listMap);
                }
            }
        }
        return list;
    }
    
    public List<Map<String, Object>> parseUpdateInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
        Map<String, Object> FileInfo = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
        String boardIdx = String.valueOf(map.get("IDX"));
        String requestName = null;
        String idx = null;
                 
        	if(map.containsKey("IDX") == true){
        		System.out.println("containskey is true!!");
        	}else{
        		System.out.println("containsKey is false!!");
        	}
        	
         
        return list;
    }

}

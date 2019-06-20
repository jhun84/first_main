package first.common.util;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import first.sample.dao.SenterDAO;
 
@Component("fileUtils")
public class FileUtils {
    private static final String filePath = "/home/hosting_users/hunchori/tomcat/webapps/upload/";
    //private static final String filePath = "/Users/hoonyhun/Documents/Upload/";
	//private static final String filePath = "C:\\Users\\JeongHun\\Pictures\\upload\\";
	
	@Resource(name="senterDAO")
	private SenterDAO senterDAO;
     
    public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
         
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
        String storedFileFullName = null;
        
        //썸네일 가로사이즈
        int thumbnail_width = 100;
        //썸네일 세로사이즈
        int thumbnail_height = 100;
         
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
                storedFileName = CommonUtils.getRandomString();
                storedFileFullName = storedFileName + originalFileExtension;
                
                file = new File(filePath + storedFileFullName);
                multipartFile.transferTo(file);
                
                /****************썸네일 이미지 생성******************/
                //생성할 썸네일파일의 경로+썸네일파일명
                File thumb_file_name = new File(filePath+storedFileName+"_thumb.jpg");
                String thumb_name = storedFileName + "_thumb" + originalFileExtension;
                
                BufferedImage buffer_original_image = ImageIO.read(file);
                BufferedImage buffer_thumbnail_image = new BufferedImage(thumbnail_width, thumbnail_height, BufferedImage.TYPE_3BYTE_BGR);
                Graphics2D graphic = buffer_thumbnail_image.createGraphics();
                graphic.drawImage(buffer_original_image, 0, 0, thumbnail_width, thumbnail_height, null);
                ImageIO.write(buffer_thumbnail_image, "jpg", thumb_file_name);
                System.out.println("썸네일 생성완료");
                /****************썸네일 이미지 생성******************/
                
                listMap = new HashMap<String,Object>();
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileFullName);
                listMap.put("THUMB_FILE_NAME", thumb_name);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                                                      
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
        String storedFileFullName = null;
        
        //썸네일 가로사이즈
        int thumbnail_width = 100;
        //썸네일 세로사이즈
        int thumbnail_height = 100;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
         
        //String boardIdx = (String)map.get("IDX");
        String boardIdx = String.valueOf(map.get("IDX"));
        String requestName = null;
        String idx = null;
        
        File file = new File(filePath);
        if(file.exists() == false){
            file.mkdirs();
        }                 
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString();
                storedFileFullName = storedFileName + originalFileExtension;
                
                file = new File(filePath + storedFileFullName);
                multipartFile.transferTo(file);
                                
                /****************썸네일 이미지 생성******************/
                //생성할 썸네일파일의 경로+썸네일파일명
                File thumb_file_name = new File(filePath+storedFileName+"_thumb.jpg");
                String thumb_name = storedFileName + "_thumb" + originalFileExtension;
                
                BufferedImage buffer_original_image = ImageIO.read(file);
                BufferedImage buffer_thumbnail_image = new BufferedImage(thumbnail_width, thumbnail_height, BufferedImage.TYPE_3BYTE_BGR);
                Graphics2D graphic = buffer_thumbnail_image.createGraphics();
                graphic.drawImage(buffer_original_image, 0, 0, thumbnail_width, thumbnail_height, null);
                ImageIO.write(buffer_thumbnail_image, "jpg", thumb_file_name);
                System.out.println("썸네일 생성완료");
                /****************썸네일 이미지 생성******************/
                 
                listMap = new HashMap<String,Object>();
                listMap.put("IS_NEW", "Y");
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);                
                listMap.put("STORED_FILE_NAME", storedFileFullName);
                listMap.put("THUMB_FILE_NAME", thumb_name);
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
       
}

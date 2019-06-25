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
import first.sample.dao.VenterDAO;

@Service("venterpriseService")
public class VenterpriseServiceImpl implements VenterpriseService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="venterDAO")
	private VenterDAO venterDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> venterBoardList(Map<String, Object> map) throws Exception {
	    return venterDAO.venterBoardList(map);
	}
	@Override
	public Map<String, Object> venterExcelList(Map<String, Object> map) throws Exception {	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	   
	    List<Map<String, Object>> list = venterDAO.venterExcelList(map);
	    resultMap.put("list", list);
	    	  
	    return resultMap;
	}
	@Override
	public Map<String, Object> venterBoardSearch(Map<String, Object> map) throws Exception {
	    return venterDAO.venterBoardSearch(map);
	}
	@Override
    public void insertVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception {
		venterDAO.insertVenterprise(map);
		
		for(int i=0; i<10; i++){
			Map<String, String> years_list = new HashMap<String, String>();
			String boardSeq_no = String.valueOf(map.get("IDX"));
			
			String year_i = String.valueOf(map.get("year_"+i));
		    String ja_mony_i = String.valueOf(map.get("ja_mony_"+i));
		    String me_mony_i = String.valueOf(map.get("me_mony_"+i));
		    String ji_list_i = String.valueOf(map.get("ji_list_"+i));
		    String ji_mony_i = String.valueOf(map.get("ji_mony_"+i));
		    
		    if(!year_i.equals("null")){	
		    	years_list.put("idx", boardSeq_no);
			    years_list.put("years", year_i);
			    years_list.put("ja_mony", ja_mony_i);
			    years_list.put("me_mony", me_mony_i);
			    years_list.put("ji_list", ji_list_i);
			    years_list.put("ji_mony", ji_mony_i);
			    
			    venterDAO.insertVenter_Mony(years_list);
			}  
		}
					
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectVenterpriseDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    
	    Map<String, Object> tempMap = venterDAO.selectVenterpriseDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String, Object>> list = venterDAO.selectVenterprise_Mony(map);
	    resultMap.put("list", list);
	    	  
	    return resultMap;
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
	
		String fileUrl = SAVE_URL + fileName; 
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','complete.'"
	               + ")</script>");
		printWriter.flush();
	    
	}
	@Override
    public void addYear_insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		
		for(int i=0; i<10; i++){
			Map<String, String> years_list = new HashMap<String, String>();
			String boardSeq_no = String.valueOf(map.get("IDX"));
			System.out.println("addyear idx = "+boardSeq_no);
			String year_i = String.valueOf(map.get("year_"+i));
		    String ja_mony_i = String.valueOf(map.get("ja_mony_"+i));
		    String me_mony_i = String.valueOf(map.get("me_mony_"+i));
		    String ji_list_i = String.valueOf(map.get("ji_list_"+i));
		    String ji_mony_i = String.valueOf(map.get("ji_mony_"+i));
		    
		    if(!year_i.equals("null")){	
		    	years_list.put("idx", boardSeq_no);
			    years_list.put("years", year_i);
			    years_list.put("ja_mony", ja_mony_i);
			    years_list.put("me_mony", me_mony_i);
			    years_list.put("ji_list", ji_list_i);
			    years_list.put("ji_mony", ji_mony_i);
			    
			    venterDAO.addYear_insert(years_list);
			}  
		}	
    }
	@Override
    public void updateVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception {
		venterDAO.updateVenterprise(map);
		
		for(int i=0; i<10; i++){
			Map<String, String> years_list = new HashMap<String, String>();
			String boardSeq_no = String.valueOf(map.get("IDX_"+i));
			String year_i = String.valueOf(map.get("year_"+i));
		    String ja_mony_i = String.valueOf(map.get("ja_mony_"+i));
		    String me_mony_i = String.valueOf(map.get("me_mony_"+i));
		    String ji_list_i = String.valueOf(map.get("ji_list_"+i));
		    String ji_mony_i = String.valueOf(map.get("ji_mony_"+i));
		    
		    if(!year_i.equals("null")){	
		    	years_list.put("IDX", boardSeq_no);
			    years_list.put("years", year_i);
			    years_list.put("ja_mony", ja_mony_i);
			    years_list.put("me_mony", me_mony_i);
			    years_list.put("ji_list", ji_list_i);
			    years_list.put("ji_mony", ji_mony_i);
			    
			    venterDAO.updateVenterprise_Mony(years_list);
			}  
		}	
    }
	@Override
    public void deleteVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception {
		venterDAO.deleteVenterprise(map);		
    }	
}

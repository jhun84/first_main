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
import first.sample.dao.ProductDAO;
import first.sample.dao.SampleDAO;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	Logger log = Logger.getLogger(this.getClass());
	//private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/upload/";
	private String FILE_URL = "C:\\Users\\JeongHun\\Documents\\Upload";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="productDAO")
	private ProductDAO productDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> productBoardList(Map<String, Object> map) throws Exception {
	    return productDAO.productBoardList(map);
	}
	@Override
	public Map<String, Object> productBoardSearch(Map<String, Object> map) throws Exception {
	    return productDAO.productBoardSearch(map);
	}
	@Override
    public void insertProduct(Map<String, Object> map, HttpServletRequest request) throws Exception {
		productDAO.insertProduct(map);
		
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){	
        	productDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectProductDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    Map<String, Object> tempMap = productDAO.selectProductDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String,Object>> list = productDAO.selectFileList(map);
	    resultMap.put("list", list);
	     
	    return resultMap;
	}

	@Override
	public void updateProduct(Map<String, Object> map, HttpServletRequest request) throws Exception{
		productDAO.updateProduct(map);
	}
	
	@Override
	public void deleteProduct(Map<String, Object> map) throws Exception {
		productDAO.deleteProduct(map);
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

		//String callback = "1";
		String callback = request.getParameter("CKEditorFuncNum");
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

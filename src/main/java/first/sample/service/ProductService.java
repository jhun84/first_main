package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	
	Map<String, Object> productBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> productBoardSearch(Map<String, Object> map) throws Exception;
	void insertProduct(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateProduct(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteProduct(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectProductDetail(Map<String, Object> map) throws Exception;
	Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
}

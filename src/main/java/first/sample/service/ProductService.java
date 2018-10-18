package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface ProductService {
	
	Map<String, Object> productBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> productBoardSearch(Map<String, Object> map) throws Exception;
	
}

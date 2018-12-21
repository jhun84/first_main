package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface ServiceService {
	
	Map<String, Object> serviceBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> serviceBoardSearch(Map<String, Object> map) throws Exception;
	void insertService(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateService(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteService(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectServiceDetail(Map<String, Object> map) throws Exception;
	
}

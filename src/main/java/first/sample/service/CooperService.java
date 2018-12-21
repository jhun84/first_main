package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface CooperService {
	
	Map<String, Object> cooperBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> cooperBoardSearch(Map<String, Object> map) throws Exception;
	void insertCooper(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateCooper(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteCooper(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectCooperDetail(Map<String, Object> map) throws Exception;
	
}

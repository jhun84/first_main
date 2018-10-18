package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface SampleService {
	
	Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception;
	void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
	Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;
	void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteBoard(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
}

package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface S_CooperService {
	
	Map<String, Object> s_cooperBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> s_cooperExcelList(Map<String, Object> map) throws Exception;
	Map<String, Object> s_cooperBoardSearch(Map<String, Object> map) throws Exception;
	void insertS_Cooper(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateS_Cooper(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteS_Cooper(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectS_CooperDetail(Map<String, Object> map) throws Exception;
	
}

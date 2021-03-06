package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface SenterpriseService {
	
	Map<String, Object> senterBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> senterExcelList(Map<String, Object> map) throws Exception;
	Map<String, Object> senterBoardSearch(Map<String, Object> map) throws Exception;
	void insertSenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;	
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectSenterpriseDetail(Map<String, Object> map) throws Exception;
	void updateSenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void addYear_insert(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteSenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;
}

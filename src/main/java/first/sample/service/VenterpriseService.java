package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface VenterpriseService {
	
	Map<String, Object> venterBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> venterBoardSearch(Map<String, Object> map) throws Exception;
	void insertVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;	
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectVenterpriseDetail(Map<String, Object> map) throws Exception;
	
}

package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface Pre_VenterpriseService {
	
	Map<String, Object> pre_venterBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> pre_venterBoardSearch(Map<String, Object> map) throws Exception;
	void insertPreVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;	
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectPreVenterpriseDetail(Map<String, Object> map) throws Exception;
	void addYear_insert(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updatePre_Venterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deletePreVenterprise(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
}

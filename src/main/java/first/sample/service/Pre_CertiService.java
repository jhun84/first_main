package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface Pre_CertiService {
	
	Map<String, Object> pre_certiBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> pre_certiBoardSearch(Map<String, Object> map) throws Exception;
	void insertPre_Certi_company(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updatePre_Certi_company(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deletePre_Certi_company(Map<String, Object> map) throws Exception;
	void insertPre_Certi_money(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deletePre_Certi_money(Map<String, Object> map) throws Exception;
	void insertPre_Certi_people(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updatePre_Certi_people(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deletePre_Certi_people(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectPre_CertiDetail(Map<String, Object> map) throws Exception;
	
}

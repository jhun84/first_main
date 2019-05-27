package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface CertiService {
	
	Map<String, Object> certiBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> certiBoardSearch(Map<String, Object> map) throws Exception;
	void insertCerti_company(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateCerti_company(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteCerti_company(Map<String, Object> map) throws Exception;
	void insertCerti_money(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteCerti_money(Map<String, Object> map) throws Exception;
	void insertCerti_people(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateCerti_people(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteCerti_people(Map<String, Object> map) throws Exception;
	void updateMony(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updatePeople(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectCertiDetail(Map<String, Object> map) throws Exception;
	
}

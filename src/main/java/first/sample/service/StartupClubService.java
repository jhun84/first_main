package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface StartupClubService {
	
	Map<String, Object> startupClubBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> startupClubExcelList(Map<String, Object> map) throws Exception;
	Map<String, Object> startupClubBoardSearch(Map<String, Object> map) throws Exception;
	void insertStartupClub(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateStartupClub(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteStartupClub(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectStartupClubDetail(Map<String, Object> map) throws Exception;
	
}

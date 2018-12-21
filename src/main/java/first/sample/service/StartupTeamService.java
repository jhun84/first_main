package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface StartupTeamService {
	
	Map<String, Object> startupTeamBoardList(Map<String, Object> map) throws Exception;
	Map<String, Object> startupTeamBoardSearch(Map<String, Object> map) throws Exception;
	void insertStartupTeam(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void updateStartupTeam(Map<String, Object> map, HttpServletRequest request) throws Exception;
	void deleteStartupTeam(Map<String, Object> map) throws Exception;
	void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception;
	Map<String, Object> selectStartupTeamDetail(Map<String, Object> map) throws Exception;
	
}

package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public interface UserService {
	Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception;
	
}

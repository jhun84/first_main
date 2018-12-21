package first.sample.service;

import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import first.sample.dao.UserDAO;

@Service("UserService")
public class UserServiceImpl implements UserService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="userDAO")
	private UserDAO userDAO;
	
	@Override
	public Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception {
	    return userDAO.selectUserInfo(map);
	}
		
}

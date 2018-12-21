package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectOne("user.selectUserInfo", map);
	}
	

}

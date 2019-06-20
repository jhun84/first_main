package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectNotice_Latest(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("main.selectNotice_Latest", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectProductFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("main.selectProductFileList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectServiceFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("main.selectServiceFileList", map);
	}
}

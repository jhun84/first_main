package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("serviceDAO")
public class ServiceDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> serviceBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("service.serviceBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> serviceBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("service.serviceBoardSearch", map);
	}
	public void insertService(Map<String, Object> map) throws Exception{
	    insert("service.insertService", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectServiceDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("service.selectServiceDetail", map);
	}
	public void updateService(Map<String, Object> map) throws Exception{
	    update("service.updateService", map);
	}
	public void deleteService(Map<String, Object> map) throws Exception{
	    update("service.deleteService", map);
	}
	public void insertServiceFile(Map<String, Object> map) throws Exception{
	    insert("service.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("service.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("service.deleteFileList", map);
	}
	 
	public void updateServiceFile(Map<String, Object> map) throws Exception{
	    update("service.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectServiceList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("service.selectServiceList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectOne("service.selectFileInfo", map);
	}

}

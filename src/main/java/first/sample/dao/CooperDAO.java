package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("cooperDAO")
public class CooperDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> cooperBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("cooper.cooperBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> cooperBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("cooper.cooperBoardSearch", map);
	}
	public void insertCooper(Map<String, Object> map) throws Exception{
	    insert("cooper.insertCooper", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCooperDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("cooper.selectCooperDetail", map);
	}
	public void updateCooper(Map<String, Object> map) throws Exception{
	    update("cooper.updateCooper", map);
	}
	public void deleteCooper(Map<String, Object> map) throws Exception{
	    update("cooper.deleteCooper", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("cooper.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("cooper.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("cooper.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCooperList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("cooper.selectCooperList", map);
	}

}

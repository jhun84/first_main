package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("s_cooperDAO")
public class S_CooperDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> s_cooperBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("s_cooper.s_cooperBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> s_cooperExcelList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("s_cooper.s_cooperExcelList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> s_cooperBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("s_cooper.s_cooperBoardSearch", map);
	}
	public void insertS_Cooper(Map<String, Object> map) throws Exception{
	    insert("s_cooper.insertS_Cooper", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectS_CooperDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("s_cooper.selectS_CooperDetail", map);
	}
	public void updateS_Cooper(Map<String, Object> map) throws Exception{
	    update("s_cooper.updateS_Cooper", map);
	}
	public void deleteS_Cooper(Map<String, Object> map) throws Exception{
	    update("s_cooper.deleteS_Cooper", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("s_cooper.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("s_cooper.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("s_cooper.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectS_CooperList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("s_cooper.selectS_CooperList", map);
	}

}

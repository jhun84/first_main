package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("startupClubDAO")
public class StartupClubDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> startupClubBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupClub.startupClubBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> startupClubExcelList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("startupClub.startupClubExcelList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> startupClubBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupClub.startupClubBoardSearch", map);
	}
	public void insertStartupClub(Map<String, Object> map) throws Exception{
	    insert("startupClub.insertStartupClub", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectStartupClubDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("startupClub.selectStartupClubDetail", map);
	}
	public void updateStartupClub(Map<String, Object> map) throws Exception{
	    update("startupClub.updateStartupClub", map);
	}
	public void deleteStartupClub(Map<String, Object> map) throws Exception{
	    update("startupClub.deleteStartupClub", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("startupClub.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("startupClub.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("startupClub.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectStartupClubList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupClub.selectStartupClubList", map);
	}

}

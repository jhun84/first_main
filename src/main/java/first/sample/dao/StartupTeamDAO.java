package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("startupTeamDAO")
public class StartupTeamDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> startupTeamBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupTeam.startupTeamBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> startupTeamBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupTeam.startupTeamBoardSearch", map);
	}
	public void insertStartupTeam(Map<String, Object> map) throws Exception{
	    insert("startupTeam.insertStartupTeam", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectStartupTeamDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("startupTeam.selectStartupTeamDetail", map);
	}
	public void updateStartupTeam(Map<String, Object> map) throws Exception{
	    update("startupTeam.updateStartupTeam", map);
	}
	public void deleteStartupTeam(Map<String, Object> map) throws Exception{
	    update("startupTeam.deleteStartupTeam", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("startupTeam.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("startupTeam.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("startupTeam.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectStartupTeamList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("startupTeam.selectStartupTeamList", map);
	}

}

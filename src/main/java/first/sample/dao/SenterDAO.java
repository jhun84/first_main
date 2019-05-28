package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("senterDAO")
public class SenterDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> senterBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("s_enter.senterBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> senterBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("s_enter.senterBoardSearch", map);
	}
	public void insertSenterprise(Map<String, Object> map) throws Exception{
	    insert("v_enter.insertSenterprise", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectSenterpriseDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("s_enter.selectSenterpriseDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSenterprise_Mony(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("s_enter.selectSenterprise_Mony", map);
	}	
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertFile", map);
	}
	public void insertSenter_Mony(Map<String, String> map) throws Exception{
	    insert("s_enter.insertSenter_Mony", map);
	}
	public void insertPre_Peoples(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertPre_Peoples", map);
	}
	public void insertPre_VulInfo(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertPre_VulInfo", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("pre_certi.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("certi.updateFile", map);
	}	
	

}

package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("pre_certiDAO")
public class Pre_CertiDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> pre_certiBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("pre_certi.pre_certiBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> pre_certiBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("pre_certi.pre_certiBoardSearch", map);
	}
	public void insertPre_Certi_company(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertPre_Certi_company", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectPre_CertiDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("pre_certi.selectPre_CertiDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectPre_CertiDetail_Mony(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("pre_certi.selectPre_CertiDetail_Mony", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectPre_CertiDetail_People(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("pre_certi.selectPre_CertiDetail_People", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectPre_CertiDetail_Vul(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("pre_certi.selectPre_CertiDetail_Vul", map);
	}
	public void updatePre_Certi_company(Map<String, Object> map) throws Exception{
	    update("pre_certi.updatePre_Certi_company", map);
	}
	public void deletePre_Certi_company(Map<String, Object> map) throws Exception{
	    update("pre_certi.deletePre_Certi_company", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertFile", map);
	}
	public void insertPre_Years(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertYears", map);
	}
	public void insertPre_Peoples(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertPeoples", map);
	}
	public void insertPre_VulInfo(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertVulInfo", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("certi.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("certi.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCooperList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("certi.selectCertiList", map);
	}
	public void insertPre_Certi_money(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertCerti_money", map);
	}
	public void updatePre_Certi_money(Map<String, Object> map) throws Exception{
	    update("pre_certi.updateCerti_money", map);
	}
	public void deletePre_Certi_money(Map<String, Object> map) throws Exception{
	    update("pre_certi.deleteCerti_money", map);
	}
	public void insertPre_Certi_people(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertCerti_people", map);
	}
	public void updatePre_Certi_people(Map<String, Object> map) throws Exception{
	    update("pre_certi.updateCerti_people", map);
	}
	public void deletePre_Certi_people(Map<String, Object> map) throws Exception{
	    update("pre_certi.deleteCerti_money", map);
	}
	public void updateMony(Map<String, Object> map) throws Exception{
	    update("pre_certi.updateMony", map);
	}
	public void updatePeople(Map<String, Object> map) throws Exception{
	    update("pre_certi.updatePeople", map);
	}

}

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
	public Map<String, Object> search_pre_certiBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("pre_certi.search_pre_certiBoardSearch", map);
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
	    insert("pre_certi.insertPre_Years", map);
	}
	public void insertPre_Peoples(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertPre_Peoples", map);
	}
	public void insertPre_VulInfo(Map<String, String> map) throws Exception{
	    insert("pre_certi.insertPre_VulInfo", map);
	}
	public void addYear_insert(Map<String, String> map) throws Exception{
	    insert("pre_certi.addYear_insert", map);
	}
	public void addPeople_insert(Map<String, String> map) throws Exception{
	    insert("pre_certi.addPeople_insert", map);
	}
	public void updatePreCerti(Map<String, Object> map) throws Exception{
	    update("pre_certi.updatePreCerti", map);
	}
	public void updatePreCerti_Mony(Map<String, String> map) throws Exception{
	    update("pre_certi.updatePreCerti_Mony", map);
	}
	public void updatePreCerti_People(Map<String, String> map) throws Exception{
	    update("pre_certi.updatePreCerti_People", map);
	}
	public void updatePreCerti_VulInfo(Map<String, String> map) throws Exception{
	    update("pre_certi.updatePreCerti_VulInfo", map);
	}
	public void insertPreCerti_VulInfo(Map<String, String> map) throws Exception{
	    update("pre_certi.insertPreCerti_VulInfo", map);
	}
	public void deletePre_Certified_Company(Map<String, Object> map) throws Exception{
	    update("pre_certi.deletePre_Certified_Company", map);
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

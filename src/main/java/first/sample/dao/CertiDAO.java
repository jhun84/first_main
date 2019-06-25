package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("certiDAO")
public class CertiDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> certiBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("certi.certiBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> certiExcelList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("certi.certiExcelList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> search_certiBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("certi.search_certiBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> certiBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("certi.certiBoardSearch", map);
	}
	public void insertCerti_company(Map<String, Object> map) throws Exception{
	    insert("certi.insertCerti_company", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectCertiDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("certi.selectCertiDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCertiDetail_Mony(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("certi.selectCertiDetail_Mony", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCertiDetail_People(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("certi.selectCertiDetail_People", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCertiDetail_Vul(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("certi.selectCertiDetail_Vul", map);
	}
	public void updateCerti_company(Map<String, Object> map) throws Exception{
	    update("certi.updateCerti_company", map);
	}
	public void deleteCerti_company(Map<String, Object> map) throws Exception{
	    update("certi.deleteCerti_company", map);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("certi.insertFile", map);
	}
	public void insertYears(Map<String, String> map) throws Exception{
	    insert("certi.insertYears", map);
	}
	public void insertPeoples(Map<String, String> map) throws Exception{
	    insert("certi.insertPeoples", map);
	}
	public void insertVulInfo(Map<String, String> map) throws Exception{
	    insert("certi.insertVulInfo", map);
	}
	public void deleteCertified_Company(Map<String, Object> map) throws Exception{
	    update("certi.deleteCertified_Company", map);
	}
	public void addYear_insert(Map<String, String> map) throws Exception{
	    insert("certi.addYear_insert", map);
	}
	public void addPeople_insert(Map<String, String> map) throws Exception{
	    insert("certi.addPeople_insert", map);
	}
	public void updateCerti(Map<String, Object> map) throws Exception{
	    update("certi.updateCerti", map);
	}
	public void updateCerti_Mony(Map<String, String> map) throws Exception{
	    update("certi.updateCerti_Mony", map);
	}
	public void updateCerti_People(Map<String, String> map) throws Exception{
	    update("certi.updateCerti_People", map);
	}
	public void updateCerti_VulInfo(Map<String, String> map) throws Exception{
	    update("certi.updateCerti_VulInfo", map);
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
	public void insertCerti_money(Map<String, Object> map) throws Exception{
	    insert("certi.insertCerti_money", map);
	}
	public void updateCerti_money(Map<String, Object> map) throws Exception{
	    update("certi.updateCerti_money", map);
	}
	public void deleteCerti_money(Map<String, Object> map) throws Exception{
	    update("certi.deleteCerti_money", map);
	}
	public void insertCerti_people(Map<String, Object> map) throws Exception{
	    insert("certi.insertCerti_people", map);
	}
	public void updateCerti_people(Map<String, Object> map) throws Exception{
	    update("certi.updateCerti_people", map);
	}
	public void deleteCerti_people(Map<String, Object> map) throws Exception{
	    update("certi.deleteCerti_money", map);
	}
	public void updateMony(Map<String, Object> map) throws Exception{
	    update("certi.updateMony", map);
	}
	public void updatePeople(Map<String, Object> map) throws Exception{
	    update("certi.updatePeople", map);
	}

}

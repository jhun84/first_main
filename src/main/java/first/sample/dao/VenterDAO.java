package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("venterDAO")
public class VenterDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> venterBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("v_enter.venterBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> venterBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("v_enter.venterBoardSearch", map);
	}
	public void insertVenterprise(Map<String, Object> map) throws Exception{
	    insert("v_enter.insertVenterprise", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectVenterpriseDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("v_enter.selectVenterpriseDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectVenterprise_Mony(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("v_enter.selectVenterprise_Mony", map);
	}
	public void updateVenterprise(Map<String, Object> map) throws Exception{
	    update("v_enter.updateVenterprise", map);
	}
	public void deleteVenterprise(Map<String, Object> map) throws Exception{
	    update("v_enter.deleteVenterprise", map);
	}
	public void updateVenterprise_Mony(Map<String, String> years_list) throws Exception{
	    update("v_enter.updateVenterprise_Mony", years_list);
	}
	public void addYear_insert(Map<String, String> years_list) throws Exception{
	    update("v_enter.addYear_insert", years_list);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertFile", map);
	}
	public void insertVenter_Mony(Map<String, String> map) throws Exception{
	    insert("v_enter.insertVenter_Mony", map);
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

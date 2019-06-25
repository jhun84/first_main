package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("pre_venterDAO")
public class Pre_VenterDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> pre_venterBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("prev_enter.pre_venterBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> pre_venterExcelList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("prev_enter.pre_venterExcelList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> pre_venterBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("prev_enter.pre_venterBoardSearch", map);
	}
	public void insertPreVenterprise(Map<String, Object> map) throws Exception{
	    insert("prev_enter.insertPreVenterprise", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectPreVenterpriseDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("prev_enter.selectPreVenterpriseDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectPreVenterprise_Mony(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>) selectList("prev_enter.selectPreVenterprise_Mony", map);
	}
	public void updatePreVenterprise(Map<String, Object> map) throws Exception{
	    update("prev_enter.updatePreVenterprise", map);
	}
	public void deletePreVenterprise(Map<String, Object> map) throws Exception{
	    update("prev_enter.deletePreVenterprise", map);
	}
	public void updatePreVenterprise_Mony(Map<String, String> years_list) throws Exception{
	    update("prev_enter.updatePreVenterprise_Mony", years_list);
	}
	public void addYear_insert(Map<String, String> years_list) throws Exception{
	    update("prev_enter.addYear_insert", years_list);
	}
	public void insertFile(Map<String, Object> map) throws Exception{
	    insert("pre_certi.insertFile", map);
	}
	public void insertPreVenter_Mony(Map<String, String> map) throws Exception{
	    insert("prev_enter.insertPreVenter_Mony", map);
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

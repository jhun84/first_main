package first.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.sample.dao.*;

@Service("mainService")
public class MainServiceImpl implements MainService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="mainDAO")
	private MainDAO mainDAO;	
	
	@Override
	public Map<String, Object> selectMainDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    	    	   
	    List<Map<String, Object>> list = mainDAO.selectNotice_Latest(map);
	    resultMap.put("list", list);
	    
	    List<Map<String, Object>> product_list = mainDAO.selectProductFileList(map);
	    resultMap.put("product_list", product_list);
	   	
	    List<Map<String, Object>> service_list = mainDAO.selectServiceFileList(map);
	    resultMap.put("service_list", service_list);

	    return resultMap;
	}		
}

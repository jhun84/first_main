package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("productDAO")
public class ProductDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> productBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("product.productBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> productBoardSearch(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("product.productBoardSearch", map);
	}

}

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
	public void insertProduct(Map<String, Object> map) throws Exception{
	    insert("product.insertProduct", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectProductDetail(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>) selectOne("product.selectProductDetail", map);
	}
	public void updateProduct(Map<String, Object> map) throws Exception{
	    update("product.updateProduct", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("product.deleteFileList", map);
	}
	public void deleteProduct(Map<String, Object> map) throws Exception{
	    update("product.deleteProduct", map);
	}
	public void insertProductFile(Map<String, Object> map) throws Exception{
	    insert("product.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("product.selectFileList", map);
	}		
	public void updateProductFile(Map<String, Object> map) throws Exception{
	    update("product.updateFile", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectProductList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("product.selectProductList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectOne("product.selectFileInfo", map);
	}

}

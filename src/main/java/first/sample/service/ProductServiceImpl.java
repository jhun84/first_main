package first.sample.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import first.common.util.FileUtils;
import first.sample.dao.ProductDAO;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="productDAO")
	private ProductDAO productDAO;
	
	@Override
	public Map<String, Object> productBoardList(Map<String, Object> map) throws Exception {
	    return productDAO.productBoardList(map);
	}
	@Override
	public Map<String, Object> productBoardSearch(Map<String, Object> map) throws Exception {
	    return productDAO.productBoardSearch(map);
	}
	
	
}

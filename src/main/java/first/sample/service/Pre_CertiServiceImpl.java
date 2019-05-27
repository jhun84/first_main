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
import first.sample.dao.SampleDAO;
import first.sample.dao.Pre_CertiDAO;

@Service("pre_certiService")
public class Pre_CertiServiceImpl implements Pre_CertiService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="pre_certiDAO")
	private Pre_CertiDAO pre_certiDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> pre_certiBoardList(Map<String, Object> map) throws Exception {
	    return pre_certiDAO.pre_certiBoardList(map);
	}
	@Override
	public Map<String, Object> pre_certiBoardSearch(Map<String, Object> map) throws Exception {
	    return pre_certiDAO.pre_certiBoardSearch(map);
	}
	@Override
    public void insertPre_Certi_company(Map<String, Object> map, HttpServletRequest request) throws Exception {
		pre_certiDAO.insertPre_Certi_company(map);
		
		for(int i=0; i<10; i++){
			Map<String, String> years_list = new HashMap<String, String>();
			String boardSeq_no = String.valueOf(map.get("IDX"));
			
			String year_i = String.valueOf(map.get("year_"+i));
		    String total_sales_i = String.valueOf(map.get("total_sales_"+i));
		    String oper_profit_i = String.valueOf(map.get("oper_profit_"+i));
		    String income_term_i = String.valueOf(map.get("income_term_"+i));
		    String total_labor_i = String.valueOf(map.get("total_labor_"+i));
		    String total_devel_sales_i = String.valueOf(map.get("total_devel_sales_"+i));
		    String basic_consalting_i = String.valueOf(map.get("basic_consalting_"+i));
		    String pro_consalting_i = String.valueOf(map.get("pro_consalting_"+i));
		    
		    if(!year_i.equals("null")){	
		    	years_list.put("idx", boardSeq_no);
			    years_list.put("years", year_i);
			    years_list.put("total_sales", total_sales_i);
			    years_list.put("oper_profit", oper_profit_i);
			    years_list.put("income_term", income_term_i);
			    years_list.put("total_labor", total_labor_i);
			    years_list.put("total_devel_sales", total_devel_sales_i);
			    years_list.put("basic_consalting", basic_consalting_i);
			    years_list.put("pro_consalting", pro_consalting_i);
			    
			    pre_certiDAO.insertPre_Years(years_list);
			}  
		}
		
				for(int i=0; i<10; i++){
					Map<String, String> peoples_list = new HashMap<String, String>();
					String boardSeq_no = String.valueOf(map.get("IDX"));
					
					String people_years_i = String.valueOf(map.get("people_years_"+i));
				    String social_people_i = String.valueOf(map.get("social_people_"+i));
				    String prof_people_i = String.valueOf(map.get("prof_people_"+i));
				    String salary_people_i = String.valueOf(map.get("salary_people_"+i));
				    String vul_people_i = String.valueOf(map.get("vul_people_"+i));
				    
				    if(!people_years_i.equals("null")){	
				    	peoples_list.put("idx", boardSeq_no);
				    	peoples_list.put("people_years", people_years_i);
				    	peoples_list.put("social_people", social_people_i);
				    	peoples_list.put("prof_people", prof_people_i);
				    	peoples_list.put("salary_people", salary_people_i);
				    	peoples_list.put("vul_people", vul_people_i);
					    
					    pre_certiDAO.insertPre_Peoples(peoples_list);
					}  
				}
		Map<String, String> vulinfo_list = new HashMap<String, String>();
		String boardSeq_no = String.valueOf(map.get("IDX"));
		String jsd = String.valueOf(map.get("jsd"));
		String krj = String.valueOf(map.get("krj"));
		String jai = String.valueOf(map.get("jai"));
		String spj = String.valueOf(map.get("spj"));
		String ckd = String.valueOf(map.get("ckd"));
		String bej = String.valueOf(map.get("bej"));
		String kpp = String.valueOf(map.get("kpp"));
		String hwb = String.valueOf(map.get("hwb"));
		String kej = String.valueOf(map.get("kej"));
		String kbd = String.valueOf(map.get("kbd"));
		String jsj = String.valueOf(map.get("jsj"));
		String bkp = String.valueOf(map.get("bkp"));
		String cka = String.valueOf(map.get("cka"));
		String ska = String.valueOf(map.get("ska"));
		String nsj = String.valueOf(map.get("nsj"));
		String yad = String.valueOf(map.get("yad"));
		String ykj = String.valueOf(map.get("ykj"));
		String jsk = String.valueOf(map.get("jsk"));
		String oik = String.valueOf(map.get("oik"));
		String jsy = String.valueOf(map.get("jsy"));
		String hpp = String.valueOf(map.get("hpp"));
		String hbc = String.valueOf(map.get("hbc"));

		vulinfo_list.put("idx",boardSeq_no);
		vulinfo_list.put("jsd",jsd);
		vulinfo_list.put("krj",krj);
		vulinfo_list.put("jai",jai);
		vulinfo_list.put("spj",spj);
		vulinfo_list.put("ckd",ckd);
		vulinfo_list.put("bej",bej);
		vulinfo_list.put("kpp",kpp);
		vulinfo_list.put("hwb",hwb);
		vulinfo_list.put("kej",kej);
		vulinfo_list.put("kbd",kbd);
		vulinfo_list.put("jsj",jsj);
		vulinfo_list.put("bkp",bkp);
		vulinfo_list.put("cka",cka);
		vulinfo_list.put("ska",ska);
		vulinfo_list.put("nsj",nsj);
		vulinfo_list.put("yad",yad);
		vulinfo_list.put("ykj",ykj);
		vulinfo_list.put("jsk",jsk);
		vulinfo_list.put("oik",oik);
		vulinfo_list.put("jsy",jsy);
		vulinfo_list.put("hpp",hpp);
		vulinfo_list.put("hbc",hbc);
		
		pre_certiDAO.insertPre_VulInfo(vulinfo_list);
		
		
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectPre_CertiDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    
	    Map<String, Object> tempMap = pre_certiDAO.selectPre_CertiDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String, Object>> list = pre_certiDAO.selectPre_CertiDetail_Mony(map);
	    resultMap.put("list", list);
	    
	    List<Map<String, Object>> people_list = pre_certiDAO.selectPre_CertiDetail_People(map);
	    resultMap.put("people_list", people_list);
	    
	    List<Map<String, Object>> vul_info = pre_certiDAO.selectPre_CertiDetail_Vul(map);
	    resultMap.put("vul_info", vul_info);
	    
	    return resultMap;
	}

	@Override
	public void updatePre_Certi_company(Map<String, Object> map, HttpServletRequest request) throws Exception{
		pre_certiDAO.updatePre_Certi_company(map);
		

				for(int i=0; i<10; i++){
					Map<String, String> years_list = new HashMap<String, String>();
					String boardSeq_no = String.valueOf(map.get("IDX"));
					
					String year_i = String.valueOf(map.get("year_"+i));
				    String total_sales_i = String.valueOf(map.get("total_sales_"+i));
				    String oper_profit_i = String.valueOf(map.get("oper_profit_"+i));
				    String income_term_i = String.valueOf(map.get("income_term_"+i));
				    String total_labor_i = String.valueOf(map.get("total_labor_"+i));
				    String total_devel_sales_i = String.valueOf(map.get("total_devel_sales_"+i));
				    String basic_consalting_i = String.valueOf(map.get("basic_consalting_"+i));
				    String pro_consalting_i = String.valueOf(map.get("pro_consalting_"+i));
				    
				    if(!year_i.equals("null")){	
				    	years_list.put("idx", boardSeq_no);
					    years_list.put("years", year_i);
					    years_list.put("total_sales", total_sales_i);
					    years_list.put("oper_profit", oper_profit_i);
					    years_list.put("income_term", income_term_i);
					    years_list.put("total_labor", total_labor_i);
					    years_list.put("total_devel_sales", total_devel_sales_i);
					    years_list.put("basic_consalting", basic_consalting_i);
					    years_list.put("pro_consalting", pro_consalting_i);
					    
					    pre_certiDAO.insertPre_Years(years_list);
					}  
				}

						for(int i=0; i<10; i++){
							Map<String, String> peoples_list = new HashMap<String, String>();
							String boardSeq_no = String.valueOf(map.get("IDX"));
							
							String people_years_i = String.valueOf(map.get("people_years_"+i));
						    String social_people_i = String.valueOf(map.get("social_people_"+i));
						    String prof_people_i = String.valueOf(map.get("prof_people_"+i));
						    String salary_people_i = String.valueOf(map.get("salary_people_"+i));
						    String vul_people_i = String.valueOf(map.get("vul_people_"+i));
						    
						    if(!people_years_i.equals("null")){	
						    	peoples_list.put("idx", boardSeq_no);
						    	peoples_list.put("people_years", people_years_i);
						    	peoples_list.put("social_people", social_people_i);
						    	peoples_list.put("prof_people", prof_people_i);
						    	peoples_list.put("salary_people", salary_people_i);
						    	peoples_list.put("vul_people", vul_people_i);
							    
							    pre_certiDAO.insertPre_Peoples(peoples_list);
							}  
						}
				Map<String, String> vulinfo_list = new HashMap<String, String>();
				String boardSeq_no = String.valueOf(map.get("IDX"));
				String jsd = String.valueOf(map.get("jsd"));
				String krj = String.valueOf(map.get("krj"));
				String jai = String.valueOf(map.get("jai"));
				String spj = String.valueOf(map.get("spj"));
				String ckd = String.valueOf(map.get("ckd"));
				String bej = String.valueOf(map.get("bej"));
				String kpp = String.valueOf(map.get("kpp"));
				String hwb = String.valueOf(map.get("hwb"));
				String kej = String.valueOf(map.get("kej"));
				String kbd = String.valueOf(map.get("kbd"));
				String jsj = String.valueOf(map.get("jsj"));
				String bkp = String.valueOf(map.get("bkp"));
				String cka = String.valueOf(map.get("cka"));
				String ska = String.valueOf(map.get("ska"));
				String nsj = String.valueOf(map.get("nsj"));
				String yad = String.valueOf(map.get("yad"));
				String ykj = String.valueOf(map.get("ykj"));
				String jsk = String.valueOf(map.get("jsk"));
				String oik = String.valueOf(map.get("oik"));
				String jsy = String.valueOf(map.get("jsy"));
				String hpp = String.valueOf(map.get("hpp"));
				String hbc = String.valueOf(map.get("hbc"));

				vulinfo_list.put("idx",boardSeq_no);
				vulinfo_list.put("jsd",jsd);
				vulinfo_list.put("krj",krj);
				vulinfo_list.put("jai",jai);
				vulinfo_list.put("spj",spj);
				vulinfo_list.put("ckd",ckd);
				vulinfo_list.put("bej",bej);
				vulinfo_list.put("kpp",kpp);
				vulinfo_list.put("hwb",hwb);
				vulinfo_list.put("kej",kej);
				vulinfo_list.put("kbd",kbd);
				vulinfo_list.put("jsj",jsj);
				vulinfo_list.put("bkp",bkp);
				vulinfo_list.put("cka",cka);
				vulinfo_list.put("ska",ska);
				vulinfo_list.put("nsj",nsj);
				vulinfo_list.put("yad",yad);
				vulinfo_list.put("ykj",ykj);
				vulinfo_list.put("jsk",jsk);
				vulinfo_list.put("oik",oik);
				vulinfo_list.put("jsy",jsy);
				vulinfo_list.put("hpp",hpp);
				vulinfo_list.put("hbc",hbc);
				
				pre_certiDAO.insertPre_VulInfo(vulinfo_list);
	}
	
	@Override
	public void deletePre_Certi_company(Map<String, Object> map) throws Exception {
		pre_certiDAO.deletePre_Certi_company(map);
	}
	
	@Override
	public void insertPre_Certi_money(Map<String, Object> map, HttpServletRequest request) throws Exception {
		pre_certiDAO.insertPre_Certi_money(map);
	     
	    List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
	    for(int i=0, size=list.size(); i<size; i++){
	        sampleDAO.insertFile(list.get(i));
	    }
	}
	@Override
	public void updateMony(Map<String, Object> map, HttpServletRequest request) throws Exception{
		pre_certiDAO.updateMony(map);
	    
	}
	@Override
	public void updatePeople(Map<String, Object> map, HttpServletRequest request) throws Exception{
		pre_certiDAO.updatePeople(map);
	    
	}
	@Override
	public void deletePre_Certi_money(Map<String, Object> map) throws Exception {
		pre_certiDAO.deletePre_Certi_money(map);
	}
	@Override
	public void insertPre_Certi_people(Map<String, Object> map, HttpServletRequest request) throws Exception {
		pre_certiDAO.insertPre_Certi_people(map);
	     
	    List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
	    for(int i=0, size=list.size(); i<size; i++){
	        sampleDAO.insertFile(list.get(i));
	    }
	}
	@Override
	public void updatePre_Certi_people(Map<String, Object> map, HttpServletRequest request) throws Exception{
		pre_certiDAO.updatePre_Certi_people(map);
	}
	@Override
	public void deletePre_Certi_people(Map<String, Object> map) throws Exception {
		pre_certiDAO.deletePre_Certi_people(map);
	}
	@SuppressWarnings("resource")
	public void ckeditorImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) throws Exception {
	
		OutputStream out = null;
		PrintWriter printWriter = null;	
		String fileName = file.getOriginalFilename();
		byte[] bytes = file.getBytes();
		String uploadPath = FILE_URL + fileName;
	
		out = new FileOutputStream(new File(uploadPath));
		out.write(bytes);
	
		String callback = "1";
		printWriter = response.getWriter();
	
		String fileUrl = SAVE_URL + fileName; 
		printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
	               + callback
	               + ",'"
	               + fileUrl
	               + "','complete.'"
	               + ")</script>");
		printWriter.flush();
	    
	}
	
	
}

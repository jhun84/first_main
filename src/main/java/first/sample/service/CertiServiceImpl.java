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
import first.sample.dao.CertiDAO;

@Service("certiService")
public class CertiServiceImpl implements CertiService{
	Logger log = Logger.getLogger(this.getClass());
	private String FILE_URL = "/home/hosting_users/hunchori/tomcat/webapps/ROOT/upload/";
	private String SAVE_URL = "/upload/";
	
	@Resource(name="certiDAO")
	private CertiDAO certiDAO;
	
	@Resource(name="sampleDAO")
	private SampleDAO sampleDAO;
	
	@Resource(name="fileUtils")
    private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> certiBoardList(Map<String, Object> map) throws Exception {
	    return certiDAO.certiBoardList(map);
	}
	@Override
	public Map<String, Object> certiExcelList(Map<String, Object> map) throws Exception {	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    
	    List<Map<String, Object>> list = certiDAO.certiExcelList(map);
	    resultMap.put("list", list);
	    
	    return resultMap;
	}
	@Override
	public Map<String, Object> search_certiBoardList(Map<String, Object> map) throws Exception {
	    return certiDAO.search_certiBoardList(map);
	}
	@Override
	public Map<String, Object> certiBoardSearch(Map<String, Object> map) throws Exception {
	    return certiDAO.certiBoardSearch(map);
	}
	@Override
    public void insertCerti_company(Map<String, Object> map, HttpServletRequest request) throws Exception {
		certiDAO.insertCerti_company(map);
		
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
		    int year_length = year_i.length();
		    
		    years_list.put("idx", boardSeq_no);
			years_list.put("years", year_i);
			years_list.put("total_sales", total_sales_i);
			years_list.put("oper_profit", oper_profit_i);
			years_list.put("income_term", income_term_i);
			years_list.put("total_labor", total_labor_i);
			years_list.put("total_devel_sales", total_devel_sales_i);
			years_list.put("basic_consalting", basic_consalting_i);
			years_list.put("pro_consalting", pro_consalting_i);
			
			if( !year_i.equals("null") && year_length > 0 ){	    
			    certiDAO.insertYears(years_list);
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
		    int people_year_length = people_years_i.length();
		    	
		    peoples_list.put("idx", boardSeq_no);
		    peoples_list.put("people_years", people_years_i);
		    peoples_list.put("social_people", social_people_i);
		    peoples_list.put("prof_people", prof_people_i);
		    peoples_list.put("salary_people", salary_people_i);
		    peoples_list.put("vul_people", vul_people_i);
		    
		    if( !people_years_i.equals("null") && people_year_length > 0 ){    
			    certiDAO.insertPeoples(peoples_list);
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
		
		certiDAO.insertVulInfo(vulinfo_list);
		
		
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
	@Override
	public Map<String, Object> selectCertiDetail(Map<String, Object> map) throws Exception {
	    
	    Map<String, Object> resultMap = new HashMap<String,Object>();
	    
	    Map<String, Object> tempMap = certiDAO.selectCertiDetail(map);
	    resultMap.put("map", tempMap);
	     
	    List<Map<String, Object>> list = certiDAO.selectCertiDetail_Mony(map);
	    resultMap.put("list", list);
	    
	    List<Map<String, Object>> people_list = certiDAO.selectCertiDetail_People(map);
	    resultMap.put("people_list", people_list);
	    
	    List<Map<String, Object>> vul_info = certiDAO.selectCertiDetail_Vul(map);
	    resultMap.put("vul_info", vul_info);
	    
	    return resultMap;
	}

	@Override
	public void updateCerti_company(Map<String, Object> map, HttpServletRequest request) throws Exception{
		certiDAO.updateCerti_company(map);
		

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
					    
					    certiDAO.insertYears(years_list);
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
							    
							    certiDAO.insertPeoples(peoples_list);
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
				
				certiDAO.insertVulInfo(vulinfo_list);
	}
	
	@Override
	public void deleteCerti_company(Map<String, Object> map) throws Exception {
		certiDAO.deleteCerti_company(map);
	}
	
	@Override
	public void insertCerti_money(Map<String, Object> map, HttpServletRequest request) throws Exception {
		certiDAO.insertCerti_money(map);
	     
	    List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
	    for(int i=0, size=list.size(); i<size; i++){
	        sampleDAO.insertFile(list.get(i));
	    }
	}
	@Override
	public void updateMony(Map<String, Object> map, HttpServletRequest request) throws Exception{
		certiDAO.updateMony(map);
	    
	}
	@Override
	public void updatePeople(Map<String, Object> map, HttpServletRequest request) throws Exception{
		certiDAO.updatePeople(map);
	    
	}
	@Override
	public void deleteCerti_money(Map<String, Object> map) throws Exception {
		certiDAO.deleteCerti_money(map);
	}
	@Override
	public void insertCerti_people(Map<String, Object> map, HttpServletRequest request) throws Exception {
		certiDAO.insertCerti_people(map);
	     
	    List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
	    for(int i=0, size=list.size(); i<size; i++){
	        sampleDAO.insertFile(list.get(i));
	    }
	}
	@Override
	public void updateCerti_people(Map<String, Object> map, HttpServletRequest request) throws Exception{
		certiDAO.updateCerti_people(map);
	}
	@Override
	public void deleteCerti_people(Map<String, Object> map) throws Exception {
		certiDAO.deleteCerti_people(map);
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
	@Override
    public void addYear_insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		/*재무정보 추가*/
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
			    
			    certiDAO.addYear_insert(years_list);
			}  
		}
		/*인원정보 추가*/
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
			    
			    certiDAO.addPeople_insert(peoples_list);
			}  
		}
    }
	@Override
    public void addPeople_insert(Map<String, Object> map, HttpServletRequest request) throws Exception {
		/*인원정보 추가*/
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
			    
			    certiDAO.addPeople_insert(peoples_list);
			}  
		}	
    }
	@Override
    public void updateCerti(Map<String, Object> map, HttpServletRequest request) throws Exception {
		certiDAO.updateCerti(map);
				
		/*최근 상세인원정보업데이트 부분*/
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

		vulinfo_list.put("board_seq",boardSeq_no);
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
		
		certiDAO.updateCerti_VulInfo(vulinfo_list);
    }
	
	@Override
    public void deleteCertified_Company(Map<String, Object> map, HttpServletRequest request) throws Exception {
		certiDAO.deleteCertified_Company(map);
	}
		
	
}

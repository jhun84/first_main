<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
<h1>기업정보</h1>
    <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="6">1. 기업정보</th>
  </tr>
  <tr>
    <th scope="row">기관명</th>
    <td>${map.company_name }</td>
    <th scope="row">우편번호</th>
    <td>${map.company_zip }</td>
    <th scope="row">주소</th>
    <td>${map.company_address }</td>
  </tr>
  <tr>
    <th scope="row">광역자치단체</th>
    <td>${map.cc_area }</td>
    <th scope="row">관할관서</th>
    <td>${map.cc_area }</td>
    <th scope="row">인증지정번호</th>
    <td>${map.cert_num }</td>
  </tr>
  <tr>
    <th scope="row">사회적목적실현유형</th>
    <td>${map.pic }</td>
    <th scope="row">지정일</th>
    <td>${map.ji_date }</td>
    <th scope="row">인증유지현황</th>
    <td>${map.m_cert }</td>
  </tr>
  <tr>    
    <th scope="row">예비SE지역형</th>
    <td>${map.se_area_type }</td>
    <th scope="row">예비SE부처형</th>
    <td>${map.se_bu_type }</td>
    <th scope="row">업체형태</th>
    <td>${map.company_type }</td>
  </tr>
  <tr>
    <th scope="row">조직형태</th>
    <td>${map.jojik_type }</td>
    <th scope="row">설립일</th>
    <td>${map.es_date }</td>
    <th scope="row">사업장관리번호</th>
    <td>${map.bm_number }</td>
  </tr>
  <tr>
    <th scope="row">사업자번호 본점</th>
    <td>${map.company_bnum }</td>
    <th scope="row">사업자번호 지점</th>
    <td>${map.company_jnum }</td>
    <th scope="row">고유번호</th>
    <td>${map.uniq_num }</td>
  </tr>
  <tr>
    <th scope="row">법인등록번호</th>
    <td>${map.cr_num }</td>
    <th scope="row">사업단관련</th>
    <td>${map.sud_nm }</td>
    <th scope="row">모법인등록번호</th>
    <td>${map.sud_num }</td>
  </tr>
  <tr>
    <th scope="row">주요사업내용</th>
    <td>${map.biz_detail }</td>
    <th scope="row">재화 및 서비스품목</th>
    <td>${map.item_gubun }</td>
    <th scope="row">대분류</th>
    <td>${map.item_dru }</td>
  </tr>
  <tr>
    <th scope="row">중분류</th>
    <td>${map.item_jru }</td>
    <th scope="row">업종분류</th>
    <td>${map.industry_bunryu }</td>
    <th scope="row">대표자</th>
    <td>${map.ceo_nm }</td>
  </tr>
  <tr>
    <th scope="row">대표자 생년월일</th>
    <td>${map.ceo_birth }</td>
    <th scope="row">휴대전화</th>
    <td>${map.hp_number }</td>
    <th scope="row">담당자</th>
    <td>${map.pic }</td>
  </tr>
  <tr>
    <th scope="row">직위</th>
    <td>${map.c_pos }</td>
    <th scope="row">전화번호</th>
    <td>${map.areap_number }</td>
    <th scope="row">팩스번호</th>
    <td>${map.fax_number }</td>
  </tr>
  <tr>
    <th scope="row">이메일</th>
    <td>${map.email }</td>
    <th scope="row">홈페이지</th>
    <td>${map.homepage }</td>
    <th scope="row"></th>
    <td></td>
  </tr>
  </table>
  <form id="frm" name="frm" enctype="multipart/form-data">
   <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">  
  <h1>재무정보</h1>
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(list) > 0}">
			<c:forEach var="row" items="${list }">
            <tr>
                <th>${row.years}년</th>
                <td>
                  먜출액:${row.total_sales},영업이익:${row.oper_profit},당기순이익:${row.income_term},
                  총노무비:${row.total_labor},사업개발비:${row.total_devel_sales},기초컨선팅:${row.basic_consalting},
                  전문컨설팅:${row.pro_consalting}
                </td>
            </tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">재무정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
</table>
<div id="Yeardiv" style="padding-top:10px;padding-left:10px;">
 <div id="money_info">
 </div>
</div>

<h1>인원정보</h1>
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(people_list) > 0}">
			<c:forEach var="row" items="${people_list}">
            <tr>
                <th>${row.people_years}년</th>
                <td>
                 사회적일자리배정인원:${row.social_people},전문인력배정인원:${row.prof_people},유급근로자수:${row.salary_people},
                  취약계층근로자수:${row.vul_people}
                </td>
            </tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">인원정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
</table>
<div id="Peoplediv" style="padding-top:10px;padding-left:10px;">
 <div id="people_info">
 </div>
</div>
</form>
<h1>취약계층정보</h1>
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(vul_info) > 0}">
			<c:forEach var="vul" items="${vul_info}">
              <tr>
                  <th>저속득</th>
                  <td>${vul.jsd }명</td>
                  <th>고령자</th>
                  <td>${vul.krj }명</td>
                  <th>장애인</th>
                  <td>${vul.jai }명</td>
                  <th>성매매피해자</th>
                  <td>${vul.spj }명</td>
                 <tr>
                  <th>청년,경력단절</th>
                  <td>${vul.ckd }명</td>
                  <th>북한이탈주민</th>
                  <td>${vul.bej }명</td>
                  <th>가정폭력피해자</th>
                  <td>${vul.kpp }명</td>
                  <th>한부모가족지원법</th>
                  <td>${vul.hwb }명</td>
                 </tr>
                 <tr>
                  <th>결혼이민자</th>
                  <td>${vul.kej }명</td>
                  <th>갱생보호대상자</th>
                  <td>${vul.kbd }명</td>
                  <th>장기실직자</th>
                  <td>${vul.jsj }명</td>
                  <th>범죄구조피해자</th>
                  <td>${vul.bkp }명</td>
                 </tr>
                 <tr>
                  <th>출소6개월미만</th>
                  <td>${vul.cka }명</td>
                  <th>소년원퇴원6개월</th>
                  <td>${vul.ska }명</td>
                  <th>노숙자</th>
                  <td>${vul.nsj }명</td>
                  <th>약.알.도박중독자</th>
                  <td>${vul.yad }명</td>
                 </tr>
                 <tr>
                  <th>여성가장</th>
                  <td>${vul.ykj }명</td>
                  <th>조손가정</th>
                  <td>${vul.jsk }명</td>
                  <th>외국인근로자</th>
                  <td>${vul.oik }명</td>
                  <th>저신용자</th>
                  <td>${vul.jsy }명</td>
                 </tr>
                 <tr>
                  <th>학교폭력피해자</th>
                  <td>${vul.hpp }명</td>
                  <th>학교밖청소년</th>
                  <td>${vul.hbc }명</td>
                  <th></th>
                  <td></td>
                  <th></th>
                  <td></td>
                 </tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">취약계측정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
</table>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="addyear" >재무정보연도추가하기</a>
    <a href="#this" class="btn" id="addpeople" >인원정보연도추가하기</a>
    <a href="#this" class="btn" id="add_insert" >추가완료</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        var gfv_count = 1;
        var year_count = 1;
        var total_sales_count = 1;
        var oper_profit_count = 1;
        var income_term_count = 1;
        var total_labor_count = 1;
        var total_devel_sales_count = 1;
        var basic_consalting_count = 1;
        var pro_consalting_count = 1;
        
        var people_years_count = 1;
        var social_people_count = 1;
        var prof_people_count = 1;
        var salary_people_count = 1;
        var vul_people_count = 1;
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openCertiList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openCertiUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
            $("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
			$("#addpeople").on("click", function(e){ //인원정보 연도 추가 버튼
                e.preventDefault();
                fn_addPeople();
            });
			$("#add_insert").on("click", function(e){ //재무정보 연도 추가완료
                e.preventDefault();
                fn_add_insert();
            });
            
                       
        });
         
        function fn_openCertiList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certi/openCertifiedList.do' />");
            comSubmit.submit();
        }
         
        function fn_openCertiUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certi/openCerti_CompanyUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        
        function fn_downloadFile(obj){
            var idx = obj.parent().find("#IDX").val();
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/common/downloadFile.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        function fn_addYear(){
            var str = "";
            str += "<div>";
            str += "<table width='100%' class='board_view' cellpadding='0' cellspacing='0'>";
            str += "<tr>";
            str += "<th>연도</th>";
            str += "<td><select name='year_"+(year_count++)+"'>";
            str += "<option value=''>선택</option>";
            str += "<option value='2010'>2010</option>";
            str += "<option value='2011'>2011</option>";
            str += "<option value='2012'>2012</option>";
            str += "<option value='2013'>2013</option>";
            str += "<option value='2014'>2014</option>";
            str += "<option value='2015'>2015</option>";
            str += "<option value='2016'>2016</option>";
            str += "<option value='2017'>2017</option>";
            str += "<option value='2018'>2018</option>";
            str += "<option value='2019'>2019</option>";
            str += "<option value='2020'>2020</option>";
            str += "<option value='2021'>2021</option>";
            str += "<option value='2022'>2022</option>";
            str += "</select>";
            str += "</td>";
            str += "<th>매출액</th>";
            str += "<td><input type='text' name='total_sales_"+(total_sales_count++)+"'></td>";
            str += "<th>영업이익</th>";
            str += "<td><input type='text' name='oper_profit_"+(oper_profit_count++)+"'></td>";
            str += "</tr><tr>";
            str += "<th>당기순이익</th>";
            str += "<td><input type='text' name='income_term_"+(income_term_count++)+"'></td>";
            str += "<th>총노무비</th>";
            str += "<td><input type='text' name='total_labor_"+(total_labor_count++)+"'></td>";
            str += "<th>사업개발비</th>";
            str += "<td><input type='text' name='total_devel_sales_"+(total_devel_sales_count++)+"'></td>";
            str += "</tr><tr>";
            str += "<th>기초컨설팅</th>";
            str += "<td><input type='text' name='basic_consalting_"+(basic_consalting_count++)+"'></td>";
            str += "<th>전문컨설팅</th>";
            str += "<td><input type='text' name='pro_consalting_"+(pro_consalting_count++)+"'></td>";
            str += "<th></th><td></td>";
            str += "</tr></table><a href='#this' class='btn' name='delete'>삭제</a>";
            str += "</div>";
            
            $("#Yeardiv").append(str);
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
		function fn_addPeople(){
            var str = "";
            str += "<div>";
            str += "<table width='100%' class='board_view' cellpadding='0' cellspacing='0'>";
            str += "<tr>";
            str += "<th>연도</th>";
            str += "<td><select name='people_years_"+(people_years_count++)+"'>";
            str += "<option value=''>선택</option>";
            str += "<option value='2010'>2010</option>";
            str += "<option value='2011'>2011</option>";
            str += "<option value='2012'>2012</option>";
            str += "<option value='2013'>2013</option>";
            str += "<option value='2014'>2014</option>";
            str += "<option value='2015'>2015</option>";
            str += "<option value='2016'>2016</option>";
            str += "<option value='2017'>2017</option>";
            str += "<option value='2018'>2018</option>";
            str += "<option value='2019'>2019</option>";
            str += "<option value='2020'>2020</option>";
            str += "<option value='2021'>2021</option>";
            str += "<option value='2022'>2022</option>";
            str += "</select>";
            str += "</td>";
            str += "<th>사회적일자리배정인원</th>";
            str += "<td><input type='text' name='social_people_"+(social_people_count++)+"'></td>";
            str += "<th>전문인력배정인원</th>";
            str += "<td><input type='text' name='prof_people_"+(prof_people_count++)+"'></td>";
            str += "</tr><tr>";
            str += "<th>유급근로자수</th>";
            str += "<td><input type='text' name='salary_people_"+(salary_people_count++)+"'></td>";
            str += "<th>취약계층근로자수</th>";
            str += "<td><input type='text' name='vul_people_"+(vul_people_count++)+"'></td>";
            str += "<th></th>";
            str += "<td></td>";
            str += "</tr></table><a href='#this' class='btn' name='delete'>삭제</a>";
            str += "</div>";
            
            $("#Peoplediv").append(str);
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
        function fn_deleteFile(obj){
            obj.parent().remove();
        }
        function fn_add_insert(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/certi/addYear_insert.do' />");
			comSubmit.submit();
		}
        
    </script>
</body>
</html>
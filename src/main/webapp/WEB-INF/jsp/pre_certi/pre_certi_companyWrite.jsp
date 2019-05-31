<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<link href="/first/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="/first/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/first/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script type='text/javascript'>
function itemChange(){
	 
	var jaehwa = ["식품","생활용품","기업용품"];
	var service = ["교육","보건","사회복지","환경","보육","문화","간병가사지원","기타"];
	 
	var selectItem = $("#item_gubun").val();
	 
	var changeItem;
	  
	if(selectItem == "재화"){
	  changeItem = jaehwa;
	}
	else if(selectItem == "서비스"){
	  changeItem = service;
	}
	 
	$('#item_dru').empty();
	 
	for(var count = 0; count < changeItem.length; count++){                
	                var option = $("<option>"+changeItem[count]+"</option>");
	                $('#item_dru').append(option);
	            }
	 
	}

	function so_itemChange(){
		 
		var sikpum = ["반찬류","음료간식","기타식품","1차식품"];
		var life = ["가정용품","인테리어용품","화장품비누","패션잡화","의류","기타생활용품"];
		var company = ["사무용품","전산용품","산업용품","기타기업용품"];
		var edu = ["전문교육","방과후교육","장애인교육"];
		var bokun = ["의료"];
		var hwan = ["청소","재활용","집수리"];
		var boyuk = ["보육"];
		var munhwa = ["문화예술공연","여행,관광"];
		var kan_byung = ["간병가사","산모도우미"];
		var etc = ["지역개발","물류유통","출판인쇄","컨설팅","IT","기타"];
		 
		var selectItem = $("#item_dru").val();
		 
		var changeItem;
		  
		if(selectItem == "식품"){
		  changeItem = sikpum;
		}
		else if(selectItem == "생활용품"){
		  changeItem = life;
		}
		else if(selectItem == "기업용품"){
			  changeItem = company;
		}
		else if(selectItem == "교육"){
			  changeItem = edu;
		}
		else if(selectItem == "보건"){
			  changeItem = bokun;
		}
		else if(selectItem == "환경"){
			  changeItem = hwan;
		}
		else if(selectItem == "보육"){
			  changeItem = boyuk;
		}
		else if(selectItem == "문화"){
			  changeItem = munhwa;
		}
		else if(selectItem == "간병가사"){
			  changeItem = kan_byung;
		}
		else if(selectItem == "기타"){
			  changeItem = etc;
		}
		
		 
		$('#item_jru').empty();
		 
		for(var count = 0; count < changeItem.length; count++){                
		                var option = $("<option>"+changeItem[count]+"</option>");
		                $('#item_jru').append(option);
        }
		 
}
function goPopup(){
var pop = window.open("/first/Popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
document.frm.roadFullAddr.value = roadFullAddr; 
//document.frm.roadAddrPart1.value = roadAddrPart1; 
//document.frm.roadAddrPart2.value = roadAddrPart2; 
//document.frm.addrDetail.value = addrDetail; 
document.frm.zipNo.value = zipNo;
}
</script>
<script type='text/javascript'>
$(function(){
    $('.input-group.date').datepicker({
        calendarWeeks: false,
        todayHighlight: true,
        autoclose: true,
        format: "yyyy/mm/dd",
        language: "kr"
    });
});
</script>
</head>
<body>
<form id="frm" name="frm" enctype="multipart/form-data">
<h1>기업정보</h1>
<table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <tr>
    <th scope="row">기관명</th>
    <td><input type="text" id="company_name" name="company_name" ></td>
    <th scope="row">우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
    <td><input type="text" id="zipNo" name="company_zip" value=""></td>
    <th scope="row">주소</th>
    <td><input type="text" id="roadFullAddr" name="company_address" value="" size="70"></td>
  </tr>
  <tr>
    <th scope="row">광역자치단체</th>
    <td><input type="text" name="cc_area" ></td>
    <th scope="row">관할관서</th>
    <td>
     <select name="ca_area">
      <option value="">선택</option>
		<option value="CA01">강릉</option>
		<option value="CA02">태백</option>
		<option value="CA03">춘천</option>
		<option value="CA04">화천</option>
		<option value="CA05">평창</option>
		<option value="CA06">횡성</option>
		<option value="CA07">원주</option>
		<option value="CA08">영월</option>
		<option value="CA09">삼척</option>
		<option value="CA10">정선</option>
		<option value="CA11">철원</option> 
		<option value="CA12">양구</option> 
		<option value="CA13">인제</option>
		<option value="CA14">고성</option>
		<option value="CA15">양양</option>
		<option value="CA16">동해</option>
		<option value="CA17">홍천</option>		   
		<option value="CA18">속초</option>
     </select>
    </td>
    <th scope="row">인증지정번호</th>
    <td><input type="text" name="cert_num" ></td>
  </tr>
  <tr>
    <th scope="row">사회적목적실현유형</th>
    <td>
    <select id="spt" name="spt">
     <option value="">선택</option>
     <option value="일자리제공형">일자리제공형</option>				
     <option value="사회서비스제공형">사회서비스제공형</option>				
     <option value="혼합형">혼합형</option>
     <option value="지역사회공헌형">지역사회공헌형</option>
     <option value="기타형">기타형</option>
	</select>
    </td>
    <th scope="row">지정일</th>
    <td>
    <div class="input-group date" style="width:200px">
    <input type="text" id="su_date" name="ji_date" class="form-control">
    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    </div>
    </td>
    <th scope="row">인증유지현황</th>
    <td>
        <select id="m_cert" name="m_cert">
		 <option value="">선택</option>
		 <option value="Y">유지</option>				
		 <option value="C">취소</option>				
		 <option value="B">반납</option>				
		</select>
    </td>
  </tr>
  <tr>
    <th scope="row">예비SE지역형</th>
    <td>
        <select id="se_area_type" name="se_area_type">
		 <option value="">선택</option>
		 <option value="강원형">강원형</option>				
		 <option value="춘천형">춘천형</option>								
		</select>
    </td>
    <th scope="row">예비SE부처형</th>
    <td>
        <select id="se_bu_type" name="se_bu_type">
		 <option value="">선택</option>
		 <option value="농림축산식품부">농림축산식품부</option>				
		 <option value="문화재청">문화재청</option>				
		 <option value="보건복지부">보건복지부</option>
		 <option value="산림청">산림청</option>
		 <option value="여성가족부">여성가족부</option>
		 <option value="통일부">통일부</option>
		 <option value="환경부">환경부</option>
		 <option value="고용노동부">고용노동부</option>
		</select>
    </td>
     <th scope="row">업체형태</th>
    <td><input type="text" id="company_type" name="company_type"></td>
  </tr>
  <tr>
    <th scope="row">조직형태</th>
    <td>
    <select name="jojik_type">
		 <option value="">선택</option>
		 <option value="사회적협동조합">사회적협동조합</option>				
		 <option value="소비자생활협동조합">소비자생활협동조합</option>
		 <option value="내 사업단">내 사업단</option>
		 <option value="상법상회사">상법상회사</option>
		 <option value="협동조합">협동조합</option>
		 <option value="민법상법인">민법상법인</option>
		 <option value="영농조합법인">영농조합법인</option>
		 <option value="법인내사업단">법인내사업단</option>
		 <option value="주식회사">주식회사</option>
		 <option value="비영리민간단체">비영리민간단체</option>
		 <option value="농(어)업회사법인">농(어)업회사법인</option>				
		</select>
    </td>
    <th scope="row">설립일</th>
    <td>
      <div class="input-group date" style="width:200px">
      <input type="text" id="es_date" name="es_date" class="form-control">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      </div>
    </td>
    <th scope="row">사업장관리번호</th>
    <td><input type="text" id="bm_number" name="bm_number"></td>
  </tr>
  <tr>
    <th scope="row">사업자번호 본점</th>
    <td><input type="text" id="company_bnum" name="company_bnum"></td>
    <th scope="row">사업자번호 지점</th>
    <td><input type="text" id="company_jnum" name="company_jnum"></td>
    <th scope="row">고유번호</th>
    <td><input type="text" id="uniq_num" name="uniq_num"></td>
  </tr>
  <tr>
    <th scope="row">법인등록번호</th>
    <td><input type="text" id="cr_num" name="cr_num"></td>
    <th scope="row">사업단관련</th>
    <td><input type="text" id="sud_nm" name="sud_nm"></td>
    <th scope="row">모법인등록번호</th>
    <td><input type="text" id="sud_num" name="sud_num"></td>
  </tr>
  <tr>
    <th scope="row">주요사업내용</th>
    <td><input type="text" id="biz_detail" name="biz_detail" size="50"></td>
    <th scope="row">재화 및 서비스품목</th>
    <td>
        <select id="item_gubun" name="item_gubun" onchange="javascript:itemChange()">
		 <option value="">선택</option>
		 <option value="재화">재화</option>				
		 <option value="서비스">서비스</option>				
		</select>
    </td>
    <th scope="row">대분류</th>
    <td>
    <select id="item_dru" name="item_dru" onchange="javascript:so_itemChange()">					
	</select>
    </td>
  </tr>
  <tr>
    <th scope="row">중분류</th>
    <td>
    <select id="item_jru" name="item_jru">							
	</select>
    </td>
    <th scope="row">업종분류</th>
    <td>
        <select name="industry_bunryu">
		<option value="">선택</option>
		<option value="교육">교육</option>				
		<option value="보건">보건</option>
		<option value="사회복지">사회복지</option>
		<option value="환경">환경</option>
		<option value="청소">청소</option>
		<option value="보육">보육</option>
		<option value="산림보건및관리">산림보건및관리</option>
		<option value="간병,가사지원">간병,가사지원</option>
		<option value="문화,예술">문화,예술</option>
		<option value="관광,운동">관광,운동</option>
		<option value="문화재">문화재</option>
		<option value="고용">고용</option>
		<option value="기타">기타</option>
		</select>
    </td>
    <th scope="row">대표자</th>
    <td><input type="text" id="ceo_nm" name="ceo_nm"></td>
  </tr>
  <tr>
    <th scope="row">대표자 생년월일</th>
    <td>
       <div class="input-group date" style="width:200px">
         <input type="text" id="ceo_birth" name="ceo_birth" class="form-control" size="20"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
       </div>
    </td>
    <th scope="row">휴대전화</th>
    <td><input type="text" id="hp_number" name="hp_number"></td>
    <th scope="row">담당자</th>
    <td><input type="text" id="pic" name="pic"></td>
  </tr>
  <tr>
    <th scope="row">직위</th>
    <td><input type="text" id="c_pos" name="c_pos"></td>
    <th scope="row">전화번호</th>
    <td><input type="text" id="areap_number" name="areap_number"></td>
    <th scope="row">팩스번호</th>
    <td><input type="text" id="fax_number" name="fax_number"></td>
  </tr>
  <tr>
    <th scope="row">이메일</th>
    <td><input type="text" id="email" name="email" size="30"></td>
    <th scope="row">홈페이지</th>
    <td><input type="text" id="homepage" name="homepage"></td>
    <th scope="row"></th>
    <td></td>
  </tr>
</table>

<h1>재무정보</h1>
<div id="Yeardiv" style="padding-top:10px;padding-left:10px;">
 <div id="money_info">
   <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
    <tr>
     <th>연도</th>
     <td>
     <select name="year_0">
      <option value="">선택</option>
      <option value="2010">2010</option>
      <option value="2011">2011</option>
      <option value="2012">2012</option>
      <option value="2013">2013</option>
      <option value="2014">2014</option>
      <option value="2015">2015</option>
      <option value="2016">2016</option>
      <option value="2017">2017</option>
      <option value="2018">2018</option>
      <option value="2019">2019</option>
      <option value="2020">2020</option>
      <option value="2021">2021</option>
      <option value="2022">2022</option>
     </select>
     </td>
     <th>매출액</th>
     <td><input type="text" id="" name="total_sales_0"></td>
     <th>영업이익</th>
     <td><input type="text" id="" name="oper_profit_0"></td>
    </tr>
    <tr>
     <th>당기순이익</th>
     <td><input type="text" id="" name="income_term_0"></td>
     <th>총노무비</th>
     <td><input type="text" id="" name="total_labor_0"></td>
     <th>사업개발비</th>
     <td><input type="text" id="" name="total_devel_sales_0"></td>
    </tr>
    <tr>
     <th>기초컨설팅금액</th>
     <td><input type="text" id="" name="basic_consalting_0"></td>
     <th>전문컨설팅금액</th>
     <td><input type="text" id="" name="pro_consalting_0"></td>
     <th></th>
     <td></td>
    </tr>
   </table>
   <a href="#this" class="btn" id="delete" name="delete">삭제</a>
 </div>
</div>

<h1>인원정보</h1>
<div id="Peoplediv" style="padding-top:10px;padding-left:10px;">
 <div id="people_info">
   <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
    <tr>
     <th>연도</th>
     <td>
     <select name="people_years_0">
      <option value="">선택</option>
      <option value="2010">2010</option>
      <option value="2011">2011</option>
      <option value="2012">2012</option>
      <option value="2013">2013</option>
      <option value="2014">2014</option>
      <option value="2015">2015</option>
      <option value="2016">2016</option>
      <option value="2017">2017</option>
      <option value="2018">2018</option>
      <option value="2019">2019</option>
      <option value="2020">2020</option>
      <option value="2021">2021</option>
      <option value="2022">2022</option>
     </select>
     </td>
     <th>사회적일자리배정인원</th>
     <td><input type="text" name="social_people_0"></td>
     <th>전문인력배정인원</th>
     <td><input type="text" name="prof_people_0"></td>
    </tr>
    <tr>
     <th>유급근로자수</th>
     <td><input type="text" name="salary_people_0"></td>
     <th>취약계층근로자수</th>
     <td><input type="text" name="vul_people_0"></td>
     <th></th>
     <td></td>
    </tr>
    </table>
      <a href="#this" class="btn" id="delete" name="delete">삭제</a>
      </div>
    </div>
    <h2>취약계층분류</h2><div>(최종연도기준)</div>
    <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
    <tr>
     <th>저속득</th>
     <td><input type="text" name="jsd"></td>
     <th>고령자</th>
     <td><input type="text" name="krj"></td>
     <th>장애인</th>
     <td><input type="text" name="jai"></td>
     <th>성매매피해자</th>
     <td><input type="text" name="spj"></td>
    <tr>
     <th>청년,경력단절</th>
     <td><input type="text" name="ckd"></td>
     <th>북한이탈주민</th>
     <td><input type="text" name="bej"></td>
     <th>가정폭력피해자</th>
     <td><input type="text" name="kpp"></td>
     <th>한부모가족지원법</th>
     <td><input type="text" name="hwb"></td>
    </tr>
    <tr>
     <th>결혼이민자</th>
     <td><input type="text" name="kej"></td>
     <th>갱생보호대상자</th>
     <td><input type="text" name="kbd"></td>
     <th>장기실직자</th>
     <td><input type="text" name="jsj"></td>
     <th>범죄구조피해자</th>
     <td><input type="text" name="bkp"></td>
    </tr>
    <tr>
     <th>출소6개월미만</th>
     <td><input type="text" name="cka"></td>
     <th>소년원퇴원6개월</th>
     <td><input type="text" name="ska"></td>
     <th>노숙자</th>
     <td><input type="text" name="nsj"></td>
     <th>약.알.도박중독자</th>
     <td><input type="text" name="yad"></td>
    </tr>
    <tr>
     <th>여성가장</th>
     <td><input type="text" name="ykj"></td>
     <th>조손가정</th>
     <td><input type="text" name="jsk"></td>
     <th>외국인근로자</th>
     <td><input type="text" name="oik"></td>
     <th>저신용자</th>
     <td><input type="text" name="jsy"></td>
    </tr>
    <tr>
     <th>학교폭력피해자</th>
     <td><input type="text" name="hpp"></td>
     <th>학교밖청소년</th>
     <td><input type="text" name="hbc"></td>
     <th></th>
     <td></td>
     <th></th>
     <td></td>
    </tr>
   </table>

<div style="padding-top:20px;">&nbsp;</div>
<a href="#this" class="btn" id="addyear" >재무정보연도추가하기</a>
<a href="#this" class="btn" id="addpeople" >인원정보연도추가하기</a>
<a href="#this" class="btn" id="write" >작성하기</a>
<a href="#this" class="btn" id="list" >목록으로</a>
</form>
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
			
			$("#write").on("click", function(e){ //작성하기 버튼
				if($('#company_name').val() == ""){
					   alert("업체명을 입력해주세요.");
					   return false;
				   }else{
					   e.preventDefault();
					   fn_insertCertified_Company();				   
				   }
				   
			});
			$("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
			$("#addpeople").on("click", function(e){ //인원정보 연도 추가 버튼
                e.preventDefault();
                fn_addPeople();
            });
             
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		
		function fn_openCertiList(){
	            var comSubmit = new ComSubmit();
	            comSubmit.setUrl("<c:url value='/pre_certi/openPre_CertifiedList.do' />");
	            comSubmit.submit();
	    }
		function fn_insertCertified_Company(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/pre_certi/insertPre_Certified_Company.do' />");
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
	</script>
</body>
</html>
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
<input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
<h1>기업정보</h1>
<table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <tr>
    <th scope="row">기관명</th>
    <td><input type="text" name="company_name" value="${map.company_name }"></td>
    <th scope="row">우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
    <td><input type="text" id="zipNo" name="company_zip" value="${map.company_zip }"></td>
    <th scope="row">주소</th>
    <td><input type="text" id="roadFullAddr" name="company_address" value="${map.company_address}" size="70"></td>
  </tr>
  <tr>
    <th scope="row">광역자치단체</th>
    <td><input type="text" name="cc_area" value="${map.cc_area}" ></td>
    <th scope="row">관할관서</th>
    <td>
     <select name="ca_area">
      <option value="">선택</option>
		<option value="CA01" <c:if test="${map.ca_area eq 'CA01'}">selected</c:if>>강릉</option>
        <option value="CA02" <c:if test="${map.ca_area eq 'CA02'}">selected</c:if>>태백</option>
        <option value="CA03" <c:if test="${map.ca_area eq 'CA03'}">selected</c:if>>춘천</option>
        <option value="CA04" <c:if test="${map.ca_area eq 'CA04'}">selected</c:if>>화천</option>
        <option value="CA05" <c:if test="${map.ca_area eq 'CA05'}">selected</c:if>>평창</option>
        <option value="CA06" <c:if test="${map.ca_area eq 'CA06'}">selected</c:if>>횡성</option>
        <option value="CA07" <c:if test="${map.ca_area eq 'CA07'}">selected</c:if>>원주</option>
        <option value="CA08" <c:if test="${map.ca_area eq 'CA08'}">selected</c:if>>영월</option>
        <option value="CA09" <c:if test="${map.ca_area eq 'CA09'}">selected</c:if>>삼척</option>
        <option value="CA10" <c:if test="${map.ca_area eq 'CA10'}">selected</c:if>>정선</option>
        <option value="CA11" <c:if test="${map.ca_area eq 'CA11'}">selected</c:if>>철원</option> 
        <option value="CA12" <c:if test="${map.ca_area eq 'CA12'}">selected</c:if>>양구</option> 
        <option value="CA13" <c:if test="${map.ca_area eq 'CA13'}">selected</c:if>>인제</option>
        <option value="CA14" <c:if test="${map.ca_area eq 'CA14'}">selected</c:if>>고성</option>
        <option value="CA15" <c:if test="${map.ca_area eq 'CA15'}">selected</c:if>>양양</option>
        <option value="CA16" <c:if test="${map.ca_area eq 'CA16'}">selected</c:if>>동해</option>
        <option value="CA17" <c:if test="${map.ca_area eq 'CA17'}">selected</c:if>>홍천</option>		   
        <option value="CA18" <c:if test="${map.ca_area eq 'CA18'}">selected</c:if>>속초</option>
     </select>
    </td>
    <th scope="row">인증지정번호</th>
    <td><input type="text" name="cert_num" value="${map.cert_num}" ></td>
  </tr>
  <tr>
    <th scope="row">사회적목적실현유형</th>
    <td>
    <select id="spt" name="spt">
     <option value="" <c:if test="${map.spt eq ''}">selected</c:if>>선택</option>
     <option value="일자리제공형" <c:if test="${map.spt eq '일자리제공형'}">selected</c:if>>일자리제공형</option>				
     <option value="사회서비스제공형" <c:if test="${map.spt eq '사회서비스제공형'}">selected</c:if>>사회서비스제공형</option>				
     <option value="혼합형" <c:if test="${map.spt eq '혼합형'}">selected</c:if>>혼합형</option>
     <option value="지역사회공헌형" <c:if test="${map.spt eq '지역사회공헌형'}">selected</c:if>>지역사회공헌형</option>
     <option value="기타형" <c:if test="${map.spt eq '기타형'}">selected</c:if>>기타형</option>
	</select>
    </td>
    <th scope="row">지정일</th>
    <td>
    <div class="input-group date" style="width:200px">
    <input type="text" id="su_date" name="ji_date" value="${map.ji_date}" class="form-control">
    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
    </div>
    </td>
    <th scope="row">인증유지현황</th>
    <td>
        <select id="m_cert" name="m_cert">
		 <option value="" <c:if test="${map.m_cert eq ''}">selected</c:if>>선택</option>
		 <option value="Y" <c:if test="${map.m_cert eq 'Y'}">selected</c:if>>유지</option>				
		 <option value="C" <c:if test="${map.m_cert eq 'C'}">selected</c:if>>취소</option>				
		 <option value="B" <c:if test="${map.m_cert eq 'B'}">selected</c:if>>반납</option>				
		</select>
    </td>
  </tr>
  <tr>
    <th scope="row">예비SE지역형</th>
    <td>
        <select id="se_area_type" name="se_area_type">
		 <option value="" <c:if test="${map.se_area_type eq ''}">selected</c:if>>선택</option>
		 <option value="강원형" <c:if test="${map.se_area_type eq '강원형'}">selected</c:if>>강원형</option>				
		 <option value="춘천형" <c:if test="${map.se_area_type eq '춘천형'}">selected</c:if>>춘천형</option>								
		</select>
    </td>
    <th scope="row">예비SE부처형</th>
    <td>
        <select id="se_bu_type" name="se_bu_type">
		 <option value="" <c:if test="${map.se_bu_type eq ''}">selected</c:if>>선택</option>
		 <option value="농림축산식품부" <c:if test="${map.se_bu_type eq '농림축산식품부'}">selected</c:if>>농림축산식품부</option>				
		 <option value="문화재청" <c:if test="${map.se_bu_type eq '문화재청'}">selected</c:if>>문화재청</option>				
		 <option value="보건복지부" <c:if test="${map.se_bu_type eq '보건복지부'}">selected</c:if>>보건복지부</option>
		 <option value="산림청" <c:if test="${map.se_bu_type eq '산림청'}">selected</c:if>>산림청</option>
		 <option value="여성가족부" <c:if test="${map.se_bu_type eq '여성가족부'}">selected</c:if>>여성가족부</option>
		 <option value="통일부" <c:if test="${map.se_bu_type eq '통일부'}">selected</c:if>>통일부</option>
		 <option value="환경부" <c:if test="${map.se_bu_type eq '환경부'}">selected</c:if>>환경부</option>
		 <option value="고용노동부" <c:if test="${map.se_bu_type eq '고용노동부'}">selected</c:if>>고용노동부</option>
		</select>
    </td>
     <th scope="row">업체형태</th>
    <td><input type="text" id="company_type" name="company_type" value="${map.company_type}"></td>
  </tr>
  <tr>
    <th scope="row">조직형태</th>
    <td>
    <select name="jojik_type">
		 <option value="" <c:if test="${map.jojik_type eq ''}">selected</c:if>>선택</option>
		 <option value="사회적협동조합" <c:if test="${map.jojik_type eq '사회적협동조합'}">selected</c:if>>사회적협동조합</option>				
		 <option value="소비자생활협동조합" <c:if test="${map.jojik_type eq '소비자생활협동조합'}">selected</c:if>>소비자생활협동조합</option>
		 <option value="내 사업단" <c:if test="${map.jojik_type eq '내 사업단'}">selected</c:if>>내 사업단</option>
		 <option value="상법상회사" <c:if test="${map.jojik_type eq '상법상회사'}">selected</c:if>>상법상회사</option>
		 <option value="협동조합" <c:if test="${map.jojik_type eq '협동조합'}">selected</c:if>>협동조합</option>
		 <option value="민법상법인" <c:if test="${map.jojik_type eq '민법상법인'}">selected</c:if>>민법상법인</option>
		 <option value="영농조합법인" <c:if test="${map.jojik_type eq '영농조합법인'}">selected</c:if>>영농조합법인</option>
		 <option value="법인내사업단" <c:if test="${map.jojik_type eq '법인내사업단'}">selected</c:if>>법인내사업단</option>
		 <option value="주식회사" <c:if test="${map.jojik_type eq '주식회사'}">selected</c:if>>주식회사</option>
		 <option value="비영리민간단체" <c:if test="${map.jojik_type eq '비영리민간단체'}">selected</c:if>>비영리민간단체</option>
		 <option value="농(어)업회사법인" <c:if test="${map.jojik_type eq '농(어)업회사법인'}">selected</c:if>>농(어)업회사법인</option>				
		</select>
    </td>
    <th scope="row">설립일</th>
    <td>
      <div class="input-group date" style="width:200px">
      <input type="text" id="es_date" name="es_date" value="${map.es_date}" class="form-control">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      </div>
    </td>
    <th scope="row">사업장관리번호</th>
    <td><input type="text" id="bm_number" name="bm_number" value="${map.bm_number}"></td>
  </tr>
  <tr>
    <th scope="row">사업자번호 본점</th>
    <td><input type="text" id="company_bnum" name="company_bnum" value="${map.company_bnum}"></td>
    <th scope="row">사업자번호 지점</th>
    <td><input type="text" id="company_jnum" name="company_jnum" value="${map.company_jnum}"></td>
    <th scope="row">고유번호</th>
    <td><input type="text" id="uniq_num" name="uniq_num" value="${map.uniq_num}"></td>
  </tr>
  <tr>
    <th scope="row">법인등록번호</th>
    <td><input type="text" id="cr_num" name="cr_num" value="${map.cr_num}"></td>
    <th scope="row">사업단관련</th>
    <td><input type="text" id="sud_nm" name="sud_nm" value="${map.sud_nm}"></td>
    <th scope="row">모법인등록번호</th>
    <td><input type="text" id="sud_num" name="sud_num" value="${map.sud_num}"></td>
  </tr>
  <tr>
    <th scope="row">주요사업내용</th>
    <td><input type="text" id="biz_detail" name="biz_detail" size="50" value="${map.biz_detail}"></td>
    <th scope="row">재화 및 서비스품목</th>
    <td>
        <select id="item_gubun" name="item_gubun" onchange="javascript:itemChange()">
		 <option value="" <c:if test="${map.item_gubun eq ''}">selected</c:if>>선택</option>
		 <option value="재화" <c:if test="${map.item_gubun eq '재화'}">selected</c:if>>재화</option>				
		 <option value="서비스" <c:if test="${map.item_gubun eq '서비스'}">selected</c:if>>서비스</option>				
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
        <option value="" <c:if test="${map.industry_bunryu eq ''}">selected</c:if>>선택</option>
		<option value="교육" <c:if test="${map.industry_bunryu eq '교육'}">selected</c:if>>교육</option>				
		<option value="보건" <c:if test="${map.industry_bunryu eq '보건'}">selected</c:if>>보건</option>
		<option value="사회복지" <c:if test="${map.industry_bunryu eq '사회복지'}">selected</c:if>>사회복지</option>
		<option value="환경" <c:if test="${map.industry_bunryu eq '환경'}">selected</c:if>>환경</option>
		<option value="청소" <c:if test="${map.industry_bunryu eq '청소'}">selected</c:if>>청소</option>
		<option value="보육" <c:if test="${map.industry_bunryu eq '보육'}">selected</c:if>>보육</option>
		<option value="산림보건및관리" <c:if test="${map.industry_bunryu eq '산림보건및관리'}">selected</c:if>>산림보건및관리</option>
		<option value="간병,가사지원" <c:if test="${map.industry_bunryu eq '간병,가사지원'}">selected</c:if>>간병,가사지원</option>
		<option value="문화,예술" <c:if test="${map.industry_bunryu eq '문화,예술'}">selected</c:if>>문화,예술</option>
		<option value="관광,운동" <c:if test="${map.industry_bunryu eq '관광,운동'}">selected</c:if>>관광,운동</option>
		<option value="문화재" <c:if test="${map.industry_bunryu eq '문화재'}">selected</c:if>>문화재</option>
		<option value="고용" <c:if test="${map.industry_bunryu eq '고용'}">selected</c:if>>고용</option>
		<option value="기타" <c:if test="${map.industry_bunryu eq '기타'}">selected</c:if>>기타</option>
		</select>
    </td>
    <th scope="row">대표자</th>
    <td><input type="text" id="ceo_nm" name="ceo_nm" value="${map.ceo_nm}"></td>
  </tr>
  <tr>
    <th scope="row">대표자 생년월일</th>
    <td>
       <div class="input-group date" style="width:200px">
         <input type="text" id="ceo_birth" name="ceo_birth" class="form-control" size="20" value="${map.ceo_birth}"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
       </div>
    </td>
    <th scope="row">휴대전화</th>
    <td><input type="text" id="hp_number" name="hp_number" value="${map.hp_number}"></td>
    <th scope="row">담당자</th>
    <td><input type="text" id="pic" name="pic" value="${map.pic}"></td>
  </tr>
  <tr>
    <th scope="row">직위</th>
    <td><input type="text" id="c_pos" name="c_pos" value="${map.c_pos}"></td>
    <th scope="row">전화번호</th>
    <td><input type="text" id="areap_number" name="areap_number" value="${map.areap_number}"></td>
    <th scope="row">팩스번호</th>
    <td><input type="text" id="fax_number" name="fax_number" value="${map.fax_number}"></td>
  </tr>
  <tr>
    <th scope="row">이메일</th>
    <td><input type="text" id="email" name="email" size="30" value="${map.email}"></td>
    <th scope="row">홈페이지</th>
    <td><input type="text" id="homepage" name="homepage" value="${map.homepage}"></td>
    <th scope="row"></th>
    <td></td>
  </tr>
</table>
<form id="mony_frm" name="mony_frm" enctype="multipart/form-data">
<h1>재무정보</h1>
<div id="Yeardiv" style="padding-top:10px;padding-left:10px;">
 <div id="money_info">
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
        <c:when test="${fn:length(list) > 0}">
  		<c:forEach var="row" items="${list }" varStatus="var">
  		<input type="hidden" name="mony_idx" id="mony_idx" value="${row.IDX }">
  		    <tr>
             <th>연도</th>
             <td>
             <select name="year_${var.index }">
              <option value="" <c:if test="${row.years eq ''}">selected</c:if>>선택</option>
              <option value="2010" <c:if test="${row.years eq '2010'}">selected</c:if>>2010</option>
              <option value="2011" <c:if test="${row.years eq '2011'}">selected</c:if>>2011</option>
              <option value="2012" <c:if test="${row.years eq '2012'}">selected</c:if>>2012</option>
              <option value="2013" <c:if test="${row.years eq '2013'}">selected</c:if>>2013</option>
              <option value="2014" <c:if test="${row.years eq '2014'}">selected</c:if>>2014</option>
              <option value="2015" <c:if test="${row.years eq '2015'}">selected</c:if>>2015</option>
              <option value="2016" <c:if test="${row.years eq '2016'}">selected</c:if>>2016</option>
              <option value="2017" <c:if test="${row.years eq '2017'}">selected</c:if>>2017</option>
              <option value="2018" <c:if test="${row.years eq '2018'}">selected</c:if>>2018</option>
              <option value="2019" <c:if test="${row.years eq '2019'}">selected</c:if>>2019</option>
              <option value="2020" <c:if test="${row.years eq '2020'}">selected</c:if>>2020</option>
              <option value="2021" <c:if test="${row.years eq '2021'}">selected</c:if>>2021</option>
              <option value="2022" <c:if test="${row.years eq '2022'}">selected</c:if>>2022</option>
             </select>
             </td>
             <th>매출액</th>
             <td><input type="text" id="" name="total_sales_${var.index }" value="${row.total_sales}"></td>
             <th>영업이익</th>
             <td><input type="text" id="" name="oper_profit_${var.index }" value="${row.oper_profit}"></td>
            </tr>
            <tr>
             <th>당기순이익</th>
             <td><input type="text" id="" name="income_term_${var.index }" value="${row.income_term }"></td>
             <th>총노무비</th>
             <td><input type="text" id="" name="total_labor_${var.index }" value="${row.total_labor }"></td>
             <th>사업개발비</th>
             <td><input type="text" id="" name="total_devel_sales_${var.index }" value="${row.total_devel_sales }"></td>
            </tr>
            <tr>
             <th>기초컨설팅금액</th>
             <td><input type="text" id="" name="basic_consalting_${var.index }" value="${row.basic_consalting }"></td>
             <th>전문컨설팅금액</th>
             <td><input type="text" id="" name="pro_consalting_${var.index }" value="${row.pro_consalting }"></td>
             <th></th>
             <td></td>
            </tr>
            <tr><td colspan="6"><a href="#this" class="btn" id="updateMony" >재무정보수정</a></td></tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">재무정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
        </table>       
     </div>
  </div>
</form>
<h1>인원정보</h1>
<div id="Peoplediv" style="padding-top:10px;padding-left:10px;">
 <div id="people_info">
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(people_list) > 0}">
			<c:forEach var="row" items="${people_list}" varStatus="var">
            <tr>
              <th>연도</th>
              <td>
              <select name="people_years_${var.index }">
               <option value="2010" <c:if test="${row.people_years eq '2010'}">selected</c:if>>2010</option>
               <option value="2011" <c:if test="${row.people_years eq '2011'}">selected</c:if>>2011</option>
               <option value="2012" <c:if test="${row.people_years eq '2012'}">selected</c:if>>2012</option>
               <option value="2013" <c:if test="${row.people_years eq '2013'}">selected</c:if>>2013</option>
               <option value="2014" <c:if test="${row.people_years eq '2014'}">selected</c:if>>2014</option>
               <option value="2015" <c:if test="${row.people_years eq '2015'}">selected</c:if>>2015</option>
               <option value="2016" <c:if test="${row.people_years eq '2016'}">selected</c:if>>2016</option>
               <option value="2017" <c:if test="${row.people_years eq '2017'}">selected</c:if>>2017</option>
               <option value="2018" <c:if test="${row.people_years eq '2018'}">selected</c:if>>2018</option>
               <option value="2019" <c:if test="${row.people_years eq '2019'}">selected</c:if>>2019</option>
               <option value="2020" <c:if test="${row.people_years eq '2020'}">selected</c:if>>2020</option>
               <option value="2021" <c:if test="${row.people_years eq '2021'}">selected</c:if>>2021</option>
               <option value="2022" <c:if test="${row.people_years eq '2022'}">selected</c:if>>2022</option>
              </select>
              </td>
              <th>사회적일자리배정인원</th>
              <td><input type="text" name="social_people_${var.index}" value="${row.social_people}"></td>
              <th>전문인력배정인원</th>
              <td><input type="text" name="prof_people__${var.index}" value="${row.prof_people}"></td>
             </tr>
             <tr>
              <th>유급근로자수</th>
              <td><input type="text" name="salary_people__${var.index}" value="${row.salary_people}"></td>
              <th>취약계층근로자수</th>
              <td><input type="text" name="vul_people__${var.index}" value="${row.vul_people}"></td>
              <th></th>
              <td></td>
             </tr>
             <tr><td colspan="4"><a href="#this" class="btn" id="updatePeople" >인원정보수정</a></td></tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">인원정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
</table>
</div>
</div>

<h1>취약계층정보</h1>
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(vul_info) > 0}">
			<c:forEach var="vul" items="${vul_info}">
              <tr>
                  <th>저속득</th>
                  <td><input type="text" name="jsd" value="${vul.jsd }">명</td>
                  <th>고령자</th>
                  <td><input type="text" name="krj" value="${vul.krj }">명</td>
                  <th>장애인</th>
                  <td><input type="text" name="jai" value="${vul.jai }">명</td>
                  <th>성매매피해자</th>
                  <td><input type="text" name="spj" value="${vul.spj }">명</td>
                 <tr>
                  <th>청년,경력단절</th>
                  <td><input type="text" name="ckd" value="${vul.ckd }">명</td>
                  <th>북한이탈주민</th>
                  <td><input type="text" name="bej" value="${vul.bej }">명</td>
                  <th>가정폭력피해자</th>
                  <td><input type="text" name="kpp" value="${vul.kpp }">명</td>
                  <th>한부모가족지원법</th>
                  <td><input type="text" name="hwb" value="${vul.hwb }">명</td>
                 </tr>
                 <tr>
                  <th>결혼이민자</th>
                  <td><input type="text" name="kej" value="${vul.kej }">명</td>
                  <th>갱생보호대상자</th>
                  <td><input type="text" name="kbd" value="${vul.kbd }">명</td>
                  <th>장기실직자</th>
                  <td><input type="text" name="jsj" value="${vul.jsj }">명</td>
                  <th>범죄구조피해자</th>
                  <td><input type="text" name="bkp" value="${vul.bkp }">명</td>
                 </tr>
                 <tr>
                  <th>출소6개월미만</th>
                  <td><input type="text" name="cka" value="${vul.cka }">명</td>
                  <th>소년원퇴원6개월</th>
                  <td><input type="text" name="ska" value="${vul.ska }">명</td>
                  <th>노숙자</th>
                  <td><input type="text" name="nsj" value="${vul.nsj }">명</td>
                  <th>약.알.도박중독자</th>
                  <td><input type="text" name="yad" value="${vul.yad }">명</td>
                 </tr>
                 <tr>
                  <th>여성가장</th>
                  <td><input type="text" name="ykj" value="${vul.ykj }">명</td>
                  <th>조손가정</th>
                  <td><input type="text" name="jsk" value="${vul.jsk }">명</td>
                  <th>외국인근로자</th>
                  <td><input type="text" name="oik" value="${vul.oik }">명</td>
                  <th>저신용자</th>
                  <td><input type="text" name="jsy" value="${vul.jsy }">명</td>
                 </tr>
                 <tr>
                  <th>학교폭력피해자</th>
                  <td><input type="text" name="hpp" value="${vul.hpp }">명</td>
                  <th>학교밖청소년</th>
                  <td><input type="text" name="hbc" value="${vul.hbc }">명</td>
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
				
				   e.preventDefault();
				   fn_insertCertified_Company();
				
			});
			$("#updateMony").on("click", function(e){ //저장하기 버튼
				e.preventDefault();
				fn_updateMony();
			});
			$("#updatePeople").on("click", function(e){ //저장하기 버튼
				e.preventDefault();
				fn_updatePeople();
			});
			$("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
			$("#addpeople").on("click", function(e){ //인원정보 연도 추가 버튼
                e.preventDefault();
                fn_addPeople();
            });
			$("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
             
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		function fn_updateMony(){			
			var comSubmit = new ComSubmit("mony_frm");
			alert($("#mony_idx").val());
			comSubmit.setUrl("<c:url value='/certi/updateMony.do' />");
			comSubmit.addParam("mony_idx", $("#mony_idx").val());
			comSubmit.submit();
		}
		function fn_updatePeople(){
			var comSubmit = new ComSubmit("people_frm");
			comSubmit.setUrl("<c:url value='/certi/updatePeople.do' />");
			comSubmit.submit();
		}
		
		function fn_openCertiList(){
	            var comSubmit = new ComSubmit();
	            comSubmit.setUrl("<c:url value='/certi/openCertifiedList.do' />");
	            comSubmit.submit();
	    }
		function fn_insertCertified_Company(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/certi/insertCertified_Company.do' />");
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
		function fn_addFile(){
            var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
            $("#fileDiv").append(str);
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
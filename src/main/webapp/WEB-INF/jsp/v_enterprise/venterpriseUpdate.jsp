<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<script type='text/javascript'>
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
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
	<input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
		<h1>기업정보</h1>
		<table class="board_view" width="100%" border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>
            </colgroup>      
            <tbody>
                <tr>
                    <th scope="row">지역</th>
                    <td>
                     <select id="area" name="area">
	                 <option value="CA01" <c:if test="${map.area eq 'CA01'}">selected</c:if>>강릉</option>
                     <option value="CA02" <c:if test="${map.area eq 'CA02'}">selected</c:if>>태백</option>
                     <option value="CA03" <c:if test="${map.area eq 'CA03'}">selected</c:if>>춘천</option>
                     <option value="CA04" <c:if test="${map.area eq 'CA04'}">selected</c:if>>화천</option>
                     <option value="CA05" <c:if test="${map.area eq 'CA05'}">selected</c:if>>평창</option>
                     <option value="CA06" <c:if test="${map.area eq 'CA06'}">selected</c:if>>횡성</option>
                     <option value="CA07" <c:if test="${map.area eq 'CA07'}">selected</c:if>>원주</option>
                     <option value="CA08" <c:if test="${map.area eq 'CA08'}">selected</c:if>>영월</option>
                     <option value="CA09" <c:if test="${map.area eq 'CA09'}">selected</c:if>>삼척</option>
                     <option value="CA10" <c:if test="${map.area eq 'CA10'}">selected</c:if>>정선</option>
                     <option value="CA11" <c:if test="${map.area eq 'CA11'}">selected</c:if>>철원</option> 
                     <option value="CA12" <c:if test="${map.area eq 'CA12'}">selected</c:if>>양구</option> 
                     <option value="CA13" <c:if test="${map.area eq 'CA13'}">selected</c:if>>인제</option>
                     <option value="CA14" <c:if test="${map.area eq 'CA14'}">selected</c:if>>고성</option>
                     <option value="CA15" <c:if test="${map.area eq 'CA15'}">selected</c:if>>양양</option>
                     <option value="CA16" <c:if test="${map.area eq 'CA16'}">selected</c:if>>동해</option>
                     <option value="CA17" <c:if test="${map.area eq 'CA17'}">selected</c:if>>홍천</option>		   
                     <option value="CA18" <c:if test="${map.area eq 'CA18'}">selected</c:if>>속초</option>
	                </select>
                    </td>
                    <th>신규지정연도</th>
                    <td>
                    <select name="n_year">
                      <option value="">선택</option>
	                	<option value="2010" <c:if test="${map.n_year eq '2010'}">selected</c:if>>2010</option>
	                	<option value="2011" <c:if test="${map.n_year eq '2011'}">selected</c:if>>2011</option>
	                	<option value="2012" <c:if test="${map.n_year eq '2012'}">selected</c:if>>2012</option>
	                	<option value="2013" <c:if test="${map.n_year eq '2013'}">selected</c:if>>2013</option>
	                	<option value="2014" <c:if test="${map.n_year eq '2014'}">selected</c:if>>2014</option>
	                	<option value="2015" <c:if test="${map.n_year eq '2015'}">selected</c:if>>2015</option>
	                	<option value="2016" <c:if test="${map.n_year eq '2016'}">selected</c:if>>2016</option>
	                	<option value="2017" <c:if test="${map.n_year eq '2017'}">selected</c:if>>2017</option>
	                	<option value="2018" <c:if test="${map.n_year eq '2018'}">selected</c:if>>2018</option>
	                	<option value="2019" <c:if test="${map.n_year eq '2019'}">selected</c:if>>2019</option>
	                	<option value="2020" <c:if test="${map.n_year eq '2020'}">selected</c:if>>2020</option> 
	                	<option value="2021" <c:if test="${map.n_year eq '2021'}">selected</c:if>>2021</option> 	                	
                     </select>
                    </td>
                    <th>2차지정연도</th>
                    <td>
                    <select name="t_year">
                      <option value="">선택</option>
	                	<option value="2010" <c:if test="${map.t_year eq '2010'}">selected</c:if>>2010</option>
	                	<option value="2011" <c:if test="${map.t_year eq '2011'}">selected</c:if>>2011</option>
	                	<option value="2012" <c:if test="${map.t_year eq '2012'}">selected</c:if>>2012</option>
	                	<option value="2013" <c:if test="${map.t_year eq '2013'}">selected</c:if>>2013</option>
	                	<option value="2014" <c:if test="${map.t_year eq '2014'}">selected</c:if>>2014</option>
	                	<option value="2015" <c:if test="${map.t_year eq '2015'}">selected</c:if>>2015</option>
	                	<option value="2016" <c:if test="${map.t_year eq '2016'}">selected</c:if>>2016</option>
	                	<option value="2017" <c:if test="${map.t_year eq '2017'}">selected</c:if>>2017</option>
	                	<option value="2018" <c:if test="${map.t_year eq '2018'}">selected</c:if>>2018</option>
	                	<option value="2019" <c:if test="${map.t_year eq '2019'}">selected</c:if>>2019</option>
	                	<option value="2020" <c:if test="${map.t_year eq '2020'}">selected</c:if>>2020</option> 
	                	<option value="2021" <c:if test="${map.t_year eq '2021'}">selected</c:if>>2021</option> 	                	
                     </select>
                    </td>
                </tr>
                <tr>
                    <th>기업명</th>
                    <td><input type="text" id="company_name" name="company_name" value="${map.company_name}"></td>
                    <th>주요사업내용</th>
                    <td><input type="text" id="biz_detail" name="biz_detail" value="${map.biz_detail}" size="70"></td>
                    <th>사업자번호</th>
                    <td><input type="text" id="sa_number" name="sa_number" value="${map.sa_number}"></td>
                </tr>
                <tr>
                    <th>설립일</th>
                    <td>
                    <div class="input-group date" style="width:200px">
                    <input type="text" id="su_date" name="su_date" class="form-control" value="${map.su_date}">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    </td>
                    <th scope="row">우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
                    <td><input type="text" id="zipNo" name="company_zip" value="${map.company_zip}"></td>
                    <th scope="row">주소</th>
                    <td><input type="text" id="roadFullAddr" name="company_address" value="${map.company_address}" size="70"></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value="${map.ceo_name}"></td>
                    <th>휴대전화번호</th>
                    <td><input type="text" id="p_number" name="p_number" value="${map.p_number}"></td>
                    <th>일반전화번호</th>
                    <td><input type="text" id="c_number" name="c_number" value="${map.c_number}"></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value="${map.e_mail}"></td>
                    <th>홈페이지</th>
                    <td><input type="text" id="homepage" name="homepage" value="${map.homepage}" size="50"></td>
                    <th></th>
                    <td></td>
                </tr>               
        </table>
		<h1>재무정보</h1>
<c:choose>
	<c:when test="${fn:length(list) > 0}">
	<c:forEach var="row" items="${list }" varStatus="var">
    <input type="hidden" id="IDX" name="IDX_${var.index }" value="${row.IDX }">
    <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
     <tr>
     <th>연도</th>
     <td>
     <select name="year_${var.index }">
      <option value="">선택</option>     
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
     <th>자본금</th>
     <td><input type="text" id="" name="ja_mony_${var.index }" value="${row.ja_mony }"></td>
     <th>매출액</th>
     <td><input type="text" id="" name="me_mony_${var.index }" value="${row.me_mony }"></td>
    </tr>
    <tr>
     <th>지원항목</th>
     <td><input type="text" id="" name="ji_list_${var.index }" value="${row.ji_list }"></td>
     <th>지원금액</th>
     <td><input type="text" id="" name="ji_mony_${var.index }" value="${row.ji_mony }"></td>
     <th></th>
     <td></td>
    </tr>               
   </table>   	
</c:forEach>
    </c:when>
	</c:choose>
	<div id="Yeardiv" style="padding-top:10px;">
 <div id="money_info">		
 </div>
</div>
	</form>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>	
	
	<%@ include file="/WEB-INF/include/include-body.jsp" %>
	<script type="text/javascript">
	var gfv_count = 1;
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openCooperList();
			});
			
			$("#update").on("click", function(e){ //저장하기 버튼
					e.preventDefault();
					fn_updateCooper();
			});
			
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_deleteCooper();
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
		
		function fn_openCooperList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/v_enterprise/openVenterpriseList.do' />");
			comSubmit.submit();
		}
		
		function fn_updateCooper(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/v_enterprise/updateVenterprise.do' />");
			comSubmit.submit();
		}
		
		function fn_deleteCooper(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/cooper/deleteCooper.do' />");
			comSubmit.addParam("IDX", $("#IDX").val());
			comSubmit.submit();
			
		}
		function fn_addFile(){
            var str = "<p>" +
                    "<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
                    "<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
                "</p>";
            $("#fileDiv").append(str);
            $("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
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
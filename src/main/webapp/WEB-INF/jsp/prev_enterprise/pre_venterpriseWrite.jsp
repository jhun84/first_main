<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
<link href="/first/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="/first/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/first/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
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
<h1>업체정보</h1>
    <form id="frm" name="frm" enctype="multipart/form-data">   
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
                     <select name="area">
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
                    <th>신규지정연도</th>
                    <td>
                    <select name="n_year">
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
                     </select>
                    </td>
                    <th>2차지정연도</th>
                    <td>
                    <select name="t_year">
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
                     </select>
                    </td>
                </tr>
                <tr>
                    <th>기업명</th>
                    <td><input type="text" id="company_name" name="company_name" value=""></td>
                    <th>주요사업내용</th>
                    <td><input type="text" id="biz_detail" name="biz_detail" value="" size="70"></td>
                    <th>사업자번호</th>
                    <td><input type="text" id="sa_number" name="sa_number" value=""></td>
                </tr>
                <tr>
                    <th>설립일</th>
                    <td>
                    <div class="input-group date" style="width:200px">
                    <input type="text" id="su_date" name="su_date" class="form-control">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    </td>
                    <th scope="row">우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
                    <td><input type="text" id="zipNo" name="company_zip" value=""></td>
                    <th scope="row">주소</th>
                    <td><input type="text" id="roadFullAddr" name="company_address" value="" size="70"></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value=""></td>
                    <th>휴대전화번호</th>
                    <td><input type="text" id="p_number" name="p_number" value=""></td>
                    <th>일반전화번호</th>
                    <td><input type="text" id="c_number" name="c_number" value=""></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value=""></td>
                    <th>홈페이지</th>
                    <td><input type="text" id="homepage" name="homepage" value="" size="50"></td>
                    <th>비고</th>
                    <td><input type="text" id="bigo" name="bigo" value=""></td>
                </tr>
                </tbody>
             </table> 
<h1>재무정보</h1>
<div id="Yeardiv" style="padding-top:10px;">
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
     <th>자본금</th>
     <td><input type="text" id="" name="ja_mony_0"></td>
     <th>매출액</th>
     <td><input type="text" id="" name="me_mony_0"></td>
    </tr>
    <tr>
     <th>지원항목</th>
     <td><input type="text" id="" name="ji_list_0"></td>
     <th>지원금액</th>
     <td><input type="text" id="" name="ji_mony_0"></td>
     <th></th>
     <td></td>
    </tr>    
   </table>
   <a href="#this" class="btn" id="delete" name="delete">삭제</a>
 </div>
</div>
       <br><br>
       <a href="#this" class="btn" id="addyear" >재무정보연도추가하기</a>       
        <a href="#this" class="btn" id="write" >작성하기</a>
        <a href="#this" class="btn" id="list" >목록으로</a>
     </form>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        var gfv_count = 1;
        var year_count = 1;
        
        var ja_mony_count = 1;
        var me_mony_count = 1;
        var ji_list_count = 1;
        var ji_mony_count = 1;
        
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openPreVenterpriseList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				if($('#company_name').val() == ""){
					   alert("업체명을 입력해주세요.");
					   return false;
				   }else{
					   e.preventDefault();
					   fn_insertPreVenterprise();				   
				   }				   			
			});
			$("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
			$("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
             
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		
		function fn_openPreVenterpriseList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/prev_enterprise/openPreVenterpriseList.do' />");
			comSubmit.submit();
		}
		
		function fn_insertPreVenterprise(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/prev_enterprise/insertPreVenterprise.do' />");
			comSubmit.submit();
		}
		function fn_addFile(){
            var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
            $("#fileDiv").append(str);
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
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
            str += "<th>자본금</th>";
            str += "<td><input type='text' name='ja_mony_"+(ja_mony_count++)+"'></td>";
            str += "<th>매출액</th>";
            str += "<td><input type='text' name='me_mony_"+(me_mony_count++)+"'></td>";
            str += "</tr><tr>";
            str += "<th>지원항목</th>";
            str += "<td><input type='text' name='ji_list_"+(ji_list_count++)+"'></td>";
            str += "<th>지원금액</th>";
            str += "<td><input type='text' name='ji_mony_"+(ji_mony_count++)+"'></td>";
            str += "<th></th><td></td>";
            str += "</tr></table><a href='#this' class='btn' name='delete'>삭제</a>";
            str += "</div>";
            
            $("#Yeardiv").append(str);
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
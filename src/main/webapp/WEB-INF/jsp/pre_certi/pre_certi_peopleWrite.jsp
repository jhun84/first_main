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
<style>
 table.type05 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin: 20px 10px;
}
table.type05 th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
}
table.type05 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
<form id="frm" name="frm" enctype="multipart/form-data">
<table width="100%" class="type05" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="6">3. 인원정보</th>
  </tr>
  <tr>
    <th scope="row">연도</th>
    <td>
    <select>
     <option name="" value="">선택</option>
     <option name="" value="2014">2014</option>
     <option name="" value="2015">2015</option>
     <option name="" value="2016">2016</option>
     <option name="" value="2017">2017</option>
     <option name="" value="2018">2018</option>
     <option name="" value="2019">2019</option>
     <option name="" value="2020">2020</option>
     <option name="" value="2021">2021</option>
    </select>
    </td>
    <th scope="row">사회적일자리배정인원</th>
    <td><input type="text" id="" name="" value=""></td>
    <th scope="row">전문인력배정인원</th>
    <td><input type="text" id="" name="" value=""></td>
  </tr>
  <tr>
    <th scope="row">유급근로자수</th>
    <td><input type="text" name="" ></td>
    <th scope="row">취약계층 근로자수</th>
    <td><input type="text" name="" ></td>
    <th scope="row"></td>
    <td></td>
  </tr>
</table>
<table width="100%" class="type05" cellpadding="0" cellspacing="0">
<tr>
    <th colspan="6">세부인원정보</th>
  </tr>
  <tr>
    <th scope="row">저소득</th>
    <td><input type="text" name="" ></td>
    <th scope="row">고령자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">장애인</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">성매매피해자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">청년,경력단절</th>
    <td><input type="text" name="" ></td>
    <th scope="row">북한이탈주민</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">가정폭력피해자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">한부모가족지원법</th>
    <td><input type="text" name="" ></td>
    <th scope="row">결혼이민자</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">갱생보호대상자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">장기실직자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">범죄구조피해자</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">출소6개월미만</th>
    <td><input type="text" name="" ></td>
    <th scope="row">소년원퇴원6개월미만</th>
    <td><input type="text" name="" ></td>
    <th scope="row">노숙자</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">약.알.도박중독자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">여성가장</th>
    <td><input type="text" name="" ></td>
    <th scope="row">조손가정</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">외국인근로자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">저신용자</th>
    <td><input type="text" name="" ></td>
    <th scope="row">학교폭력피해자</th>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <th scope="row">학교밖청소년</th>
    <td><input type="text" name="" ></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
</form>
</body>
</html>
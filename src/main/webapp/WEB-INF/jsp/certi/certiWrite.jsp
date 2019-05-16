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
</head>
<body>
<form id="frm" name="frm" enctype="multipart/form-data">
<table width="100%" cellpadding="3" cellspacing="3">
  <tr>
    <th colspan="6">1. 기업정보</th>
  </tr>
  <tr>
    <td>기관명</td>
    <td><input type="text" name="" ></td>
    <td>우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></td>
    <td><input type="text" id="zipNo" name="zipNo" value=""></td>
    <td>주소</td>
    <td><input type="text" id="roadFullAddr" name="roadFullAddr" value="" size="70"></td>
  </tr>
  <tr>
    <td>광역자치단체</td>
    <td><input type="text" name="" ></td>
    <td>지역</td>
    <td><input type="text" name="" ></td>
    <td>관할관서</td>
    <td>
     <select>
      <option name="" value="">선택</option>
      <option name="" value="">강릉</option>
      <option name="" value="">춘천</option>
      <option name="" value="">원주</option>
      <option name="" value="">양구</option>
     </select>
    </td>
  </tr>
  <tr>
    <td>인증지정번호</td>
    <td><input type="text" name="" ></td>
    <td>사회적목적실현유형</td>
    <td><input type="text" name="" ></td>
    <td>지정일</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>인증유지현황</td>
    <td><input type="text" name="" ></td>
    <td>예비SE지역형</td>
    <td><input type="text" name="" ></td>
    <td>예비SE부처형</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>업체형태</td>
    <td><input type="text" name="" ></td>
    <td>조직형태</td>
    <td><input type="text" name="" ></td>
    <td>설립일</td>
    <td>
      <div class="input-group date" style="width:200px">
      <input type="text" id="su_date" name="su_date" class="form-control">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      </div>
    </td>
  </tr>
  <tr>
    <td>사업장관리번호</td>
    <td><input type="text" name="" ></td>
    <td>사업자번호 본점</td>
    <td><input type="text" name="" ></td>
    <td>사업자번호 지점</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>고유번호</td>
    <td><input type="text" name="" ></td>
    <td>법인등록번호</td>
    <td><input type="text" name="" ></td>
    <td>사업단관련</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>모법인등록번호</td>
    <td><input type="text" name="" ></td>
    <td>주요사업내용</td>
    <td><input type="text" name="" ></td>
    <td>재화 및 서비스품목</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>대분류</td>
    <td><input type="text" name="" ></td>
    <td>중분류</td>
    <td><input type="text" name="" ></td>
    <td>업종분류</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>대표자</td>
    <td><input type="text" name="" ></td>
    <td>대표자 생년월일</td>
    <td><input type="text" name="" ></td>
    <td>휴대전화</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>담당자</td>
    <td><input type="text" name="" ></td>
    <td>직위</td>
    <td><input type="text" name="" ></td>
    <td>전화번호</td>
    <td><input type="text" name="" ></td>
  </tr>
  <tr>
    <td>팩스번호</td>
    <td><input type="text" name="" ></td>
    <td>이메일</td>
    <td><input type="text" name="" ></td>
    <td>홈페이지</td>
    <td><input type="text" name="" ></td>
  </tr>
</table>
</form>
</body>
</html>
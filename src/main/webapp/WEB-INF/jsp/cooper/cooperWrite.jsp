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
    <form id="frm" name="frm" enctype="multipart/form-data">   
        <table class="board_view" width="100%" border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="15%">
                <col width="30%"/>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>cooperative write page</caption>
            <tbody>
                <tr>
                    <th>협동조합명</th>
                    <td><input type="text" id="cooperative_name" name="cooperative_name" value=""></td>
                    <th>주요사업내용</th>
                    <td><input type="text" id="biz_detail" name="biz_detail" value=""></td>
                </tr>
                <tr>
                    <th>설립동의자수</th>
                    <td><input type="text" id="s_agree" name="s_agree" value=""></td>
                    <th>출자금(천원)</th>
                    <td><input type="text" id="ch_money" name="ch_money" value=""></td>
                </tr>
                <tr>
                    <th>수리(인가)일</th>
                    <td>
                    <div class="input-group date" style="width:200px">
                    <input type="text" id="su_date" name="su_date" class="form-control">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    </td>
                    <th>지역</th>
                    <td>
                    <select id="area" name="area">
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
                </tr>
                <tr>
                    <th>업종</th>
                    <td>
                    <select id="upjong" name="upjong">
		              <option value="">선택</option>
		              <option value="UP01">농업,어업 및 임업</option>
                      <option value="UP02">광업</option>
                      <option value="UP03">제조업</option>
                      <option value="UP04">전기,가스,증기 및 수도사업</option>
                      <option value="UP05">하수,폐기물 처리,원료재생 및 환경 복원업</option>
                      <option value="UP06">건설업</option>
                      <option value="UP07">도매 및 소매업</option>
                      <option value="UP08">운수업</option>
                      <option value="UP09">숙박 및 음식점업</option>
                      <option value="UP10">출판,영상,방송통신 및 정보서비스업</option>
                      <option value="UP11">금융 및 보험업</option>
                      <option value="UP12">부동산업 및 임대업</option>
                      <option value="UP13">전문,과학 및 기술 서비스업</option>
                      <option value="UP14">사업시설관리 및 사업지원 서비스업</option>
                      <option value="UP15">공공행정,국방 및 사회보장 행정</option>
                      <option value="UP16">교육 서비스업</option>
                      <option value="UP17">보건업 및 사회복지서비스업</option>
                      <option value="UP18">예술,스포츠 및 여가관련 서비스업</option>
                      <option value="UP19">협회 및 단체,수리 및 기타 개인 서비스업</option>
                      <option value="UP20">가구내 고용활동 및 달리 분류되지 않은 자가소비 생산활동</option>
                      <option value="UP21">국제 및 외국기관</option>
		            </select>
                    </td>
                    <th>주사업유형</th>
                    <td>
                    <select id="c_type" name="c_type">
				      <option value="">선택</option>
				      <option value="HP01">생산자</option>				
				      <option value="HP02">소비자</option>				
				      <option value="HP03">직원</option>
				      <option value="HP04">다중이해관계자</option>
				      <option value="HP05">사업자</option>
		            </select>
                    </td>
                </tr>
                <tr>
                    <th>우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
                    <td><input type="text" id="zipNo" name="zipNo" value=""></td>
                    <th>주소</th>
                    <td><input type="text" id="roadFullAddr" name="roadFullAddr" value="" size="70"></td>             
                </tr>
                <tr>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value=""></td>
                    <th>휴대전화번호</th>
                    <td><input type="text" id="p_number" name="p_number" value=""></td>
                </tr>
                <tr>
                    <th>일반전화번호</th>
                    <td><input type="text" id="c_number" name="c_number" value=""></td>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value=""></td>
                </tr>
                <tr>
                    <th>홈페이지</th>
                    <td><input type="text" id="homepage" name="homepage" value="" size="50"></td>
                    <th></th>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="contents" name="contents"></textarea>
                    </td>
                </tr>
                
            </tbody>
        </table>
        <script type="text/javascript">

	       // Replace the <textarea id="editor1"> with a CKEditor
           
	       // instance, using default configuration.
           
	       CKEDITOR.replace( 'contents', {
           
	       filebrowserUploadUrl: '${pageContext.request.contextPath}/product/ckeditorImageUpload.do'	
           
	       });

        </script>
        
        <br/><br/>
        
        <a href="#this" class="btn" id="write" >작성하기</a>
        <a href="#this" class="btn" id="list" >목록으로</a>
     </form>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        var gfv_count = 1;
        
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openCooperList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				if($('#cooperative_name').val() == ""){
					   alert("업체명을 입력해주세요.");
					   return false;
				   }else{
					   e.preventDefault();
					   fn_insertCooper();					   
				   }				   			
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
			comSubmit.setUrl("<c:url value='/cooper/openCooperList.do' />");
			comSubmit.submit();
		}
		
		function fn_insertCooper(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/cooper/insertCooper.do' />");
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
         
        function fn_deleteFile(obj){
            obj.parent().remove();
        }
	</script>
</body>
</html>
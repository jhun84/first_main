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
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="20%"/>
            </colgroup>
            <caption>social_cooperative write page</caption>
            <tbody>
                <tr>
                    <th>구분</th>
                    <td>
                    <select id="club_type" name="club_type">
                     <option value="">선택</option>
	                 <option value="학습">학습</option>
                     <option value="창업">창업</option>
	                </select>
                    </td>
                    <th>지역</th>
                    <td>
                    <select id="area" name="area">
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
                    <th>동아리명</th>
                    <td><input type="text" id="club_name" name="club_name" value=""></td>
                </tr>
                <tr>
                    <th>아이템</th>
                    <td colspan="5"><input type="text" id="club_item" name="club_item" value=""></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td><input type="text" id="re_name" name="re_name" value=""></td>
                    <th>휴대전화</th>
                    <td><input type="text" id="hp_number" name="hp_number" value=""></td>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value=""></td>
                </tr>
                <tr>
                    <th>홈페이지</th>
                    <td colspan="5"><input type="text" id="homepage" name="homepage" value="${map.homepage}"></td>
                </tr>
                <tr>
                    <td colspan="6" class="view_text">
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
				fn_open_startup_clubList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				
				   e.preventDefault();
				   fn_insert_StartupClub();
				
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
		
		function fn_open_startup_clubList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/open_StartupClubList.do' />");
			comSubmit.submit();
		}
		
		function fn_insert_StartupClub(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/sample/insertStartupClub.do' />");
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
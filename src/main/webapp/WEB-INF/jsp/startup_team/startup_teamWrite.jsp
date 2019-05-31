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
                    <th>참여연도</th>
                    <td>
                    <select id="c_year" name="c_year">
                     <option value="">선택</option>
	                 <option value="2014">2014</option>
                     <option value="2015">2015</option>
                     <option value="2016">2016</option>
                     <option value="2017">2017</option>
                     <option value="2018">2018</option>
                     <option value="2019">2019</option>
                     <option value="2020">2020</option>
	                </select>
                    </td>
                    <th>참여당시팀명</th>
                    <td><input type="text" id="team_name" name="team_name" value=""></td>
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
                </tr>
                <tr>
                    <th>사업지속여부</th>
                    <td>
                    <select id="jisok_sts" name="jisok_sts">
                     <option value="">선택</option>
	                 <option value="O">O</option>
                     <option value="X">X</option>
	                </select>
                    </td>
                    <th>현재회사명</th>
                    <td><input type="text" id="company_name" name="company_name" value=""></td>
                    <th>회사형태</th>
                    <td><input type="text" id="company_type" name="company_type" value=""></td>
                </tr>
                <tr>
                    <th>사업자등록번호</th>
                    <td><input type="text" id="company_sa_number" name="company_sa_number" value=""></td>
                    <th>사업아이템</th>
                    <td><input type="text" id="company_item" name="company_item" value=""></td>
                    <th>지정(인정)여부</th>
                    <td><input type="text" id="jijung_sts" name="jijung_sts" value=""></td>
                </tr>
                <tr>
                    <th>지정지자체</th>
                    <td><input type="text" id="jijung_jijache" name="jijung_jijache" value=""></td>
                    <th>지정일</th>
                    <td>
                    <div class="input-group date" style="width:150px">
                    <input type="text" id="jijung_ym" name="jijung_ym" class="form-control">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    </td>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value=""></td>
                </tr>
                <tr>
                    <th>휴대전화</th>
                    <td><input type="text" id="hp_number" name="hp_number" value=""></td>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value=""></td>
                    <th></th>
                    <td></td>
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
           
	       filebrowserUploadUrl: '${pageContext.request.contextPath}/startup_team/ckeditorImageUpload.do'	
           
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
				fn_open_startup_teamList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				if($('#team_name').val() == ""){
				    alert('업체명을 입력해주세요.');
				    return false;
				}else{
					e.preventDefault();
					fn_insert_StartupTeam();
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
		
		function fn_open_startup_teamList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/team/open_StartupTeamList.do' />");
			comSubmit.submit();
		}
		
		function fn_insert_StartupTeam(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/team/insertStartupTeam.do' />");
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
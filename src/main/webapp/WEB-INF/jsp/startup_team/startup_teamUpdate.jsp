<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
	<input type="hidden" id="SEQ_NO" name="SEQ_NO" value="${map.SEQ_NO }">
		<table class="board_view" width="100%" border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="20%"/>
                <col width="10%"/>
                <col width="20%"/>
            </colgroup>
            <caption>statup_team write page</caption>
            <tbody>
                <tr>
                    <th>참여연도</th>
                    <td><input type="text" id="c_year" name="c_year" value="${map.c_year}"></td>
                    <th>참여당시팀명</th>
                    <td><input type="text" id="team_name" name="team_name" value="${map.team_name}"></td>
                    <th>지역</th>
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
                </tr>
                <tr>
                    <th>사업지속여부</th>
                    <td><input type="text" id="jisok_sts" name="jisok_sts" value="${map.jisok_sts}"></td>
                    <th>현재회사명</th>
                    <td><input type="text" id="company_name" name="company_name" value="${map.company_name}"></td>
                    <th>회사형태</th>
                    <td><input type="text" id="company_type" name="company_type" value="${map.company_type}"></td>
                </tr>
                <tr>
                    <th>사업자등록번호</th>
                    <td><input type="text" id="company_sa_number" name="company_sa_number" value="${map.company_sa_number}"></td>
                    <th>사업아이템</th>
                    <td><input type="text" id="company_item" name="company_item" value="${map.company_item}"></td>
                    <th>지정(인정)여부</th>
                    <td><input type="text" id="jijung_sts" name="jijung_sts" value="${map.jijung_sts}"></td>
                </tr>
                <tr>
                    <th>지정지자체</th>
                    <td><input type="text" id="jijung_jijache" name="jijung_jijache" value="${map.jijung_jijache}"></td>
                    <th>지정일</th>
                    <td>
                    <div class="input-group date" style="width:150px">
                    <input type="text" id="jijung_ym" name="jijung_ym" class="form-control" value="${map.jijung_ym}">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    </td>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value="${map.ceo_name}"></td>
                </tr>
                <tr>
                    <th>휴대전화</th>
                    <td><input type="text" id="hp_number" name="hp_number" value="${map.hp_number}"></td>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value="${map.e_mail}"></td>
                    <th></th>
                    <td></td>
                </tr>
                
                <tr>
                    <td colspan="6" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="contents" name="contents">${map.CONTENTS }</textarea>
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
	</form>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	
	<%@ include file="/WEB-INF/include/include-body.jsp" %>
	<script type="text/javascript">
	var gfv_count = 1;
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_open_startup_teamList();
			});
			
			$("#update").on("click", function(e){ //저장하기 버튼
					e.preventDefault();
					fn_update_StartupTeam();
			});
			
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_delete_StartupTeam();
			});
			$("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
             
            $("a[name^='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		
		function fn_open_startup_teamList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/open_StartupTeamList.do' />");
			comSubmit.submit();
		}
		
		function fn_update_StartupTeam(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/sample/updateStartupTeam.do' />");
			comSubmit.submit();
		}
		
		function fn_delete_StartupTeam(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/sample/deleteStartupTeam.do' />");
			comSubmit.addParam("SEQ_NO", $("#SEQ_NO").val());
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
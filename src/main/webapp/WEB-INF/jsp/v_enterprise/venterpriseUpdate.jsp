<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
	<input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
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
                    <td><input type="text" id="cooperative_name" name="cooperative_name" value="${map.cooperative_name}"></td>
                    <th>주요사업내용</th>
                    <td><input type="text" id="biz_detail" name="biz_detail" value="${map.biz_detail}"></td>
                </tr>
                <tr>
                    <th>설립동의자수</th>
                    <td><input type="text" id="s_agree" name="s_agree" value="${map.s_agree}"></td>
                    <th>출자금(천원)</th>
                    <td><input type="text" id="ch_money" name="ch_money" value="${map.ch_money}"></td>
                </tr>
                <tr>
                    <th>수리(인가)일</th>
                    <td><input type="text" id="su_date" name="su_date" value="${map.su_date}"></td>
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
                    <th>업종</th>
                    <td>
                    <select id="upjong" name="upjong">
	                 <option value="UP01" <c:if test="${map.upjong eq 'UP01'}">selected</c:if>>농업,어업 및 임업</option>                                
                     <option value="UP02" <c:if test="${map.upjong eq 'UP02'}">selected</c:if>>광업</option>                                        
                     <option value="UP03" <c:if test="${map.upjong eq 'UP03'}">selected</c:if>>제조업</option>                                       
                     <option value="UP04" <c:if test="${map.upjong eq 'UP04'}">selected</c:if>>전기,가스,증기 및 수도사업</option>                           
                     <option value="UP05" <c:if test="${map.upjong eq 'UP05'}">selected</c:if>>하수,폐기물 처리,원료재생 및 환경 복원업</option>                   
                     <option value="UP06" <c:if test="${map.upjong eq 'UP06'}">selected</c:if>>건설업</option>                                       
                     <option value="UP07" <c:if test="${map.upjong eq 'UP07'}">selected</c:if>>도매 및 소매업</option>                                  
                     <option value="UP08" <c:if test="${map.upjong eq 'UP08'}">selected</c:if>>운수업</option>                                       
                     <option value="UP09" <c:if test="${map.upjong eq 'UP09'}">selected</c:if>>숙박 및 음식점업</option>                                 
                     <option value="UP10" <c:if test="${map.upjong eq 'UP10'}">selected</c:if>>출판,영상,방송통신 및 정보서비스업</option>                       
                     <option value="UP11" <c:if test="${map.upjong eq 'UP11'}">selected</c:if>>금융 및 보험업</option>                                   
                     <option value="UP12" <c:if test="${map.upjong eq 'UP12'}">selected</c:if>>부동산업 및 임대업</option>                                 
                     <option value="UP13" <c:if test="${map.upjong eq 'UP13'}">selected</c:if>>전문,과학 및 기술 서비스업</option>                           
                     <option value="UP14" <c:if test="${map.upjong eq 'UP14'}">selected</c:if>>사업시설관리 및 사업지원 서비스업</option>                        
                     <option value="UP15" <c:if test="${map.upjong eq 'UP15'}">selected</c:if>>공공행정,국방 및 사회보장 행정</option>                         
                     <option value="UP16" <c:if test="${map.upjong eq 'UP16'}">selected</c:if>>교육 서비스업</option>                                   
                     <option value="UP17" <c:if test="${map.upjong eq 'UP17'}">selected</c:if>>보건업 및 사회복지서비스업</option>                            		   
                     <option value="UP18" <c:if test="${map.upjong eq 'UP18'}">selected</c:if>>예술,스포츠 및 여가관련 서비스업</option>                        
                     <option value="UP19" <c:if test="${map.upjong eq 'UP19'}">selected</c:if>>협회 및 단체,수리 및 기타 개인 서비스업</option>                   
                     <option value="UP20" <c:if test="${map.upjong eq 'UP20'}">selected</c:if>>가구내 고용활동 및 달리 분류되지 않은 자가소비 생산활동</option>           		   
                     <option value="UP21" <c:if test="${map.upjong eq 'UP21'}">selected</c:if>>국제 및 외국기관</option>                                 
	                </select>
                    </td>
                    <th>주사업유형</th>
                    <td>
                    <select id="c_type" name="c_type">
	                 <option value="HP01" <c:if test="${map.area eq 'HP01'}">selected</c:if>>생산자</option>			
                     <option value="HP02" <c:if test="${map.area eq 'HP02'}">selected</c:if>>소비자</option>			
                     <option value="HP03" <c:if test="${map.area eq 'HP03'}">selected</c:if>>직원</option>       
                     <option value="HP04" <c:if test="${map.area eq 'HP04'}">selected</c:if>>다중이해관계자</option>  
                     <option value="HP05" <c:if test="${map.area eq 'HP05'}">selected</c:if>>사업자</option>      
	                </select>
                    </td>
                </tr>
                <tr>
                    <th>우편번호</th>
                    <td><input type="text" id="zipNo" name="zipNo" value="${map.zip_num}"></td>
                    <th>주소</th>
                    <td><input type="text" id="roadFullAddr" name="roadFullAddr" value="${map.cooperative_addr}" size="70"></td>
                </tr>
                <tr>
                    <th>대표자</th>
                    <td><input type="text" id="ceo_name" name="ceo_name" value="${map.ceo_name}"></td>
                    <th>휴대전화번호</th>
                    <td><input type="text" id="p_number" name="p_number" value="${map.p_number}"></td>
                </tr>
                <tr>
                    <th>일반전화번호</th>
                    <td><input type="text" id="c_number" name="c_number" value="${map.c_number}"></td>
                    <th>이메일</th>
                    <td><input type="text" id="e_mail" name="e_mail" value="${map.e_mail}"></td>
                </tr>
                <tr>
                    <th>홈페이지</th>
                    <td><input type="text" id="homepage" name="homepage" value="${map.homepage}" size="50"></td>
                    <th></th>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
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
             
            $("a[name^='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		
		function fn_openCooperList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/cooper/openCooperList.do' />");
			comSubmit.submit();
		}
		
		function fn_updateCooper(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/cooper/updateCooper.do' />");
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
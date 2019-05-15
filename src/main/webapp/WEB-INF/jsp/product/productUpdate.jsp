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
            <caption>product write page</caption>
            <tbody>
                <tr>
                    <th>상품명</th>
                    <td><input type="text" id="PRODUCT_NAME" name="PRODUCT_NAME" value="${map.PRODUCT_NAME}"></td>
                    <th>판매가</th>
                    <td><input type="text" id="PAY" name="PAY" value="${map.PAY}"></td>
                </tr>
                <tr>
                    <th>배송비</th>
                    <td><input type="text" id="DELE_MNY" name="DELE_MNY" value="${map.DELE_MNY}"></td>
                    <th>무료배송</th>
                    <td><input type="text" id="FREE_DELE" name="FREE_DELE" value="${map.FREE_DELE}"></td>
                </tr>
                <tr>
                    <th>제조원</th>
                    <td><input type="text" id="MAKE_COMPANY" name="MAKE_COMPANY" value="${map.MAKE_COMPANY}"></td>
                    <th>판매원</th>
                    <td><input type="text" id="CELLER" name="CELLER" value="${map.CELLER}"></td>
                </tr>
                <tr>
                    <th>입점매장</th>
                    <td><input type="text" id="SHOP_INFO" name="SHOP_INFO" value="${map.SHOP_INFO}"></td>
                    <th>지역</th>
                    <td>
                    <select id="AREA" name="AREA">
	                 <option value="CA01" <c:if test="${map.AREA eq 'CA01'}">selected</c:if>>강릉</option>
                     <option value="CA02" <c:if test="${map.AREA eq 'CA02'}">selected</c:if>>태백</option>
                     <option value="CA03" <c:if test="${map.AREA eq 'CA03'}">selected</c:if>>춘천</option>
                     <option value="CA04" <c:if test="${map.AREA eq 'CA04'}">selected</c:if>>화천</option>
                     <option value="CA05" <c:if test="${map.AREA eq 'CA05'}">selected</c:if>>평창</option>
                     <option value="CA06" <c:if test="${map.AREA eq 'CA06'}">selected</c:if>>횡성</option>
                     <option value="CA07" <c:if test="${map.AREA eq 'CA07'}">selected</c:if>>원주</option>
                     <option value="CA08" <c:if test="${map.AREA eq 'CA08'}">selected</c:if>>영월</option>
                     <option value="CA09" <c:if test="${map.AREA eq 'CA09'}">selected</c:if>>삼척</option>
                     <option value="CA10" <c:if test="${map.AREA eq 'CA10'}">selected</c:if>>정선</option>
                     <option value="CA11" <c:if test="${map.AREA eq 'CA11'}">selected</c:if>>철원</option> 
                     <option value="CA12" <c:if test="${map.AREA eq 'CA12'}">selected</c:if>>양구</option> 
                     <option value="CA13" <c:if test="${map.AREA eq 'CA13'}">selected</c:if>>인제</option>
                     <option value="CA14" <c:if test="${map.AREA eq 'CA14'}">selected</c:if>>고성</option>
                     <option value="CA15" <c:if test="${map.AREA eq 'CA15'}">selected</c:if>>양양</option>
                     <option value="CA16" <c:if test="${map.AREA eq 'CA16'}">selected</c:if>>동해</option>
                     <option value="CA17" <c:if test="${map.AREA eq 'CA17'}">selected</c:if>>홍천</option>		   
                     <option value="CA18" <c:if test="${map.AREA eq 'CA18'}">selected</c:if>>속초</option>
	                </select>
                    </td>
                </tr>
                <tr>
                    <th>전화</th>
                    <td><input type="text" id="C_NUMBER" name="C_NUMBER" value="${map.C_NUMBER}"></td>
                    <th>홈페이지</th>
                    <td><input type="text" id="HOMEPAGE" name="HOMEPAGE" style="text-align:center; width:200px; value="${map.HOMEPAGE}"></td>
                </tr>
                <tr>
                    <th>인증/지정</th>
                    <td>
                    이전 값 : ${map.CERTI }
                      <br>
                      <br>
                      수정할 값 :<br>
                      <input type="checkbox" id="CERTI" name="CERTI" value="인증사회적기업">인증사회적기업
                      <input type="checkbox" id="CERTI" name="CERTI" value="예비사회적기업">예비사회적기업<br>
                      <input type="checkbox" id="CERTI" name="CERTI" value="자활기업">자활기업
                      <input type="checkbox" id="CERTI" name="CERTI" value="마을기업">마을기업<br>
                      <input type="checkbox" id="CERTI" name="CERTI" value="예비마을기업">예비마을기업
                      <input type="checkbox" id="CERTI" name="CERTI" value="농어촌공동체회사">농어촌공동체회사<br>
                      <input type="checkbox" id="CERTI" name="CERTI" value="사회적협동조합">사회적협동조합
                      <input type="checkbox" id="CERTI" name="CERTI" value="협동조합">협동조합
                      <input type="checkbox" id="CERTI" name="CERTI" value="창업팀(진흥원)">창업팀(진흥원)
                      <input type="checkbox" id="CERTI" name="CERTI" value="해당없음">해당없음
                      <input type="hidden" id="CERTI" name="CERTI" value=" ">
                    </td>
                    <th>비고</th>
                    <td><input type="text" id="BIGO" name="BIGO" style="text-align:center; width:200px; value="${map.BIGO}"></td>
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
				fn_openProductList();
			});
			
			$("#update").on("click", function(e){ //저장하기 버튼
                var isSeasonChk = $("input:checkbox[name='CERTI']").is(":checked");
				
				if(!isSeasonChk){
				    alert("인증/지정 여부를 한개 이상 선택해주세요.");
				    return false;
				}else{
					e.preventDefault();
					fn_updateProduct();
				}
				
			});
			
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_deleteProduct();
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
		
		function fn_openProductList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/product/openProductList.do' />");
			comSubmit.submit();
		}
		
		function fn_updateProduct(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/product/updateProduct.do' />");
			comSubmit.submit();
		}
		
		function fn_deleteProduct(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/product/deleteProduct.do' />");
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
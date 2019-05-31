<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
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
            <tbody>
                <tr>
                    <th>상품명</th>
                    <td><input type="text" id="PRODUCT_NAME" name="PRODUCT_NAME"></td>
                    <th>판매가</th>
                    <td><input type="text" id="PAY" name="PAY"></td>
                </tr>
                <tr>
                    <th>배송비</th>
                    <td><input type="text" id="DELE_MNY" name="DELE_MNY"></td>
                    <th>무료배송</th>
                    <td><input type="text" id="FREE_DELE" name="FREE_DELE"></td>
                </tr>
                <tr>
                    <th>제조원</th>
                    <td><input type="text" id="MAKE_COMPANY" name="MAKE_COMPANY"></td>
                    <th>판매원</th>
                    <td><input type="text" id="CELLER" name="CELLER"></td>
                </tr>
                <tr>
                    <th>입점매장</th>
                    <td><input type="text" id="SHOP_INFO" name="SHOP_INFO"></td>
                    <th>지역</th>
                    <td>
                    <select name="AREA" id="AREA">
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
                    <th>전화</th>
                    <td><input type="text" id="C_NUMBER" name="C_NUMBER"></td>
                    <th>홈페이지</th>
                    <td><input type="text" id="HOMEPAGE" name="HOMEPAGE"></td>
                </tr>
                <tr>
                    <th>인증/지정</th>
                    <td>
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
                    <td><input type="text" id="BIGO" name="BIGO"></td>
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
        <div id="fileDiv">
        <h1>관련정보</h1>
                <p>
                    1.제목:&nbsp;&nbsp;<input type="text" id="subject" name="subject_0">&nbsp;&nbsp;
                    2.파일:&nbsp;&nbsp;<input type="file" id="file" name="file_0">
                    <a href="#this" class="btn" id="delete" name="delete">삭제</a>
                </p>
        </div>
        <br/><br/>
        <a href="#this" class="btn" id="addFile">파일 추가</a> 
        <a href="#this" class="btn" id="write" >작성하기</a>
        <a href="#this" class="btn" id="list" >목록으로</a>
    </form>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        var gfv_count = 1;
        var subject_count = 1;
        
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openProductList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				var isSeasonChk = $("input:checkbox[name='CERTI']").is(":checked");
				
				if(!isSeasonChk || $('#company_name').val() == ""){
				    alert('인증/지정 여부를 한개 이상 선택해주세요.또는 업체명을 입력해주세요.');
				    return false;
				}else{
				   e.preventDefault();
					fn_insertProduct();
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
		
		function fn_openProductList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/product/openProductList.do' />");
			comSubmit.submit();
		}
		
		function fn_insertProduct(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/product/insertProduct.do' />");
			comSubmit.submit();
		}
		function fn_addFile(){
            var str = "";
            str += "<p>";
            str += "1.제목:&nbsp;&nbsp;<input type='text' name='subject_"+(subject_count++)+"'>&nbsp;&nbsp;";
            str += "2.파일::&nbsp;&nbsp;<input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a>";
            str += "</p>";
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
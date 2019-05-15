<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">상품명</th>
                <td>${map.PRODUCT_NAME }</td>
                <th scope="row">판매가</th>
                <td>${map.PAY }</td>
            </tr>
            <tr>
                <th scope="row">배송비</th>
                <td>${map.DELE_MNY }</td>
                <th scope="row">무료배송</th>
                <td>${map.FREE_DELE }</td>
            </tr>
            <tr>
                <th scope="row">제조원</th>
                <td>${map.MAKE_COMPANY }</td>
                <th scope="row">판매원</th>
                <td>${map.CELLER }</td>
            </tr>
            <tr>
                <th scope="row">입점매장</th>
                <td>${map.SHOP_INFO }</td>
                <th scope="row">지역</th>
                <td>
                <c:choose>
                 <c:when test="${map.AREA eq 'CA01'}">
                     강릉
                 </c:when>
	             <c:when test="${map.AREA eq 'CA02'}">
                     태백
                 </c:when>
	             <c:when test="${map.AREA eq 'CA03'}">
                     춘천
                 </c:when>
	             <c:when test="${map.AREA eq 'CA04'}">
                     화천
                 </c:when>
	             <c:when test="${map.AREA eq 'CA05'}">
                     평창
                 </c:when>
	             <c:when test="${map.AREA eq 'CA06'}">
                     횡성
                 </c:when>
	             <c:when test="${map.AREA eq 'CA07'}">
                     원주
                 </c:when>
	             <c:when test="${map.AREA eq 'CA08'}">
                     영월
                 </c:when>
                 <c:when test="${map.AREA eq 'CA09'}">
                     삼척
                 </c:when>
                 <c:when test="${map.AREA eq 'CA10'}">
                     정선
                 </c:when>
                 <c:when test="${map.AREA eq 'CA11'}">
                     철원
                 </c:when>
                 <c:when test="${map.AREA eq 'CA12'}">
                     양구
                 </c:when>
                 <c:when test="${map.AREA eq 'CA13'}">
                     인제
                 </c:when>
                 <c:when test="${map.AREA eq 'CA14'}">
                     고성
                 </c:when>
                 <c:when test="${map.AREA eq 'CA15'}">
                     양양
                 </c:when>
                 <c:when test="${map.AREA eq 'CA16'}">
                     동해
                 </c:when>
                 <c:when test="${map.AREA eq 'CA17'}">
                     홍천
                 </c:when>
                 <c:when test="${map.AREA eq 'CA18'}">
                     속초
                 </c:when>
                 <c:otherwise>
                     분류없음
                 </c:otherwise>
                </c:choose>
                </td>
            </tr>
            <tr>
                <th scope="row">전화</th>
                <td>${map.C_NUMBER }</td>
                <th scope="row">홈페이지</th>
                <td>${map.HOMEPAGE }</td>
            </tr>
            <tr>
                <th scope="row">인증/지정</th>
                <td>
                <c:forEach var="certi" items="${fn:split(map.CERTI,',')}" varStatus="c">
                 ${certi}<br>
                </c:forEach>
                </td>
                <th scope="row">비고</th>
                <td>${map.BIGO }</td>
            </tr>
            <tr>
                <td colspan="4">${map.CONTENTS }</td>
            </tr>
            <c:choose>
			<c:when test="${fn:length(list) > 0}">
            <tr>
                <th scope="row">관련정보</th>
                <td colspan="3">
                    <c:forEach var="row" items="${list }">
                        <input type="hidden" id="IDX" value="${row.IDX }">
                        - 제목: ${row.SUBJECT}
                        - 첨부파일: <a href="#this" name="file">${row.ORIGINAL_FILE_NAME }</a>
                        (${row.FILE_SIZE }kb)
                    </c:forEach>
                </td>
            </tr>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">관련정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openProductList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openProductUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_openProductList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/product/openProductList.do' />");
            comSubmit.submit();
        }
         
        function fn_openProductUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/product/openProductUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        
        function fn_downloadFile(obj){
            var idx = obj.parent().find("#IDX").val();
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/common/downloadFile.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        
    </script>
</body>
</html>
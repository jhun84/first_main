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
                <th scope="row">분류</th>
                <td>
                <c:choose>
                 <c:when test="${map.BUNRYU eq 'BT01'}">
                     여행/체험/숙박
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT02'}">
                     교육/컨설팅
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT03'}">
                     문화/예술
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT04'}">
                     보육/요양/의료
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT05'}">
                     디자인/광고/미디어
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT06'}">
                     환경/시설/에너지
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT07'}">
                     생산/가공/유통/구매
                 </c:when>
	             <c:when test="${map.BUNRYU eq 'BT08'}">
                     기타
                 </c:when>
                 <c:otherwise>
                     분류없음
                 </c:otherwise>
                </c:choose>
                </td>
                <th scope="row">서비스명</th>
                <td>${map.SERVICE_NAME }</td>
            </tr>
            <tr>
                <th scope="row">판매가</th>
                <td>${map.PAY }</td>
                <th scope="row">제조원</th>
                <td>${map.MAKE_COMPANY }</td>
            </tr>
            <tr>
                <th scope="row">판매원</th>
                <td>${map.CELLER }</td>
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
            
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openServiceList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openServiceUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_openServiceList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceList.do' />");
            comSubmit.submit();
        }
         
        function fn_openServiceUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceUpdate.do' />");
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
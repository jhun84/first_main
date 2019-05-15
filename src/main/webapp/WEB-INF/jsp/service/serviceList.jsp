<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/include/include-menu.jsp" %>
<table style="border:1px solid #ccc" class="board_list">
	<colgroup>
		<col width="10%"/>
		<col width="15%"/>
		<col width="*"/>
		<col width="15%"/>
		<col width="20%"/>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">글번호</th>
			<th scope="col">기업유형</th>
			<th scope="col">서비스명</th>
			<th scope="col">제조업체</th>
			<th scope="col">작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr>
						<td>${row.IDX }</td>
						<td>${row.CERTI }</td>
						<td class="title">
						<a href="#this" name="title">${row.SERVICE_NAME }</a>
                        <input type="hidden" id="IDX" value="${row.IDX }">
                        </td>
						<td>${row.MAKE_COMPANY }</td>
						<td>${row.REQ_DATE }</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4">조회된 결과가 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
	</tbody>
</table>
<div align="center" style="padding-top:20px;">
<form id="frm" name="frm" enctype="multipart/form-data">
<span>서비스명:</span>
<input type="text" id="SERVICE_NAME" name="SERVICE_NAME" /> 
<a href="#this" class="btn" id="search" >검색</a>
</form>
</div>

<div align="center" style="padding-top:20px;">
<c:if test="${not empty paginationInfo}">
        <ui:pagination paginationInfo = "${paginationInfo}" type="text" jsFunction="fn_search"/>
    </c:if>
    <input type="hidden" id="currentPageNo" name="currentPageNo"/>
</div>    
<br/>
    <a href="#this" class="btn" id="write">글쓰기</a>
     
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openServiceWrite();
            });
            
            $("#search").on("click", function(e){ //검색하기 버튼
                e.preventDefault();
                fn_openServiceSearch();
            });
             
            $("a[name='title']").on("click", function(e){ //제목
                e.preventDefault();
                fn_openServiceDetail($(this));
            });
        });
         
         
        function fn_openServiceWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceWrite.do' />");
            comSubmit.submit();
        }
        
        function fn_openServiceSearch(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceSearch.do' />");
            comSubmit.addParam("SERVICE_NAME", $('#SERVICE_NAME').val());
            comSubmit.submit();
        }
         
        function fn_openServiceDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceDetail.do' />");
            comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
            comSubmit.submit();
        }
        function fn_search(pageNo){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/service/openServiceList.do' />");
            comSubmit.addParam("currentPageNo", pageNo);
            comSubmit.submit();
        }
       
    </script>
</body>
</html>
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
		<col width="5%"/>
		<col width="5%"/>
		<col width="10%"/>
		<col width="10%"/>
		<col width="10%"/>
		<col width="10%"/>
		<col width="10%"/>
		<col width="*"/>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">글번호</th>
			<th scope="col">조직유형</th>
			<th scope="col">지역</th>
			<th scope="col">동아리명</th>
			<th scope="col">대표자</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr>
						<td>${row.IDX }</td>
						<td>${row.club_type }</td>
						<td>
						<c:choose>
                        <c:when test="${row.area eq 'CA01'}">
                        강릉    
                        </c:when>
                        <c:when test="${row.area eq 'CA02'}">
                        태백 
                        </c:when>
                        <c:when test="${row.area eq 'CA03'}">
                        춘천    
                        </c:when>
                        <c:when test="${row.area eq 'CA04'}">
                        화천    
                        </c:when>
                        <c:when test="${row.area eq 'CA05'}">
                        평창    
                        </c:when>
                        <c:when test="${row.area eq 'CA06'}">
                        횡성    
                        </c:when>
                        <c:when test="${row.area eq 'CA07'}">
                        원주    
                        </c:when>
                        <c:when test="${row.area eq 'CA08'}">
                        영원    
                        </c:when>
                        <c:when test="${row.area eq 'CA09'}">
                        삼척    
                        </c:when>
                        <c:when test="${row.area eq 'CA10'}">
                        정선    
                        </c:when>
                        <c:when test="${row.area eq 'CA11'}">
                        철원    
                        </c:when>
                        <c:when test="${row.area eq 'CA12'}">
                        양구    
                        </c:when>
                        <c:when test="${row.area eq 'CA13'}">
                        인제    
                        </c:when>
                        <c:when test="${row.area eq 'CA14'}">
                        고성    
                        </c:when>
                        <c:when test="${row.area eq 'CA15'}">
                        양양    
                        </c:when>
                        <c:when test="${row.area eq 'CA16'}">
                        동해    
                        </c:when>
                        <c:when test="${row.area eq 'CA17'}">
                        홍천    
                        </c:when>
                        <c:when test="${row.area eq 'CA18'}">
                        속초    
                        </c:when>
                        <c:otherwise>
                        지역없음.
                        </c:otherwise>
                        </c:choose>
						</td>
						<td class="title">
						<a href="#this" name="title">${row.club_name }</a>
                        <input type="hidden" id="IDX" value="${row.IDX }">
						</td>
						<td>${row.re_name }</td>
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
<input type="text" id="club_name" name="club_name" /> 
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
                fn_startup_clubWrite();
            });
            
            $("#search").on("click", function(e){ //검색하기 버튼
                e.preventDefault();
                fn_startup_clubSearch();
            });
             
            $("a[name='title']").on("click", function(e){ //제목
                e.preventDefault();
                fn_startup_clubDetail($(this));
            });
        });
         
         
        function fn_startup_clubWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/open_startup_clubWrite.do' />");
            comSubmit.submit();
        }
        
        function fn_startup_clubSearch(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/open_startup_clubSearch.do' />");
            comSubmit.addParam("club_name", $('#club_name').val());
            comSubmit.submit();
        }
         
        function fn_startup_clubDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/openStartupClubDetail.do' />");
            comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
            comSubmit.submit();
        }
        function fn_search(pageNo){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/open_startup_clubList.do' />");
            comSubmit.addParam("currentPageNo", pageNo);
            comSubmit.submit();
        }
       
    </script>
</body>
</html>
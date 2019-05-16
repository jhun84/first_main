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
		<col width="10%"/>
		<col width="10%"/>
		<col width="5%"/>
		<col width="10%"/>
		<col width="10%"/>
		<col width="*"/>
		<col width="20%"/>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">글번호</th>
			<th scope="col">조직유형</th>
            <th scope="col">인증연도</th>
            <th scope="col">인증유지현황</th>
            <th scope="col">지역</th>
            <th scope="col">기관명</th>
            <th scope="col">대표자</th>
            <th scope="col">홈페이지</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr>
						<td>${row.IDX }</td>
						<td>${row.jojik_type }</td>
						<td>${row.ji_date }</td>
						<td>${row.m_cert }</td>
						<td>
						<c:choose>
                        <c:when test="${row.ca_area eq 'CA01'}">
                        강릉    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA02'}">
                        태백 
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA03'}">
                        춘천    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA04'}">
                        화천    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA05'}">
                        평창    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA06'}">
                        횡성    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA07'}">
                        원주    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA08'}">
                        영원    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA09'}">
                        삼척    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA10'}">
                        정선    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA11'}">
                        철원    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA12'}">
                        양구    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA13'}">
                        인제    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA14'}">
                        고성    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA15'}">
                        양양    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA16'}">
                        동해    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA17'}">
                        홍천    
                        </c:when>
                        <c:when test="${row.ca_area eq 'CA18'}">
                        속초    
                        </c:when>
                        <c:otherwise>
                        지역없음.
                        </c:otherwise>
                        </c:choose>
						</td>
						<td class="title"><a href="#this" name="title">${row.company_name }</a>
						<input type="hidden" id="IDX" value="${row.IDX }">
						</td>
						<td>${row.ceo_nm }</td>
						<td>${row.homepage }</td>
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
<input type="text" id="company_name" name="company_name" /> 
<a href="#search" class="btn" id="search" >검색</a>
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
                fn_openCerti_CompanyWrite();
            });
            
            $("#search").on("click", function(e){ //검색하기 버튼
                e.preventDefault();
                fn_openCertifiedSearch();
            });
             
            $("a[name='title']").on("click", function(e){ //제목
                e.preventDefault();
                fn_openCertifiedDetail($(this));
            });
        });
         
         
        function fn_openCerti_CompanyWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certi/openCerti_CompanyWrite.do' />");
            comSubmit.submit();
        }
        
        function fn_openCertifiedSearch(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certo/openCertified_CompanySearch.do' />");
            comSubmit.addParam("company_name", $('#company_name').val());
            comSubmit.submit();
        }
         
        function fn_openCertifiedDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certi/openCertiDetail.do' />");
            comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
            comSubmit.submit();
        }
        function fn_search(pageNo){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/certi/openCertifiedList.do' />");
            comSubmit.addParam("currentPageNo", pageNo);
            comSubmit.submit();
        }
       
    </script>
</body>
</html>
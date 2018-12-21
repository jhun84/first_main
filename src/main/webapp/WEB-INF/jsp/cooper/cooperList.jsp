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
		<col width="20%"/>
		<col width="*"/>
		<col width="20%"/>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">글번호</th>
			<th scope="col">지역</th>
			<th scope="col">유형</th>
			<th scope="col">협동조합명</th>
			<th scope="col">대표자</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list }" var="row">
					<tr>
						<td>${row.SEQ_NO }</td>
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
						<td>
						<c:choose>
                          <c:when test="${row.c_type eq 'HP01'}">
                          생산자    
                          </c:when>
                          <c:when test="${row.c_type eq 'HP02'}">
                          소비자 
                          </c:when>
                          <c:when test="${row.c_type eq 'HP03'}">
                          직원    
                          </c:when>
                          <c:when test="${row.c_type eq 'HP04'}">
                          다중이해관계자   
                          </c:when>
                          <c:when test="${row.c_type eq 'HP05'}">
                          사업자   
                          </c:when>
                          <c:otherwise>
                          주사업유형 없음.
                          </c:otherwise>
                        </c:choose>
						</td>
						<td class="title">
						<a href="#this" name="title">${row.cooperative_name }</a>
                        <input type="hidden" id="SEQ_NO" value="${row.SEQ_NO }">
                        </td>
						<td>${row.ceo_name }</td>
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
<!-- <select id="sch_type" name="sch_type"> 
<option value="PRODUCT_NAME" selected="selected">제품명</option> 
</select> --> 
<input type="text" id="cooperative_name" name="cooperative_name" /> 
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
                fn_openCooperWrite();
            });
            
            $("#search").on("click", function(e){ //검색하기 버튼
                e.preventDefault();
                fn_openCooperSearch();
            });
             
            $("a[name='title']").on("click", function(e){ //제목
                e.preventDefault();
                fn_openCooperDetail($(this));
            });
        });
         
         
        function fn_openCooperWrite(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openCooperWrite.do' />");
            comSubmit.submit();
        }
        
        function fn_openCooperSearch(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openCooperSearch.do' />");
            comSubmit.submit();
        }
         
        function fn_openCooperDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openCooperDetail.do' />");
            comSubmit.addParam("SEQ_NO", obj.parent().find("#SEQ_NO").val());
            comSubmit.submit();
        }
        function fn_search(pageNo){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openCooperList.do' />");
            comSubmit.addParam("currentPageNo", pageNo);
            comSubmit.submit();
        }
       
    </script>
</body>
</html>
<%@ page language="java" contentType="application/vnd.ms-excel; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
​<meta http-equiv="Content-Type" content="application/vnd.ms-xls" />
<% 
  String filename = request.getAttribute("fileName").toString();
  response.setHeader("Content-Disposition", "inline; filename=" + filename + ".xls");
%>​ 
</head>
<body>
	<table border="1">
		<caption>예비마을기업</caption>
		<colgroup>
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
			<col >
		</colgroup>
		<thead>
			<tr>
				<th scope="col">지역</th>
				<th scope="col">신규지정연도</th>
				<th scope="col">2차지정연도</th>
				<th scope="col">기업명</th>
				<th scope="col">주요사업내용</th>
				<th scope="col">사업자번호</th>
				<th scope="col">설립일</th>
				<th scope="col">우편번호</th>
				<th scope="col">주소</th>
				<th scope="col">대표자</th>
				<th scope="col">휴대전화번호</th>
				<th scope="col">일반전화번호</th>
				<th scope="col">이메일</th>
				<th scope="col">홈페이지</th>
				<th scope="col">비고</th>
			</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test ="${empty list }">
				<tr>
					<td colspan="5">등록된 내용이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var ="node" items="${list}" varStatus="st">
					<tr>										
						<td>
						<c:choose>
                        <c:when test="${node.area eq 'CA01'}">
                       	          강릉    
                        </c:when>
                        <c:when test="${node.area eq 'CA02'}">
                        	태백 
                        </c:when>
                        <c:when test="${node.area eq 'CA03'}">
                        	춘천    
                        </c:when>
                        <c:when test="${node.area eq 'CA04'}">
                        	화천    
                        </c:when>
                        <c:when test="${node.area eq 'CA05'}">
                        	평창    
                        </c:when>
                        <c:when test="${node.area eq 'CA06'}">
                        	횡성    
                        </c:when>
                        <c:when test="${node.area eq 'CA07'}">
                        	원주    
                        </c:when>
                        <c:when test="${node.area eq 'CA08'}">
                        	영월    
                        </c:when>
                        <c:when test="${node.area eq 'CA09'}">
                        	삼척    
                        </c:when>
                        <c:when test="${node.area eq 'CA10'}">
                        	정선    
                        </c:when>
                        <c:when test="${node.area eq 'CA11'}">
                        	철원    
                        </c:when>
                        <c:when test="${node.area eq 'CA12'}">
                        	양구    
                        </c:when>
                        <c:when test="${node.area eq 'CA13'}">
                        	인제    
                        </c:when>
                        <c:when test="${node.area eq 'CA14'}">
                        	고성    
                        </c:when>
                        <c:when test="${node.area eq 'CA15'}">
                        	양양    
                        </c:when>
                        <c:when test="${node.area eq 'CA16'}">
                        	동해    
                        </c:when>
                        <c:when test="${node.area eq 'CA17'}">
                        	홍천    
                        </c:when>
                        <c:when test="${node.area eq 'CA18'}">
                        	속초    
                        </c:when>
                        <c:otherwise>
                        	지역없음.
                        </c:otherwise>
                        </c:choose>
						</td>
						<td>${node.n_year}</td>
						<td>${node.t_year}</td>
						<td>${node.company_name}</td>
						<td>${node.biz_detail}</td>
						<td>${node.sa_number}</td>
						<td>${node.su_date}</td>
						<td>${node.company_zip}</td>
						<td>${node.company_address}</td>
						<td>${node.ceo_name}</td>
						<td>${node.p_number}</td>
						<td>${node.c_number}</td>
						<td>${node.e_mail}</td>
						<td>${node.homepage}</td>
						<td>${node.bigo}</td>
				</c:forEach>
			</c:otherwise>
		</c:choose>									
		</tbody>
	</table>
</body>
</html>
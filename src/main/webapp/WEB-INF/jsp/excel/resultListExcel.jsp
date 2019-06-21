<%@ page language="java" contentType="application/vnd.ms-excel; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
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
		<caption>협동조합</caption>
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
			<col >
		</colgroup>
		<thead>
			<tr>
				<th scope="col">협동조합명</th>
				<th scope="col">주요사업내용</th>
				<th scope="col">설립동의자수</th>
				<th scope="col">출자금</th>
				<th scope="col">수리일</th>
				<th scope="col">지역</th>
				<th scope="col">업종</th>
				<th scope="col">주사업유형</th>
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
						<td>${node.cooperative_name}</td>						
						<td>${node.biz_detail}</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>									
		</tbody>
	</table>
</body>
</html>
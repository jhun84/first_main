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
		<caption>예비인증사회적기업</caption>
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
            <col >
            <col >
            <col >
            <col >
		</colgroup>
		<thead>
			<tr>
				<th scope="col">기관명</th>
				<th scope="col">우편번호</th>
				<th scope="col">주소</th>
				<th scope="col">광역자치단체</th>
				<th scope="col">관할관서</th>
				<th scope="col">인증지정번호</th>
				<th scope="col">사회적목적실현유형</th>
				<th scope="col">지정일</th>
				<th scope="col">인증유지현황</th>
				<th scope="col">예비SE지역형</th>
				<th scope="col">예비SE부처형</th>
				<th scope="col">업체형태</th>
				<th scope="col">조직형태</th>
				<th scope="col">설립일</th>
				<th scope="col">사업장관리번호</th>
				<th scope="col">사업자번호 본점</th>
				<th scope="col">사업자번호 지점</th>
				<th scope="col">고유번호</th>
				<th scope="col">법인등록번호</th>
				<th scope="col">사업단관련</th>
				<th scope="col">모법인등록번호</th>
				<th scope="col">주요사업내용</th>
				<th scope="col">재화 및 서비스품목</th>
				<th scope="col">대분류</th>
				<th scope="col">중분류</th>
				<th scope="col">업종분류</th>
				<th scope="col">대표자</th>
				<th scope="col">대표자 생년월일</th>
				<th scope="col">휴대전화</th>
				<th scope="col">담당자</th>
				<th scope="col">직위</th>
				<th scope="col">전화번호</th>
				<th scope="col">팩스번호</th>
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
						<td>${node.company_name}</td>
						<td>${node.company_zip}</td>
						<td>${node.company_address}</td>
						<td>${node.cc_area}</td>
						<td>${node.cc_area}</td>
						<td>${node.cert_num}</td>
						<td>${node.pic}</td>
						<td>${node.ji_date}</td>
						<td>${node.m_cert}</td>
						<td>${node.se_area_type}</td>
						<td>${node.se_bu_type}</td>
						<td>${node.company_type}</td>
						<td>${node.jojik_type}</td>
						<td>${node.es_date}</td>
						<td>${node.bm_number}</td>
						<td>${node.company_bnum}</td>
						<td>${node.company_jnum}</td>
						<td>${node.uniq_num}</td>
						<td>${node.cr_num}</td>
						<td>${node.sud_nm}</td>
						<td>${node.sud_num}</td>
						<td>${node.biz_detail}</td>
						<td>${node.item_gubun}</td>
						<td>${node.item_dru}</td>
						<td>${node.item_jru}</td>
						<td>${node.industry_bunryu}</td>
						<td>${node.ceo_nm}</td>
						<td>${node.ceo_birth}</td>
						<td>${node.hp_number}</td>
						<td>${node.pic}</td>
						<td>${node.c_pos}</td>
						<td>${node.areap_number}</td>
						<td>${node.fax_number}</td>
						<td>${node.email}</td>
						<td>${node.homepage}</td>						
						<td>${node.bigo}</td>
				</c:forEach>
			</c:otherwise>
		</c:choose>									
		</tbody>
	</table>
</body>
</html>
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
						<td>${node.s_agree}</td>
						<td>${node.ch_money}</td>
						<td>${node.su_date}</td>
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
						<td>
					<c:choose>
                      <c:when test="${node.upjong eq 'UP01'}">
                      농업,어업 및 임업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP02'}">
                      광업 
                      </c:when>
                      <c:when test="${node.upjong eq 'UP03'}">
                      제조업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP04'}">
                      전기,가스,증기 및 수도사업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP05'}">
                      하수,폐기물 처리,원료재생 및 환경 복원업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP06'}">
                      건설업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP07'}">
                      도매 및 소매업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP08'}">
                      운수업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP09'}">
                      숙박 및 음식점업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP10'}">
                      출판,영상,방송통신 및 정보서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP11'}">
                      금융 및 보험업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP12'}">
                      부동산업 및 임대업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP13'}">
                      전문,과학 및 기술 서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP14'}">
                      사업시설관리 및 사업지원 서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP15'}">
                      공공행정,국방 및 사회보장 행정    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP16'}">
                      교육 서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP17'}">
                      보건업 및 사회복지서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP18'}">
                      예술,스포츠 및 여가관련 서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP19'}">
                      협회 및 단체,수리 및 기타 개인 서비스업    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP20'}">
                      가구내 고용활동 및 달리 분류되지 않은 자가소비 생산활동    
                      </c:when>
                      <c:when test="${node.upjong eq 'UP21'}">
                      국제 및 외국기관    
                      </c:when>
                      <c:otherwise>
                      업종 없음.
                      </c:otherwise>
                </c:choose>
						</td>
						<td>
						<c:choose>
                      <c:when test="${node.c_type eq 'HP01'}">
                      생산자    
                      </c:when>
                      <c:when test="${node.c_type eq 'HP02'}">
                      소비자 
                      </c:when>
                      <c:when test="${node.c_type eq 'HP03'}">
                      직원    
                      </c:when>
                      <c:when test="${node.c_type eq 'HP04'}">
                      다중이해관계자   
                      </c:when>
                      <c:when test="${node.c_type eq 'HP05'}">
                      사업자   
                      </c:when>
                      <c:otherwise>
                      주사업유형 없음.
                      </c:otherwise>
                </c:choose>
						</td>
						<td>${node.zip_num}</td>
						<td>${node.cooperative_addr}</td>
						<td>${node.ceo_name}</td>
						<td>${node.p_number}</td>
						<td>${node.c_number}</td>
						<td>${node.e_mail}</td>
						<td>${node.homepage}</td>
						<td>${node.bigo}</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>									
		</tbody>
	</table>
</body>
</html>
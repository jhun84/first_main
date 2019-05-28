<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
<h1>기업정보</h1>
    <table class="board_view">
        <colgroup>
            <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">지역</th>
                <td>${map.area}</td>
                <th>신규지정연도</th>
                <td>${map.n_year}</td>
                <th>2차지정연도</th>
                <td>${map.t_year}</td>
            </tr>
            <tr>
                <th>기업명</th>
                <td>${map.company_name}</td>
                <th>주요사업내용</th>
                <td>${map.biz_detail}</td>
                <th>사업자번호</th>
                <td>${map.sa_number}</td>
            </tr>
            <tr>
                <th>설립일</th>
                <td>${map.su_date}</td>
                <th scope="row">우편번호</th>
                <td>${map.company_zip}</td>
                <th scope="row">주소</th>
                <td>${map.company_address}</td>
            </tr>
            <tr>
                <th>대표자</th>
                <td>${map.ceo_name}</td>
                <th>휴대전화번호</th>
                <td>${map.p_number}</td>
                <th>일반전화번호</th>
                <td>${map.c_number}</td>
            </tr>
            <tr>
                <th>이메일</th>
                <td>${map.e_mail}</td>
                <th>홈페이지</th>
                <td>${map.homepage}</td>
                <th></th>
                <td></td>
            </tr>                                 
        </tbody>
    </table>
    
    <h1>재무정보</h1>
  <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
  <c:choose>
			<c:when test="${fn:length(list) > 0}">
			<c:forEach var="row" items="${list }">
            <tr>
                <th>${row.years}년</th>
                <td>자본금:${row.ja_mony}, 매출액:${row.me_mony}, 지원항목:${row.ji_list}, 지원금액:${row.ji_mony}</td>
            </tr>
            </c:forEach>
            </c:when>
            <c:otherwise>
				<tr>
					<td colspan="4">재무정보가 없습니다.</td>
				</tr>
			</c:otherwise>
			</c:choose>
</table>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openSenterpriseList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openSenterpriseUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_openSenterpriseList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/s_enterprise/openSenterpriseList.do' />");
            comSubmit.submit();
        }
         
        function fn_openSenterpriseUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/s_enterprise/openSenterpriseUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        
        function fn_downloadFile(obj){
            var idx = obj.parent().find("#IDX").val();
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/v_enterprise/downloadFile.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
        
    </script>
</body>
</html>
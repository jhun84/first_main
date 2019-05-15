<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="10%"/>
            <col width="20%"/>
            <col width="10%"/>
            <col width="20%"/>
            <col width="10%"/>
            <col width="20%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">참여연도</th>
                <td>${map.c_year }</td>
                <th scope="row">참여당시팀명</th>
                <td>${map.team_name }</td>
                <th scope="row">지역</th>
                <td>
                <c:choose>
                        <c:when test="${map.area eq 'CA01'}">
                        강릉    
                        </c:when>
                        <c:when test="${map.area eq 'CA02'}">
                        태백 
                        </c:when>
                        <c:when test="${map.area eq 'CA03'}">
                        춘천    
                        </c:when>
                        <c:when test="${map.area eq 'CA04'}">
                        화천    
                        </c:when>
                        <c:when test="${map.area eq 'CA05'}">
                        평창    
                        </c:when>
                        <c:when test="${map.area eq 'CA06'}">
                        횡성    
                        </c:when>
                        <c:when test="${map.area eq 'CA07'}">
                        원주    
                        </c:when>
                        <c:when test="${map.area eq 'CA08'}">
                        영원    
                        </c:when>
                        <c:when test="${map.area eq 'CA09'}">
                        삼척    
                        </c:when>
                        <c:when test="${map.area eq 'CA10'}">
                        정선    
                        </c:when>
                        <c:when test="${map.area eq 'CA11'}">
                        철원    
                        </c:when>
                        <c:when test="${map.area eq 'CA12'}">
                        양구    
                        </c:when>
                        <c:when test="${map.area eq 'CA13'}">
                        인제    
                        </c:when>
                        <c:when test="${map.area eq 'CA14'}">
                        고성    
                        </c:when>
                        <c:when test="${map.area eq 'CA15'}">
                        양양    
                        </c:when>
                        <c:when test="${map.area eq 'CA16'}">
                        동해    
                        </c:when>
                        <c:when test="${map.area eq 'CA17'}">
                        홍천    
                        </c:when>
                        <c:when test="${map.area eq 'CA18'}">
                        속초    
                        </c:when>
                        <c:otherwise>
                        지역없음.
                        </c:otherwise>
                </c:choose>
                </td>
            </tr>
            <tr>
                <th scope="row">사업지속여부</th>
                <td>${map.jisok_sts }</td>
                <th scope="row">현재회사명</th>
                <td>${map.company_name }</td>
                <th scope="row">회사형태</th>
                <td>${map.company_type }</td>
            </tr>
            <tr>
                <th scope="row">사업자등록번호</th>
                <td>${map.company_sa_number }</td>
                <th scope="row">사업아이템</th>
                <td>${map.company_item }</td>
                <th scope="row">지정(인정)여부</th>
                <td>${map.jijung_sts }</td>
            </tr>
            <tr>
                <th scope="row">지정지자체</th>
                <td>${map.jijung_jijache }</td>
                <th scope="row">지정일</th>
                <td>${map.jijung_ym }</td>
                <th scope="row">대표자</th>
                <td>${map.ceo_name }</td>
            </tr>
            <tr>
                <th scope="row">휴대전화</th>
                <td>${map.hp_number }</td>
                <th scope="row">이메일</th>
                <td>${map.e_mail }</td>
                <th scope="row"></th>
                <td></td>
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
                fn_open_startup_teamList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_open_startup_teamUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_open_startup_teamList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/team/open_StartupTeamList.do' />");
            comSubmit.submit();
        }
         
        function fn_open_startup_teamUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/team/openStartupTeamUpdate.do' />");
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
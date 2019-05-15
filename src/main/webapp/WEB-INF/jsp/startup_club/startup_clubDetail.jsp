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
        <tbody>
            <tr>
                <th scope="row">구분</th>
                <td>${map.club_type }</td>
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
                <th scope="row">동아리명</th>
                <td>${map.club_name }</td>
            </tr>
            <tr>
                <th scope="row">아이템</th>
                <td colspan="5">${map.club_item }</td>
            </tr>
            <tr>
                <th scope="row">대표자</th>
                <td>${map.re_name }</td>
                <th scope="row">휴대전화</th>
                <td>${map.hp_number }</td>
                <th scope="row">이메일</th>
                <td>${map.e_mail }</td>
            </tr>
            <tr>
                <th scope="row">홈페이지</th>
                <td colspan="5">${map.homepage }</td>
            </tr>
             <tr>
                <td colspan="5">${map.CONTENTS }</td>
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
                fn_open_startup_clubList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_open_startup_clubUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_open_startup_clubList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/open_StartupClubList.do' />");
            comSubmit.submit();
        }
         
        function fn_open_startup_clubUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/club/openStartupClubUpdate.do' />");
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
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
                <th scope="row">구분</th>
                <td>${map.club_type }</td>
                <th scope="row">지역</th>
                <td>${map.area }</td>
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
            comSubmit.setUrl("<c:url value='/sample/open_StartupClubList.do' />");
            comSubmit.submit();
        }
         
        function fn_open_startup_clubUpdate(){
        	var seq_no = "${map.SEQ_NO}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openStartupClubUpdate.do' />");
            comSubmit.addParam("SEQ_NO", seq_no);
            comSubmit.submit();
        }
        
        function fn_downloadFile(obj){
            var seq_no = obj.parent().find("#SEQ_NO").val();
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/common/downloadFile.do' />");
            comSubmit.addParam("SEQ_NO", seq_no);
            comSubmit.submit();
        }
        
    </script>
</body>
</html>
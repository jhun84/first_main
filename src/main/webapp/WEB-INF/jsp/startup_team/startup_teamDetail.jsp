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
                <td>${map.area }</td>
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
            comSubmit.setUrl("<c:url value='/sample/open_StartupTeamList.do' />");
            comSubmit.submit();
        }
         
        function fn_open_startup_teamUpdate(){
        	var seq_no = "${map.SEQ_NO}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openStartupTeamUpdate.do' />");
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
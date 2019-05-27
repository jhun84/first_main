<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
function goNotice(){
	location.href="<c:url value='/sample/openBoardList.do' />";
}
function goProduct(){
	location.href="<c:url value='/product/openProductList.do' />";
}
function goService(){
	location.href="<c:url value='/service/openServiceList.do' />";
}
function goCooper(){
	location.href="<c:url value='/cooper/openCooperList.do' />";
}
function goS_Cooper(){
	location.href="<c:url value='/s_cooper/openS_CooperList.do' />";
}
function go_StartupTeam(){
	location.href="<c:url value='/team/open_StartupTeamList.do' />";
}
function go_StartupClub(){
	location.href="<c:url value='/club/open_StartupClubList.do' />";
}
function go_Certi(){
	location.href="<c:url value='/certi/openCertifiedList.do' />";
}
function go_Pre_Certi(){
	location.href="<c:url value='/pre_certi/openPre_CertifiedList.do' />";
}
function goLogout(){
	location.href="<c:url value='/sample/logoutTry.do' />";
}

</script>
<table width="200 border="0" cellpadding="0" cellspacing="0">
<tr>
 <td><input type="button" onclick="goNotice();" value="공지사항"></td>
 <td><input type="button" onclick="goProduct()" value="상품"></td>
 <td><input type="button" onclick="goService();" value="서비스"></td>
 <td><input type="button" onclick="goCooper();" value="협동조합"></td>
 <td><input type="button" onclick="goS_Cooper();" value="사회적협동조합"></td>
 <td><input type="button" onclick="go_StartupTeam();" value="사회적육성_창업팀"></td>
 <td><input type="button" onclick="go_StartupClub();" value="사회적육성_동아리"></td>
 <td><input type="button" onclick="go_Certi();" value="인증사회적기업"></td>
 <td><input type="button" onclick="go_Pre_Certi();" value="예비인증사회적기업"></td>
 
</tr>
</table>
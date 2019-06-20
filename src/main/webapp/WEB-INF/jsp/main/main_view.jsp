<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>사회적경제 지원센터</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="/first/js/jquery-1.11.1.min.js"></script>
    <link href="/first/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="/first/js/bootstrap.min.js"></script>
    <link href="/first/css/Layout.css" rel="stylesheet" id="bootstrap-css">
    <script type="text/javascript">
    function goNotice(){
    	location.href="<c:url value='/sample/openBoardList.do' />";
    }
    function goProduct(){
    	location.href="<c:url value='/sample/openProductList.do' />";
    }
    function goService(){
    	location.href="<c:url value='/sample/openServiceList.do' />";
    }
    function goCooper(){
    	location.href="<c:url value='/sample/openCooperList.do' />";
    }
    function goS_Cooper(){
    	location.href="<c:url value='/sample/openS_CooperList.do' />";
    }
    function go_StartupTeam(){
    	location.href="<c:url value='/sample/open_StartupTeamList.do' />";
    }
    function go_StartupClub(){
    	location.href="<c:url value='/sample/open_StartupClubList.do' />";
    }
    function go_Certi(){
    	location.href="<c:url value='/certi/openCertifiedList.do' />";
    }
    function go_Pre_Certi(){
    	location.href="<c:url value='/pre_certi/openPre_CertifiedList.do' />";
    }
    function go_V_Enter(){
    	location.href="<c:url value='/v_enterprise/openVenterpriseList.do' />";
    }
    function go_PREV_Enter(){
    	location.href="<c:url value='/prev_enterprise/openPreVenterpriseList.do' />";
    }
    function goLogout(){
    	location.href="<c:url value='/sample/logoutTry.do' />";
    }
    function go_S_Enter(){
    	location.href="<c:url value='/s_enterprise/openSenterpriseList.do' />";
    }
    </script>
<style>
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}
</style>
    </head>

<body>
<div id="box">
<!-- header -->
 <table width="100%" height="120" border="0" cellpadding="0" cellspacing="0" style="background-color:#DEDEDE">
   <tr>
     <td align="center">
     <table width="1200" border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><a href="/"><img src="/first/images/sub/top_logo.png"></a></td>
         <td>
         <table width="130">
           <tr>
             <td><a href="#"><img src="/first/images/sub/top_menu1.png"></a></td>
             <td><a href="#"><img src="/first/images/sub/top_menu2.png"></a></td>
           </tr>
         </table>
         </td>
       </tr>
     </table>
     </td>
   </tr>
 </table>
 <table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr>
     <td></td>
     <td id="main_bg">
     <table width="600" border="0" cellpadding="0" cellspacing="0" style="margin-bottom:50px;" align="right">
     <tr>
      <td width="183" align="center"><a href="javascript:go_Certi()"><img src="/first/images/main/main_menu01.png" width="150" height="150"></a></td><!-- 인증사회적기업  -->
      <td width="183" align="center"><a href="javascript:go_Pre_Certi()"><img src="/first/images/main/main_menu02.png" width="150" height="150"></a></td><!-- 예비사회적기업 -->
      <td width="183" align="center"><a href="javascript:go_V_Enter()"><img src="/first/images/main/main_menu03.png" width="150" height="150"></a></td><!-- 마을기업 -->
     </tr>
     <tr>
      <td width="183" align="center"><a href="javascript:go_PREV_Enter()"><img src="/first/images/main/main_menu04.png" width="150" height="150"></a></td><!-- 예비마을기업 -->
      <td width="183" align="center"><a href="javascript:go_S_Enter()"><img src="/first/images/main/main_menu05.png" width="150" height="150"></a></td><!-- 자활기업 -->
      <td width="183" align="center"><a href="javascript:goS_Cooper()"><img src="/first/images/main/main_menu06.png" width="150" height="150"></a></td><!-- 사회적협동조합 -->
     </tr>
     <tr>
      <td width="183" align="center"><a href="javascript:goCooper()"><img src="/first/images/main/main_menu07.png" width="150" height="150"></a></td><!-- 협동조합 -->
      <td width="183" align="center"><a href="javascript:go_StartupTeam()"><img src="/first/images/main/main_menu08.png" width="150" height="150"></a></td><!-- 육성사업_창업팀 -->
      <td width="183" align="center"><a href="javascript:go_StartupClub()"><img src="/first/images/main/main_menu09.png" width="150" height="150"></a></td><!-- 육성사업_동아리 -->
     </tr>
     </table></td>
     <td></td>
   </tr>
 </table>
 
<div style="padding-top:30px;">
<table width="1100" border="0" cellpadding="0" cellspacing="0" align="center">
 <tr>
  <td><table width="500" border="0" cellpadding="5" cellspacing="0" align="center">
     <tr>
       <td colspan="3" style="padding-top:5px;"><img src="/first/images/main/product_title.jpg"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
     </tr>
     <tr>
     <c:choose>
		  <c:when test="${fn:length(product_list) > 0}">
			<c:forEach var="map" items="${product_list}">
            <td><img src="/first/upload/${map.THUMB_FILE_NAME}"><br>${map.PRODUCT_NAME}</td>
            </c:forEach>
          </c:when>
          <c:otherwise>				
			<td>&nbsp;</td>				
		  </c:otherwise>
      </c:choose>
     </tr>
    </table></td>
  <td><table width="500" border="0" cellpadding="5" cellspacing="0" align="center">
     <tr>
       <td colspan="3" style="padding-top:5px;"><img src="/first/images/main/service_title.jpg"></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
     </tr>
     <tr>
     <c:choose>
		  <c:when test="${fn:length(service_list) > 0}">
			<c:forEach var="map" items="${service_list}">
            <td><img src="/first/upload/${map.THUMB_FILE_NAME}"><br>${map.SERVICE_NAME}</td>
            </c:forEach>
          </c:when>
          <c:otherwise>				
			<td>&nbsp;</td>				
		  </c:otherwise>
      </c:choose>
     </tr>
    </table></td>
 </tr>
</table>    
</div>		

		<div style="padding-top:30px;">
		<table width="800" border="0" cellpadding="0" cellspacing="0" align="center" style="border:1px solid #b4b4b4;">
		  <tr>
		    <td>
		<table width="100%" border="0" cellpadding="5" cellspacing="0" style="margin:5px 5px 5px 5px;" >
	
  	 <tr>
		   <td style="border-bottom:2px solid #000"><img src="/first/images/main/main_latest_title.png"></td>
		   <td style="border-bottom:2px solid #000"><a href="/Modules/Notice/Notice_List.jsp"><img src="/first/images/main/main_latest_btn.png"></a></td>		   
		 </tr>
	    <c:choose>
		  <c:when test="${fn:length(list) > 0}">
			<c:forEach var="row" items="${list}">			
		 <tr>		  
		  <td>.&nbsp;<a href="sample/openBoardDetail.do?IDX=${row.IDX}">${row.TITLE}</a></td>
		  <td>${fn:substring(row.CREA_DTM,0,4)}-${fn:substring(row.CREA_DTM,5,7)}-${fn:substring(row.CREA_DTM,8,10)}</td>
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
		    </td>
		    <td>
		    <table align="right" style="margin:20px 20px 20px 20px;" >
		    <tr>
		      <td><img src="/first/images/main/main_latest_info.png"></td>
		    </tr>
		    </table>
		    </td>
		  </tr>
		</table>	
		</div>
		<div style="padding-top:50px;">&nbsp;</div>
		<div id="bottom">
		<div id="image" style="background: url(/first/images/bottom_line.png) no-repeat; width: 100%; height: 2px; background-size: 100%;"></div>
		<div id="footer-content"><img src="/first/images/sub/bottom_logo.png" style="display: block;" style="vertical-align: middle;"></div>
		</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
	<input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
	<h1>기업정보</h1>
		<table class="board_view" width="100%" border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>
                <col width="10%">
                <col width="20%"/>                
        </colgroup>            
            <tbody>
                <tr>
                    <th scope="row">지역</th>
                    <td><input type="text" id="area" name="area" value="${map.area}"></td>
                    <th>규모</th>
                    <td><input type="text" id="gyumo" name="gyumo" value="${map.gyumo}"></td>
                    <th>분야</th>
                    <td><input type="text" id="bunya" name="bunya" value="${map.bunya}"></td>
                </tr>
                <tr>
                    <th>업종</th>
                    <td><input type="text" id="upjong" name="upjong" value="${map.upjong}"></td>
                    <th>사업자유형</th>
                    <td><input type="text" id="sa_type" name="sa_type" value="${map.sa_type}"></td>
                    <th>폐업여부</th>
                    <td><input type="text" id="pe_sts" name="pe_sts" value="${map.pe_sts}"></td>
                </tr>
                <tr>
                    <th>사회적기업 인증현황</th>
                    <td><input type="text" id="certi_situ" name="certi_situ" value="${map.certi_situ}"></td>
                    <th>인증연도</th>
                    <td><input type="text" id="certi_year" name="certi_year" value="${map.certi_year}"></td>
                    <th>유형</th>
                    <td><input type="text" id="certi_type" name="certi_type" value="${map.certi_type}"></td>
                </tr>
                <tr>
                    <th>기업명</th>
                    <td><input type="text" id="company_name" name="company_name" value="${map.company_name}"></td>
                    <th>주요사업내용</th>
                    <td><input type="text" id="biz_detail" name="biz_detail" value="${map.biz_detail}"></td>
                    <th>사업자번호</th>
                    <td><input type="text" id="sa_number" name="sa_number" value="${map.sa_number}"></td>
                </tr>
                <tr>
                <th>설립일</th>
                <td><input type="text" id="su_date" name="su_date" value="${map.su_date}"></td>
                <th scope="row">우편번호</th>
                <td><input type="text" id="company_zip" name="company_zip" value="${map.company_zip}"></td>
                <th scope="row">주소</th>
                <td><input type="text" id="company_address" name="company_address" value="${map.company_address}" size="60"></td>
            </tr>
            <tr>
                <th>대표자</th>
                <td><input type="text" id="ceo_name" name="ceo_name" value="${map.ceo_name}"></td>
                <th>휴대전화번호</th>
                <td><input type="text" id="p_number" name="p_number" value="${map.p_number}"></td>
                <th>일반전화번호</th>
                <td><input type="text" id="c_number" name="c_number" value="${map.c_number}"></td>
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="text" id="e_mail" name="e_mail" value="${map.e_mail}"></td>
                <th>홈페이지</th>
                <td><input type="text" id="homepage" name="homepage" value="${map.homepage}"></td>
                <th></th>
                <td></td>
            </tr>
                
            </tbody>
        </table>
        
<h1>재무정보</h1>
<c:choose>
	<c:when test="${fn:length(list) > 0}">
	<c:forEach var="row" items="${list }" varStatus="var">
    <input type="hidden" id="IDX" name="IDX_${var.index }" value="${row.IDX }">
    <table width="100%" class="board_view" cellpadding="0" cellspacing="0">
     <tr>
     <th>연도</th>
     <td>
     <select name="year_${var.index }">
      <option value="">선택</option>     
      <option value="2010" <c:if test="${row.years eq '2010'}">selected</c:if>>2010</option>
      <option value="2011" <c:if test="${row.years eq '2011'}">selected</c:if>>2011</option>
      <option value="2012" <c:if test="${row.years eq '2012'}">selected</c:if>>2012</option>
      <option value="2013" <c:if test="${row.years eq '2013'}">selected</c:if>>2013</option>
      <option value="2014" <c:if test="${row.years eq '2014'}">selected</c:if>>2014</option>
      <option value="2015" <c:if test="${row.years eq '2015'}">selected</c:if>>2015</option>
      <option value="2016" <c:if test="${row.years eq '2016'}">selected</c:if>>2016</option>
      <option value="2017" <c:if test="${row.years eq '2017'}">selected</c:if>>2017</option>
      <option value="2018" <c:if test="${row.years eq '2018'}">selected</c:if>>2018</option>
      <option value="2019" <c:if test="${row.years eq '2019'}">selected</c:if>>2019</option>
      <option value="2020" <c:if test="${row.years eq '2020'}">selected</c:if>>2020</option>
      <option value="2021" <c:if test="${row.years eq '2021'}">selected</c:if>>2021</option>
      <option value="2022" <c:if test="${row.years eq '2022'}">selected</c:if>>2022</option>      
     </select>
     </td>
     <th>자본금</th>
     <td><input type="text" id="" name="ja_mony_${var.index }" value="${row.ja_mony }"></td>
     <th>매출액</th>
     <td><input type="text" id="" name="me_mony_${var.index }" value="${row.me_mony }"></td>
    </tr>
    <tr>
     <th>지원항목</th>
     <td><input type="text" id="" name="ji_list_${var.index }" value="${row.ji_list }"></td>
     <th>지원금액</th>
     <td><input type="text" id="" name="ji_mony_${var.index }" value="${row.ji_mony }"></td>
     <th></th>
     <td></td>
    </tr>               
   </table>   	
</c:forEach>
    </c:when>
	</c:choose>
	<div id="Yeardiv" style="padding-top:10px;">
 <div id="money_info">		
 </div>
</div>

	</form>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="addyear" >재무정보연도추가하기</a>	
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	
	<%@ include file="/WEB-INF/include/include-body.jsp" %>
	<script type="text/javascript">
	
	var gfv_count = 1;
	var year_count = 1;
    
    var ja_mony_count = 1;
    var me_mony_count = 1;
    var ji_list_count = 1;
    var ji_mony_count = 1;
    
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openSenterpriseList();
			});
			
			$("#update").on("click", function(e){ //저장하기 버튼
					e.preventDefault();
					fn_updateSenterprise();
			});
						
			$("#delete").on("click", function(e){ //삭제하기 버튼
				e.preventDefault();
				fn_deleteSenterprise();
			});
			$("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
			$("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
             
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });

		});
		
		function fn_openSenterpriseList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/s_enterprise/openSenterpriseList.do' />");
			comSubmit.submit();
		}
		
		function fn_updateSenterprise(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/s_enterprise/updateSenterprise.do' />");
			comSubmit.submit();
		}
		
		function fn_deleteSenterprise(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/s_enterprise/deleteSenterprise.do' />");
			comSubmit.addParam("IDX", $("#IDX").val());
			comSubmit.submit();
			
		}
		function fn_addFile(){
            var str = "<p>" +
                    "<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
                    "<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
                "</p>";
            $("#fileDiv").append(str);
            $("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
		function fn_addYear(){
            var str = "";
            str += "<div>";
            str += "<table width='100%' class='board_view' cellpadding='0' cellspacing='0'>";
            str += "<tr>";
            str += "<th>연도</th>";
            str += "<td><select name='year_"+(year_count++)+"'>";
            str += "<option value=''>선택</option>";
            str += "<option value='2010'>2010</option>";
            str += "<option value='2011'>2011</option>";
            str += "<option value='2012'>2012</option>";
            str += "<option value='2013'>2013</option>";
            str += "<option value='2014'>2014</option>";
            str += "<option value='2015'>2015</option>";
            str += "<option value='2016'>2016</option>";
            str += "<option value='2017'>2017</option>";
            str += "<option value='2018'>2018</option>";
            str += "<option value='2019'>2019</option>";
            str += "<option value='2020'>2020</option>";
            str += "<option value='2021'>2021</option>";
            str += "<option value='2022'>2022</option>";
            str += "</select>";
            str += "</td>";
            str += "<th>자본금</th>";
            str += "<td><input type='text' name='ja_mony_"+(ja_mony_count++)+"'></td>";
            str += "<th>매출액</th>";
            str += "<td><input type='text' name='me_mony_"+(me_mony_count++)+"'></td>";
            str += "</tr><tr>";
            str += "<th>지원항목</th>";
            str += "<td><input type='text' name='ji_list_"+(ji_list_count++)+"'></td>";
            str += "<th>지원금액</th>";
            str += "<td><input type='text' name='ji_mony_"+(ji_mony_count++)+"'></td>";
            str += "<th></th><td></td>";
            str += "</tr></table><a href='#this' class='btn' name='delete'>삭제</a>";
            str += "</div>";
            
            $("#Yeardiv").append(str);
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
         
        function fn_deleteFile(obj){
            obj.parent().remove();
        }
	</script>
</body>
</html>
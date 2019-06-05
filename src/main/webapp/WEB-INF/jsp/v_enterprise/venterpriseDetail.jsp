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
        <tbody>
            <tr>
                <th scope="row">지역</th>
                <td><c:choose>
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
                                                                     영월    
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
                        </c:choose></td>
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
                <th>비고</th>
                <td>${map.bigo}</td>
            </tr>                                 
        </tbody>
    </table>
  
  <form id="frm" name="frm" enctype="multipart/form-data">
   <input type="hidden" id="IDX" name="IDX" value="${map.IDX }">
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
	<div id="Yeardiv" style="padding-top:10px;">
 <div id="money_info">		
 </div>
</div>
  </form>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="addyear" >재무정보연도추가하기</a>
    <a href="#this" class="btn" id="addyear_insert" >추가완료</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    
    <%@ include file="/WEB-INF/include/include-body.jsp" %>
    <script type="text/javascript">
    var year_count = 1;
    
    var ja_mony_count = 1;
    var me_mony_count = 1;
    var ji_list_count = 1;
    var ji_mony_count = 1;
    
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openVenterpriseList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openVenterpriseUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
            $("#addyear").on("click", function(e){ //재무정보 연도 추가 버튼
                e.preventDefault();
                fn_addYear();
            });
            $("#addyear_insert").on("click", function(e){ //재무정보 연도 추가완료
                e.preventDefault();
                fn_addYear_insert();
            });
            $("a[name='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
                       
        });
         
        function fn_openVenterpriseList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/v_enterprise/openVenterpriseList.do' />");
            comSubmit.submit();
        }
         
        function fn_openVenterpriseUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/v_enterprise/openVenterpriseUpdate.do' />");
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
        function fn_addYear_insert(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/v_enterprise/addYear_insert.do' />");
			comSubmit.submit();
		}
        function fn_deleteFile(obj){
            obj.parent().remove();
        }
        
    </script>
</body>
</html>
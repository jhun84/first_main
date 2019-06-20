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
                    <td>
                    <select name="area">
                      <option value="" <c:if test="${map.area eq ''}">selected</c:if>>선택</option>
	                  <option value="CA01" <c:if test="${map.area eq 'CA01'}">selected</c:if>>강릉</option>
                      <option value="CA02" <c:if test="${map.area eq 'CA02'}">selected</c:if>>태백</option>
                      <option value="CA03" <c:if test="${map.area eq 'CA03'}">selected</c:if>>춘천</option>
                      <option value="CA04" <c:if test="${map.area eq 'CA04'}">selected</c:if>>화천</option>
                      <option value="CA05" <c:if test="${map.area eq 'CA05'}">selected</c:if>>평창</option>
                      <option value="CA06" <c:if test="${map.area eq 'CA06'}">selected</c:if>>횡성</option>
                      <option value="CA07" <c:if test="${map.area eq 'CA07'}">selected</c:if>>원주</option>
                      <option value="CA08" <c:if test="${map.area eq 'CA08'}">selected</c:if>>영월</option>
                      <option value="CA09" <c:if test="${map.area eq 'CA09'}">selected</c:if>>삼척</option>
                      <option value="CA10" <c:if test="${map.area eq 'CA10'}">selected</c:if>>정선</option>
                      <option value="CA11" <c:if test="${map.area eq 'CA11'}">selected</c:if>>철원</option> 
                      <option value="CA12" <c:if test="${map.area eq 'CA12'}">selected</c:if>>양구</option> 
                      <option value="CA13" <c:if test="${map.area eq 'CA13'}">selected</c:if>>인제</option>
                      <option value="CA14" <c:if test="${map.area eq 'CA14'}">selected</c:if>>고성</option>
                      <option value="CA15" <c:if test="${map.area eq 'CA15'}">selected</c:if>>양양</option>
                      <option value="CA16" <c:if test="${map.area eq 'CA16'}">selected</c:if>>동해</option>
                      <option value="CA17" <c:if test="${map.area eq 'CA17'}">selected</c:if>>홍천</option>		   
                      <option value="CA18" <c:if test="${map.area eq 'CA18'}">selected</c:if>>속초</option>
                     </select>
                    </td>
                    <th>규모</th>
                    <td>
                    <select name="gyumo">
                      <option value="" <c:if test="${map.gyumo eq ''}">selected</c:if>>선택</option>
                      <option value="지역형" <c:if test="${map.gyumo eq '지역형'}">selected</c:if>>지역형</option>
                      <option value="광역형" <c:if test="${map.gyumo eq '광역형'}">selected</c:if>>광역형</option>
                      <option value="전국형" <c:if test="${map.gyumo eq '전국형'}">selected</c:if>>지역형</option>
                     </select>
                    </td>
                    <th>분야</th>
                    <td>
                    <select name="bunya">
                      <option value="" <c:if test="${map.bunya eq ''}">selected</c:if>>선택</option>
                      <option value="농업" <c:if test="${map.bunya eq '농업'}">selected</c:if>>농업</option>
                      <option value="도소매업" <c:if test="${map.bunya eq '도소매업'}">selected</c:if>>도소매업</option>
                      <option value="서비스" <c:if test="${map.bunya eq '서비스'}">selected</c:if>>서비스</option>
                      <option value="운수업" <c:if test="${map.bunya eq '운수업'}">selected</c:if>>운수업</option>
                      <option value="음식점업" <c:if test="${map.bunya eq '음식점업'}">selected</c:if>>음식점업</option>
                      <option value="제조업" <c:if test="${map.bunya eq '제조업'}">selected</c:if>>제조업</option>
                      <option value="주거환경" <c:if test="${map.bunya eq '주거환경'}">selected</c:if>>주거환경</option>
                      <option value="폐기물처리업" <c:if test="${map.bunya eq '폐기물처리업'}">selected</c:if>>폐기물처리업</option>                      	                	               
                     </select>
                    </td>
                </tr>
                <tr>
                    <th>업종</th>
                    <td>
                    <select name="upjong">
                      <option value="" <c:if test="${map.upjong eq ''}">selected</c:if>>선택</option>
                      <option value="가정청소대행" <c:if test="${map.upjong eq '가정청소대행'}">selected</c:if>>가정청소대행</option>
                      <option value="농수축산가공" <c:if test="${map.upjong eq '농수축산가공'}">selected</c:if>>농수축산가공</option>
                      <option value="도배.장판" <c:if test="${map.upjong eq '도배.장판'}">selected</c:if>>도배.장판</option>
                      <option value="돌봄.간병" <c:if test="${map.upjong eq '돌봄.간병'}">selected</c:if>>돌봄.간병</option>
                      <option value="배송" <c:if test="${map.upjong eq '배송'}">selected</c:if>>배송</option>
                      <option value="비금속광물" <c:if test="${map.upjong eq '비금속광물'}">selected</c:if>>비금속광물</option>
                      <option value="세탁.수선" <c:if test="${map.upjong eq '세탁.수선'}">selected</c:if>>세탁.수선</option>
                      <option value="식음료" <c:if test="${map.upjong eq '식음료'}">selected</c:if>>식음료</option>
                      <option value="식품가공" <c:if test="${map.upjong eq '식품가공'}">selected</c:if>>식품가공</option>
                      <option value="영농" <c:if test="${map.upjong eq '영농'}">selected</c:if>>영농</option>
                      <option value="유통" <c:if test="${map.upjong eq '유통'}">selected</c:if>>유통</option>
                      <option value="유통.영농" <c:if test="${map.upjong eq '유통.영농'}">selected</c:if>>유통.영농</option>
                      <option value="음식점" <c:if test="${map.upjong eq '음식점'}">selected</c:if>>음식점</option>
                      <option value="의류.악세사리" <c:if test="${map.upjong eq '의류.악세사리'}">selected</c:if>>의류.악세사리</option>
                      <option value="재활용" <c:if test="${map.upjong eq '재활용'}">selected</c:if>>재활용</option>
                      <option value="종합집수리" <c:if test="${map.upjong eq '종합집수리'}">selected</c:if>>종합집수리</option>
                      <option value="차량세차" <c:if test="${map.upjong eq '차량세차'}">selected</c:if>>차량세차</option>
                      <option value="청소환경" <c:if test="${map.upjong eq '청소환경'}">selected</c:if>>청소환경</option>
                      <option value="체험.공예품" <c:if test="${map.upjong eq '체험.공예품'}">selected</c:if>>체험.공예품</option>	                	                
                     </select>
                    </td>
                    <th>사업자유형</th>
                    <td>
                    <select name="sa_type">
                      <option value="" <c:if test="${map.sa_type eq ''}">selected</c:if>>선택</option>
                      <option value="개인사업자" <c:if test="${map.sa_type eq '개인사업자'}">selected</c:if>>개인사업자</option>
                      <option value="공동사업자" <c:if test="${map.sa_type eq '공동사업자'}">selected</c:if>>공동사업자</option>
                      <option value="유한회사" <c:if test="${map.sa_type eq '유한회사'}">selected</c:if>>유한회사</option>
                      <option value="주식회사" <c:if test="${map.sa_type eq '주식회사'}">selected</c:if>>주식회사</option>
                      <option value="협동조합" <c:if test="${map.sa_type eq '협동조합'}">selected</c:if>>협동조합</option>	                	                
                     </select>
                    </td>
                    <th>폐업여부</th>
                    <td>
                    <select name="pe_sts">
                      <option value="" <c:if test="${map.pe_sts eq ''}">selected</c:if>>선택</option>
                      <option value="폐업진행" <c:if test="${map.pe_sts eq '폐업진행'}">selected</c:if>>폐업진행</option>
                      <option value="폐업" <c:if test="${map.pe_sts eq '폐업'}">selected</c:if>>폐업</option>	                	                
                     </select>
                    </td>
                </tr>
                <tr>
                    <th>사회적기업 인증현황</th>
                    <td>
                    <select name="certi_situ">
                      <option value="" <c:if test="${map.certi_situ eq ''}">selected</c:if>>선택</option>
                      <option value="사회적기업" <c:if test="${map.certi_situ eq '사회적기업'}">selected</c:if>>사회적기업</option>
                      <option value="예비사회적기업" <c:if test="${map.certi_situ eq '예비사회적기업'}">selected</c:if>>예비사회적기업</option>		                	                
                     </select>
                    </td>
                    <th>인증연도</th>
                    <td>
                    <select name="certi_year">
                      <option value="" <c:if test="${map.certi_year eq ''}">selected</c:if>>선택</option>
                      <option value="2008" <c:if test="${map.certi_year eq '2008'}">selected</c:if>>2008</option>
                      <option value="2009" <c:if test="${map.certi_year eq '2009'}">selected</c:if>>2009</option>
                      <option value="2010" <c:if test="${map.certi_year eq '2010'}">selected</c:if>>2010</option>
                      <option value="2011" <c:if test="${map.certi_year eq '2011'}">selected</c:if>>2011</option>
                      <option value="2012" <c:if test="${map.certi_year eq '2012'}">selected</c:if>>2012</option>
                      <option value="2013" <c:if test="${map.certi_year eq '2013'}">selected</c:if>>2013</option>
                      <option value="2014" <c:if test="${map.certi_year eq '2014'}">selected</c:if>>2014</option>
                      <option value="2015" <c:if test="${map.certi_year eq '2015'}">selected</c:if>>2015</option>
                      <option value="2016" <c:if test="${map.certi_year eq '2016'}">selected</c:if>>2016</option>
                      <option value="2017" <c:if test="${map.certi_year eq '2017'}">selected</c:if>>2017</option>
                      <option value="2018" <c:if test="${map.certi_year eq '2018'}">selected</c:if>>2018</option>
                      <option value="2019" <c:if test="${map.certi_year eq '2019'}">selected</c:if>>2019</option>	                	                
                     </select>
                    </td>
                    <th>유형</th>
                    <td>
                    <select name="certi_type">
                      <option value="" <c:if test="${map.certi_type eq ''}">selected</c:if>>선택</option>
                      <option value="사회서비스" <c:if test="${map.certi_type eq '사회서비스'}">selected</c:if>>사회서비스</option>
                      <option value="일자리" <c:if test="${map.certi_type eq '일자리'}">selected</c:if>>일자리</option>
                      <option value="혼합형" <c:if test="${map.certi_type eq '혼합형'}">selected</c:if>>혼합형</option>	                	                
                     </select>
                    </td>
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
                <td>
                <div class="input-group date" style="width:200px">
                    <input type="text" id="su_date" name="su_date" value="${map.su_date}" class="form-control">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
                </td>
                <th scope="row">우편번호&nbsp;&nbsp;<input type="button" onClick="goPopup();" value="주소검색"></th>
                <td><input type="text" id="zipNo" name="company_zip" value="${map.company_zip}"></td>
                <th scope="row">주소</th>
                <td><input type="text" id="roadFullAddr" name="company_address" value="${map.company_address}" size="50"></td>
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
                <th>비고</th>
                <td><input type="text" id="bigo" name="bigo" value="${map.bigo}"></td>
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
				var result = confirm('삭제를 하시겠습니까?');
			    
			    if(result){
			    	e.preventDefault();
					fn_deleteSenterprise();
			    }else{
			    	return false;
			    }
				
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>        
        <tbody>
            <tr>
                <th scope="row">협동조합명</th>
                <td>${map.cooperative_name }</td>
                <th scope="row">주요사업내용</th>
                <td>${map.biz_detail }</td>
            </tr>
            <tr>
                <th scope="row">설립동의자수</th>
                <td>${map.s_agree }</td>
                <th scope="row">출자금(천원)</th>
                <td>${map.ch_money }</td>
            </tr>
            <tr>
                <th scope="row">수리(인가)일</th>
                <td>${map.su_date }</td>
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
                </c:choose>
                </td>
            </tr>
            <tr>
                <th scope="row">업종</th>
                <td>
                <c:choose>
                      <c:when test="${map.upjong eq 'UP01'}">
                      농업,어업 및 임업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP02'}">
                      광업 
                      </c:when>
                      <c:when test="${map.upjong eq 'UP03'}">
                      제조업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP04'}">
                      전기,가스,증기 및 수도사업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP05'}">
                      하수,폐기물 처리,원료재생 및 환경 복원업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP06'}">
                      건설업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP07'}">
                      도매 및 소매업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP08'}">
                      운수업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP09'}">
                      숙박 및 음식점업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP10'}">
                      출판,영상,방송통신 및 정보서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP11'}">
                      금융 및 보험업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP12'}">
                      부동산업 및 임대업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP13'}">
                      전문,과학 및 기술 서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP14'}">
                      사업시설관리 및 사업지원 서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP15'}">
                      공공행정,국방 및 사회보장 행정    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP16'}">
                      교육 서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP17'}">
                      보건업 및 사회복지서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP18'}">
                      예술,스포츠 및 여가관련 서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP19'}">
                      협회 및 단체,수리 및 기타 개인 서비스업    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP20'}">
                      가구내 고용활동 및 달리 분류되지 않은 자가소비 생산활동    
                      </c:when>
                      <c:when test="${map.upjong eq 'UP21'}">
                      국제 및 외국기관    
                      </c:when>
                      <c:otherwise>
                      업종 없음.
                      </c:otherwise>
                </c:choose>
                </td>
                <th scope="row">주사업유형</th>
                <td>
                <c:choose>
                      <c:when test="${map.c_type eq 'HP01'}">
                      생산자    
                      </c:when>
                      <c:when test="${map.c_type eq 'HP02'}">
                      소비자 
                      </c:when>
                      <c:when test="${map.c_type eq 'HP03'}">
                      직원    
                      </c:when>
                      <c:when test="${map.c_type eq 'HP04'}">
                      다중이해관계자   
                      </c:when>
                      <c:when test="${map.c_type eq 'HP05'}">
                      사업자   
                      </c:when>
                      <c:otherwise>
                      주사업유형 없음.
                      </c:otherwise>
                </c:choose>
                </td>
            </tr>
            <tr>
                <th scope="row">우편번호</th>
                <td>${map.zip_num }</td>
                <th scope="row">주소</th>
                <td>${map.cooperative_addr }</td>
            </tr>
            <tr>
                <th scope="row">대표자</th>
                <td>${map.ceo_name }</td>
                <th scope="row">휴대전화번호</th>
                <td>${map.p_number }</td>
            </tr>
            <tr>
                <th scope="row">일반전화번호</th>
                <td>${map.c_number }</td>
                <th scope="row">이메일</th>
                <td>${map.e_mail }</td>
            </tr>
            <tr>
                <th scope="row">홈페이지</th>
                <td>${map.homepage }</td>
                <th scope="row">&nbsp;</th>
                <td>&nbsp;</td>
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
                fn_openCooperList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openCooperUpdate();
            });
            $("a[name='file']").on("click", function(e){ //파일 이름
                e.preventDefault();
                fn_downloadFile($(this));
            })
                       
        });
         
        function fn_openCooperList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/cooper/openCooperList.do' />");
            comSubmit.submit();
        }
         
        function fn_openCooperUpdate(){
        	var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/cooper/openCooperUpdate.do' />");
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
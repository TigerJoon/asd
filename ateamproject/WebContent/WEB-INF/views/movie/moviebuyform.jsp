 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path"
   value="${pageContext.request.contextPath}/resources/img"/>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script
   src="${pageContext.request.contextPath}/resources/js/d3-5.8.2.min.js"
   charset="utf-8"></script>
<meta charset="EUC-KR">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bookinga.css">

<style>
.movie-button.active{
	background: #CBD9DB;
	height: 18%;
}
</style>


<body>

   <div class="body-wrap">

      <div class="inner-wrap"
         style="padding-top: 40px; padding-bottom: 100px;">

         <div class="quick-reserve">
            <div class="tit-util">
               <h2 class="tit">예매</h2>

            </div>
            <div class="mege-quick-reserve-inculde">
               <div class="time-schedule quick">
                  <div class="wrap">
                     <button type="button" title="이전 날짜 보기" class="btn-pre"
                        disabled="true">
                        <i class="iconset ico-cld-pre"></i> <em>이전</em>
                     </button>


                     <div class="date-list">
                        <div class="year-area">
                           <div class="year" style="left: 30px; z-index: 1; opacity: 1;">${dayWeekList[1].year}.${dayWeekList[1].month}</div>
                           <div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
                        </div>
                        <div class="date-area" id="formDeList">
                           <div class="wrap"
                              style="position: relative; width: 2100px; border: none; left: -70px;">
                              <c:forEach var="dto" items="${dayWeekList}" varStatus="status">
                                 <c:if test="${status.index == 1}">
                                    <button class="on" type="button" id="day_${dto.day }"
                                       date-data="${dto.year }.${dto.month }.${dto.day }"
                                       onclick="dateClk(${dto.year },${dto.month },${dto.day });">
                                 </c:if>
                                 <c:if test="${status.index != 1}">
                                    <button class="" type="button" id="day_${dto.day }"
                                       date-data="${dto.year }.${dto.month }.${dto.day }"
                                       onclick="dateClk(${dto.year },${dto.month },${dto.day });">
                                 </c:if>

                                 <span class="ir">${dto.year }년 ${dto.month }월</span>
                                 <em style="pointer-events: none;">${dto.day }<span
                                    style="pointer-events: none;" class="ir">일</span></em>
                                 <span class="day-kr"
                                    style="pointer-events: none; display: inline-block">${dto.dayOfweek }</span>
                                 </button>
                              </c:forEach>
                           </div>
                        </div>
                     </div>

                     <!-- 다음날짜 -->
                     <button type="button" title="다음 날짜 보기" class="btn-next"
                        disabled="true">
                        <i class="iconset ico-cld-next"></i> <em>다음</em>
                     </button>
                     <!--// 다음날짜 -->

                     <!-- 달력보기 -->
                     <div class="bg-line">
                        <!--  <input type="hidden" id="datePicker" value="2022.04.11"
                                 class="hasDatepicker"> -->
                        <button type="button" id="calendar" data-bs-container="body" class="btn-calendar-large"
                           title="달력보기"  data-bs-toggle="popover" 
                           data-bs-placement="bottom" data-bs-content="">달력보기</button>
                           
                        <div class="cal"></div>

                     </div>
                     <!--// 달력보기 -->
                  </div>
               </div>
               <div class="quick-reserve-area">
                  <div class="movie-choice">
                     <p class="tit">영화</p>
                     <div class="list-area">
                        <div class="all-list">
                           <button type="button" class="btn-tab on" id="movieAll">전체</button>
                           <div class="list">

                              <div class="scroll m-scroll mCustomScrollbar _mCS_1"
                                 id="movieList" style="overflow-y: scroll; ">
                                 <div id="mCSB_1"
                                    class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                    style="max-height: none;" tabindex="0">
                                    <div id="mCSB_1_container" class="mCSB_container"
                                       style="position: relative; top: 0; left: 0;" dir="ltr">
                                       <ul>
                                          <c:forEach var="vo" items="${namelist}">
                                             <li>

                                                <button type="button" class="movie-btn"
                                                   id="active">
                                                    <span class="yimg">

                                                         <img src="${path}/newaging/${vo.mage}.png">
                                                   </span> 
                                                   <i class="iconset ico-heart-small"></i>
                                                   
                                                    <span class="txt" id="moviename" style="right: 5px;"> ${vo.mname} </span>
                                                   
                                                </button>
                                             </li>
                                          </c:forEach>

                                       </ul>
                                    </div>

                                 </div>
                              </div>
                           </div>

                        </div>
                     </div>
                     <!--// list-area -->

                     <!-- view-area -->
                     <div class="view-area">

                        <!-- 영화 선택 하지 않았을 때 -->
                       <div class="choice-all" id="choiceMovieNone"
                           style="display: none;">
                           <strong>전체영화</strong> <span>목록에서 영화을 선택하세요.</span>
                        </div>
                        <div class="choice-list" id="choiceMovieList"
                           style="display: block;">
                           <div class="bg" id="mChoice_1"></div>
                           <div class="bg" id="thChoice_2"></div>
                           <div class="bg" id="thChoice_3"></div>
                        </div>
                     </div>
                  </div>
                  <div class="theater-choice">
                     <div class="tit-area">
                        <p class="tit">극장</p>
                     </div>
                     <div class="list-area" id="brchTab">
                        <div class="all-list">
                           <button type="button" class="btn-tab on">극장</button>
                           <div class="place-list">
                              <div class="scroll" id="brchList">
                                 <ul>
                                       <li>
                                          <button type="button" class="place-btn">
                                             <span class="txt" style="display: flex;" id="cinemu">CINEMU</span>
                                             
                                          </button>

                                          <div class="depth on">
                                         
                                             <div
                                                class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4">
                                                <div id="mCSB_4"
                                                   class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                                   style="max-height: none;" tabindex="0">
                                                   <div id="mCSB_4_container" class="mCSB_container"
                                                      style="position: relative; top: 0; left: 0;" dir="ltr">
                                                       <c:forEach var="vo" items="${palcelist}">
                                                      <ul>
                                                         <li id="regionDetailPos"></li>
                                                       
                                                      </ul>
</c:forEach>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </li>

                                    

                                 </ul>

                              </div>
                             
                           </div>
                        </div>

                     </div>

                     <div class="view-area">

                        <!-- 영화관 선택 하지 않았을 때 -->
                        <div class="choice-all" id="choiceBrchNone"
                           style="display: none;">
                           <strong>전체극장</strong> <span>목록에서 극장을 선택하세요.</span>
                        </div>

                        <!-- 영화관을 한개라도 선택 했을때 -->
                        <div class="choice-list" id="choiceBrchList"
                           style="display: block;">
                           <div class="bg" id="thChoice_1"></div>
                           <div class="bg" id="thChoice_2"></div>
                           <div class="bg" id="thChoice_3"></div>
                        </div>
                     </div>
                  </div>
                  <div class="time-choice">
                     <div class="tit-area">
                        <p class="tit">시간</p>

                        <div class="right legend">
                           <i class="iconset ico-sun" title="조조"></i> 조조 <i
                              class="iconset ico-brunch" title="브런치"></i> 브런치 <i
                              class="iconset ico-moon" title="심야"></i> 심야
                        </div>
                     </div>
                     <div class="hour-schedule">
                        <button type="button" class="btn-prev-time">이전 시간 보기</button>

                        <div class="wrap">
                           <div class="view"
                              style="position: absolute; width: 1015px; transition: none 0s ease 0s; left: -665px;"
                              id="hour-scheduleView">
                              <%
                                 for (int i = 0; i < 19; i++) {
                              %>
                              <button type="button" class="hour">00</button>
                              <%
                                 }
                              %>

                              <c:forEach var="timeList" items="${timeList}"
                                 varStatus="status">
                                 <button type="button" class="hour" style="opacity: 0.5;"
                                    id="time_${timeList }">${timeList }</button>
                              </c:forEach>

                           </div>
                        </div>
                        <button type="button" class="btn-next-time">다음 시간 보기</button>
                     </div>
                     <div class="movie-schedule-area">
                        <div class="no-result" id="playScheduleNonList"
                           style="display: none;">
                           <i class="iconset ico-movie-time"></i>
                           <p class="txt">
                              영화와 극장을 선택하시면<br> 상영시간표를 비교하여 볼 수 있습니다.
                           </p>
                        </div>
                        <!-- 영화, 영화관 선택 했을때 -->
                        <div class="result">
                           <div
                              class="scroll m-scroll mCustomScrollbar _mCS_16 mCS_no_scrollbar"
                              id="playScheduleList" style="">
                              <div id="mCSB_16"
                                 class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
                                 style="max-height: none;" tabindex="0">
                                 <div id="mCSB_16_container"
                                    class="mCSB_container mCS_no_scrollbar_y"
                                    style="position: relative; top: 0; left: 0;" dir="ltr">
                                     <c:forEach var="vo" items="${namelist}">
                                    <c:forEach var="e" items="${palcelist}">
                                       <ul>
                                          <li id="movieTimePos"></li>
                                          <li id="movieTimePos">${e.mstarttime}${vo.mname}</li>
                                          <li id="movieTimePos">${e.mendtime}</li>
                                          <li id="movieTimePos">${e.mbdate}</li>
                                       </ul>
                                    </c:forEach>
                                   </c:forEach>
                                    
                                 </div>

                              </div>
                           </div>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </div>

   </div>
  




</body>
 

<script>
 

$(function() {
	
// .ready = window.load 와 같은 기능
	$('button.movie-btn').ready(function(){
		let valueNo = $('button.movie-btn,active').val();
		let texts = $('button.movie-btn,active').text();
		$('#choiceMovieNone').css('display','flex');
		$('#choiceMovieList').css('display','none');
	});
	
$('button.movie-btn').click(function(){
	// this는 'button.movie-btn'
	let $movieBtn = $(this);
	console.log($movieBtn);
	
	// .attr() - 속성을 값을 가져올 때 사용된다.(요소의 속성의 값을 쉽게 제어한다.)
	// 'button.movie-btn'요소의 class속성의 값을 가지고 온다.
	let attrNo =  $movieBtn.attr('class');
	
	//$('.place-list p').css('display','none');
	$('#choiceMovieNone').css('display','none');
	$('#choiceMovieList').css('display','flex');
	// - $(셀렉터).html() - 셀렉터 하위에 있는 자식 태그들을 태그나 문자열 따질 것 없이 전부 가지고 온당.
	// - $(셀렉터).text() - 셀렉터 하위에 있는 자식 태그들의 문자열만 출력
	// - $(셀렉터).val() - input 태그에 정의된 value속성의 값을 확인하고자할때 사용
	let valueNo = $movieBtn.val();
	let texts = $movieBtn.text();
	//let $dataAttr = $('div.theater-choies');
	
	
	// if(hasClass) - 클래스 존재 여부 확인
	//if($movieBtn.hasClass('active')){
	//	$('button.movie-btn').removeClass('active');
		
	//}
		

	//아래에 클릭시 이미지가 뜨도록 	
});

$('button.place-btn').click(function(){
	let $dataAttr = $('li.regionDetailPos');
	//remove(); - 요소 자체를 지운다.(태그를 포함한 전체 제거)
	// empty(); - 요소 자체가 아니라 요소의 내용을 지운다. 
	$dataAttr.empty();
	//let palcelist = $(this).attr('place-btn');
	
	$.ajax({
		url: "../rest/theater", // 어디로 갈꺼니?
		// async:false - 동기식 요청을 보낸 후 응답결과를 받아야지만 다음 동작이 이루어지는 방식 // 동기식 - 보리밥집
				async:false, 
		success : function(theaterlist) {  // 갔다온 다음 결과값
			let outp ='';
			console.log("가나다");
			console.log(theaterlist);
			for(const list in theaterlist) {
			//outp +="<button class='palce-btn'><span>"+mbplace[k]+"</span></button>"			
			//$('#regionDetailPos').append(theaterlist[list]);
			console.log(theaterlist[list].mbplace);
			outp ="<button class='palce-btn'><span class='txt'>"+theaterlist[list].mbplace+"</span></button>";
			$('#cinemu').append(theaterlist[list].mbplace);
			
			}
			
		},
		error:function(){
			alert('error');
		},
		
	});
	
})
});
			
	
</script>
</html>
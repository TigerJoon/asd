<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>HTA CINEMA</title>
    <link rel="stylesheet" href="/resources/css/ticketingList.css">
    <link rel="stylesheet" href="/resources/css/navbar.css" />
    <link rel="stylesheet" href="/resources/css/common.css" />
  	<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <div class="container" style="width: 1250px;">
        <div class="row mb-3">
            <h2>빠른예매</h2>
            <div  class="left-container">
              <div class="box">
                    <div class="text-title">
                        <h3>관람인원선택</h3>
                        <button class="reset-button" type="button"><img src="/resources/images/btn/resetbutton.png" class="btn-reset-icon"/>초기화</button>
                    </div>
                </div>
            </div>
            <div class="check-people-box">
              <div class="check-people">
                    <p class="txt">성인</p>
                    <div class="count">
                        <button type="button" class="down" title="성인 좌석 선택 감소">-</button>
                        <div class="number">
                            <button type="button" class="now" title="성인 현재 좌석 선택 수">0</button>
                        </div>
                        <button type="button" class="up" title="성인 좌석 선택 증가">+</button>
                    </div>
                </div>
                <div class="check-people">
                    <p class="txt">청소년</p>
                    <div class="count">
                        <button type="button" class="down" title="청소년 좌석 선택 감소">-</button>
                        <div class="number">
                            <button type="button" class="now" title="청소년 현재 좌석 선택 수">0</button>
                        </div>
                        <button type="button" class="up" title="청소년 좌석 선택 증가">+</button>
                    </div>
                </div>
                <div class="check-people">
                    <p class="txt">우대</p>
                    <div class="count">
                        <button type="button" class="down" title="우대 좌석 선택 감소">-</button>
                        <div class="number">
                            <button type="button" class="now" title="우대 현재 좌석 선택 수">0</button>
                        </div>
                        <button type="button" class="up" title="우대 좌석 선택 증가">+</button>
                    </div>
                </div>
            </div>
            <div class="seat-view">
                <div class="seat">
                    <img src="/resources/images/btn/img-theater-screen.png" alt="screen-seat" class="screen-seat">
                    <div class="seat-wrapper">
                        <div class="toggle-seat" id="seat-layout">
                            <form action="">
                                <section>
                                    <div id="show-seat">
                                      
                                    </div>
                                </section>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <div class="right-container">
            <div class="movie-container">
                <div class="title-area">
                    <span class="movie-grade" data-ratiedNo="${ratied.ratingNo }"><img src="${ratied.ratingImageURL }" alt="12age" class="img-age"/></span>
                    <div class="ptag" data-row="${realySeat.totalSeatRow }" data-column="${realySeat.totalSeatColumn }">
                        <p class="tit">${ratied.movieName }</p>
                        <p class="cate">${showType.name }</p>
                    </div>
                </div>
                <div class="movie-detail-area">
                    <p class="place">${realySeat.name }</p>
                    <p class="date"><span><fmt:parseDate value="${ticketingDay }" var="dateString" pattern="yyyy-MM-dd"/>
                    <fmt:formatDate value="${dateString }" var="date2" type="DATE" pattern="yyyy-MM-dd" />
                    	${date2 }
                    </span>
                        <em>${day.name }</em>
                    </p>
                    <div class="other-time">
                        <button type="button" class="now-time">
                        	<span>영화 시작 시간<fmt:formatDate value="${screens.showScheduleStartTime }" var="dataClock" pattern="HH:mm"/>${dataClock }</span>
                        </button>
                        <ul>
                        	<li class="show" style="visibility:visible;">
                            	<!--버튼클릭시 li의 visibility :visible 으로 설정 -->
                          	</li>
                        </ul>
                    </div>
                </div>
                <div class="img-card">
                    <img src="/resources/images/movie/no-graph03.jpg" alt="no-picture" id="img-movie">
                </div>
                <div>
                    <div class="kind-seat">
                                <div class="seat-condition-choise" title="선택한 좌석"><em class="seat-em">선택</em></div>
                                <div class="seat-condition-finish" title="예매완료"><em class="seat-em">예매완료</em></div>
                                <div class="seat-condition-common" title="일반"><em class="seat-em">일반</em></div>
                                <div class="seat-condition-disabled" title="장애인석"><em class="seat-em">장애인석</em></div>
                        <!--선택하면 selected class들어감 -->
                    </div>
                    <div class="choise-seat">
                        <p class="tit-seat">선택좌석</p>
                        <!-- 좌석선택시 class가 choice로 바뀌고 title과 내용이 변경-->
                        <div class="wrap">
                            <div class="seat-position" title="구매가능좌석">-</div>
                            <div class="seat-position" title="구매가능좌석">-</div>
                            <div class="seat-position" title="구매가능좌석">-</div>
                            <div class="seat-position" title="구매가능좌석">-</div>
                            <div class="seat-position" title="구매가능좌석">-</div>
                            <div class="seat-position" title="구매가능좌석">-</div>
                        </div>
                    </div>
                </div>
                <div class="pay-area">
                    <p class="count">
                        <!--좌석선택시 span과 em의 내용이 바뀐다.-->
                        <!--<span></span> <em></em> -->
                        
                    </p>
                    <div class="pay">
                        <p class="tit-pay">최종결제금액</p>
                    </div>   
                    <div class="money">
                        <!--변경시 em태그의 숫자가 변경된다. -->
                        <em>0</em>
                        <span>원</span>
                    </div>
                </div>
                <div class="btn-group">
                    <a href="javascript:history.back();" class="button" id="pagePrevious" title="이전">이전</a>
                      <c:choose>
	                    <c:when test="${empty LOGIN_USER }">
	                    	<a href="#" class="button" id="pageNext-1" data-bs-toggle="modal" data-bs-target="#modal-login-form">
	                    	다음</a>
	                     </c:when>
	                     <c:otherwise>
	                     	<a href="/ticketing/ticketingPay" class="button" id="pageNext" title="다음">다음</a>
	                      </c:otherwise>
                    </c:choose> 
                </div>
            </div>
        </div>
    </div>
    <form action="/ticketing/ticketingPay" method="post" id="form-seat-ticket">
   	<!-- 티켓번호, 관람자 구분번호(이름에 맞게 name정하기), 인원수, 예매한 좌석번호, 상영요일, 상영시작시간, 관람료 나중에 티켓번호도 넣을것 insert하고 -->
   		<input type="hidden" name="ticketingPay" value="" />
   		<input type="hidden" name="showNo" value="${showType.no }" />
      	<input type="hidden" name="adult" value="" />
      	<input type="hidden" name="adultCount" value="" />
      	<input type="hidden" name="baby" value="" />
      	<input type="hidden" name="babyCount" value="" />
      	<input type="hidden" name="oldCount" value="" />
      	<input type="hidden" name="old" value="" />
      	<input type="hidden" name="seats[]" value="" />
      	<input type="hidden" name="showScheDuleNo" value="${screens.showScheDuleNo }" />
      	<input type="hidden" name="screenNo" value="${screens.screenNo }" />
      	<input type="hidden" name="movieNo" value="${screens.movieNo }" />
      	<input type="hidden" name="showTypeNo" value="${screens.showTypeNo }" />
      	<input type="hidden" name="showScheduleStartTime" value="${dataClock }" />
      	<input type="hidden" name="theaterNo" value="${screens.theaterNo }" />
      	<input type="hidden" name="showScheDuleNo" value="${screens.showScheDuleNo }" />
      	<input type="hidden" name="date" value="${date2 }" />
      	<input type="hidden" name="dayName" value="${day.name }" />
      	<input type="hidden" name="time" value="${dataClock }" />
    </form>
	<div id="document-modal">
        <div class="document-modal">
            <div class="document-modal-header">
                <h5 class="tit">알림</h5>
            </div>
            <div class="document-modal-body">
                <p class="dot-list"></p>
                <button type="button" class="btn-document-modal">확인</button>
            </div>
        </div>
     </div>
</div>
<c:if test="${empty LOGIN_USER }">
</c:if>
<script type="text/javascript">
        $(function(){
        		
			let apiKey ="935cc74a36fab18e33ea802df5ebd3f4";
			let imageUrl = "https://image.tmdb.org/t/p/w500/";
			let movieId = '${screens.movieNo }';
			let detailUrl = "https://api.themoviedb.org/3/movie/" + movieId;
				$.ajax({
					type:'get',
					url: detailUrl,
					data: {
						"api_key":"935cc74a36fab18e33ea802df5ebd3f4",
						language: "ko-KR",
						region: "KR"
					},
					dataType: 'json',
					success:function(movie){
						let imagePath = imageUrl + movie.poster_path;
						$('#img-movie').attr('src',imagePath);
					}
					})

        	
            $("#show-seat").append(function(){    
            	let noSeat = new Array();//빈 좌석
            	<c:forEach var="emptys" items="${emptySeat }">
            		noSeat.push("${emptys.no}")
                </c:forEach>
            	let disabled = new Array();//예약마감좌석
            	<c:forEach var="noEamptys" items="${noEamptySeat }">
            		disabled.push("${noEamptys.no}");
            	</c:forEach>
	            let seatrow = $('div.ptag').attr('data-row');	//열의좌석 꺼내왔을 때 변수에 저장seatcolumn
	            let seatcolumn = $('div.ptag').attr('data-column');		//행의좌석 꺼내왔을 때 변수에 저장seatrow
	           
	            let max = new Map();
          		max.set("A",0);
          		max.set("B",1);
          		max.set("C",2);
          		max.set("D",3);
          		max.set("E",4);
          		max.set("F",5);
          		max.set("G",6);
          		max.set("H",7);
          		max.set("I",8);
          		max.set("J",9);
          		max.set("K",10);
          		max.set("L",11);
          		max.set("M",12);
          		max.set("N",13);
          		max.set("O",14);
          		max.set("P",15);
          		max.set("Q",16);
          		max.set("R",17);
          		max.set("S",18);
          		max.set("T",19);
          		max.set("U",20);
          		max.set("V",21);
          		max.set("W",22);
          		max.set("X",23);
          		max.set("Y",24);
          		max.set("Z",25);
          		
		   let count = 0;
		   let totalList = [];
		   const englishs =['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
   		   	            	
		   let resultNoSeatColumn = [];		//빈좌석 행에 대한 배열 초기화
           let noseatRow = [];		//빈좌석 열에 대한 배열 초기화
			   for(let i = 0; i < noSeat.length; i++) {
	            	resultNoSeatColumn.push(noSeat[i].slice(0,1)); //빈좌석 행을 나눔
	            	noseatRow.push(parseInt(noSeat[i].slice(1))); //빈좌석 행을 나눈것을 형변환
	            }
				let resultDisabledColumn = [];	//장애인석 행에 대한 배열 초기화 나중에 예약완료석으로 변경예정
		        let disabledRow = [];		//장애인석 열에 대한 배열 초기화 나중에 예약완료석으로 변경예정
			 	for(let i = 0; i < disabled.length;i++){
			 		resultDisabledColumn.push(disabled[i].slice(0,1)); //장애인석 행을 나눔
			 		disabledRow.push(parseInt(disabled[i].slice(1)));//숫자로 변환하는 메소드
	           	}
		        
		     let disabledColumn = [];
			for(let i = 0; i<resultDisabledColumn.length;i++){
				disabledColumn.push(max.get(resultDisabledColumn[i]));
			}		
			 let noseatColumn = [];
			for(let i = 0; i<resultNoSeatColumn.length;i++){
				noseatColumn.push(max.get(resultNoSeatColumn[i]));
			}	
			
			let resultRow = max.get(seatrow); 
	        //이제 화면에 뿌릴예정
	        let lefts = 106;
            let tops = 52;
            let input = "";
            let div = "";
            let $el = $("div#show-seat");
	       	for(let i = 0; i<=resultRow; i++) {
	       		div = document.createElement('div');
	       		$el.append(div);
	       		for(let j = 0; j<=seatcolumn; j++) {
	       			 input = document.createElement('input');
		   	       	 mapping(input,i,j);
		   	      	 input.type = "button";
		   	      	 input.setAttribute('class','seat-condition-common');
	                 $(input).css('position','absolute');
	                 $(input).css('width','22px');
	                 $(input).css('heigh','18px');
	                 $(input).css('top',tops+'px');
	                 $(input).css('left',lefts+'px');
	                 $(input).css('margin','2px');
	                 //input.setAttribute('onclick','ticketing()');
	                  lefts += 20;
	                  $el.append(input);
	       			}
	       	 	 tops += 20;
              	 lefts = 106; 
	       		}
	       	lefts = 106;
            tops = 52;
            	for(let i = 0; i<disabledRow.length; i++) {
            		let addTop = tops +(disabledColumn[i]*20);
    				let addLefts = lefts +(disabledRow[i]*20);
    				 input = document.createElement('input');
           			 mapping(input,disabledColumn[i],disabledRow[i]);
           			input.type = "button";
           			input.setAttribute('class','seat-condition-finish');
                     $(input).css('position','absolute');
                     $(input).css('width','22px');
                     $(input).css('heigh','18px');
                     $(input).css('disabled','disabled');
                     $(input).css('top',addTop+'px');
                     $(input).css('left',addLefts+'px');
                     $(input).css('margin','2px');
                     //input.setAttribute('onclick','ticketing()');
                     $el.append(input);
	                 addTop = 0;
	                 addLefts = 0; 
            }
            lefts = 106;
            tops = 52;
            let empty = "";
            for(let i = 0; i<noseatColumn.length; i++){
					 empty =(resultNoSeatColumn[i]+noseatRow[i]);
					 let totalEmpty = $('input[value='+empty+']').remove();
	                 addTop = 0;
	                 addLefts = 0; 
            	}//글자 폰트 수정하기
        })
        })
       $('button.up').click(function(){ //증가버튼 클릭시 
    	   let who = $(this).attr("title");
    	   let now1 = $('button.now:eq(0)').text();
    	   let now2 = $('button.now:eq(1)').text();
    	   let now3 = $('button.now:eq(2)').text();
    	   let totalnow = parseInt(now1) + parseInt(now2) + parseInt(now3);
    	   if(totalnow == '4'){
    		 $('p.dot-list').text('관람인원이 많습니다.코로나로 영화관은 4인까지 가능합니다.');
    		 $('#document-modal').css('display','flex');
       			return;
       		}
    	   if(who === '성인 좌석 선택 증가'){
    		    let plusbtn = parseInt(now1)+1;
    		    $('button.up:eq(0)').prev().find('button').text(plusbtn);
	           	let textAdult = $('p.count span').text();
	           	if(textAdult.match("성인") == "성인") {
	           		$('em.adult_class').text(plusbtn);
	           	} else {
	           	 	$('p.count').append("<span class='adult_class'>성인</span><em class='adult_class'>"+plusbtn+"</em>");
	           	}
	           	let moneyAdult = Number($('.money em').text())+13000;
	           	$('.money em').text(moneyAdult);
	           	$('input[name=adult]').val('성인');
	           	$('input[name=adultCount]').val(plusbtn);
	           	let ticketPay = Number($('input[name=ticketingPay]').val()) +13000;
	           	$('input[name=ticketingPay]').val(ticketPay);
    	   } else if(who === '청소년 좌석 선택 증가'){
    		   let ratedNo =  $('span.movie-grade').attr('data-ratiedNo');
    		   if(ratedNo=='5'){
    			  	 $('p.dot-list').text('청소년 관람불가입니다.');
    	    		 $('#document-modal').css('display','flex');
    			   return;
    		   }
    		   let plusbtn1 = parseInt(now2)+1;
   		    	$('button.up:eq(1)').prev().find('button').text(plusbtn1);
	           	let textAdult = $('p.count span').text();
	           	if(textAdult.match("청소년") == "청소년") {
	           		$('em.baby_class').text(plusbtn1);
	           	} else {
	           	 	$('p.count').append("<span class='baby_class'>청소년</span><em class='baby_class'>"+plusbtn1+"</em>");
	           	}
	           	let moneyBaby = Number($('.money em').text())+10000;
	           	$('.money em').text(moneyBaby);
	           	$('input[name=baby]').val('청소년');
	           	$('input[name=babyCount]').val(plusbtn1);
	           	let ticketPay1 = Number($('input[name=ticketingPay]').val()) +10000;
	           	$('input[name=ticketingPay]').val(ticketPay1);
    	   } else if(who === '우대 좌석 선택 증가') {
    		   let plusbtn2 = parseInt(now3)+1;
  		    	$('button.up:eq(2)').prev().find('button').text(plusbtn2);
	           	let textAdult = $('p.count span').text();
	           	if(textAdult.match("우대") == "우대") {
	           		$('em.old_class').text(plusbtn2);
	           	} else {
	           	 	$('p.count').append("<span class='old_class'>우대</span><em class='old_class'>"+plusbtn2+"</em>");
	           	 	let oldDocument = '우대요금으로 예매하신 고객님께서는 상영관입장시 증빙서류를 제시해 주시기 바랍니다.(미 지참시 입장제한)';
	           	 	$('p.dot-list').text(oldDocument);
	           	 	$('#document-modal').css('display','flex');
	           	}
	        	let moneyOld = Number($('.money em').text())+5000;
	           	$('.money em').text(moneyOld);
	           	$('input[name=old]').val('우대');
	           	$('input[name=oldCount]').val(plusbtn2);
	        	let ticketPay2 = Number($('input[name=ticketingPay]').val()) +5000;
	           	$('input[name=ticketingPay]').val(ticketPay2);
    	   }
       })
       $('.btn-document-modal').click(function(){
    	   $('#document-modal').css('display','none');
       })
    	   $('button.down').click(function(){	//감소버튼 클릭시
    		   $('#shadow-modal').css('display','none');
        	   let who = $(this).attr("title");
        	   let now1 = $('button.now:eq(0)').text();
        	   let now2 = $('button.now:eq(1)').text();
        	   let now3 = $('button.now:eq(2)').text();
        	   let totalnow = parseInt(now1) + parseInt(now2) + parseInt(now3);
        	   if(totalnow == '0'){
        		   $('p.dot-list').text('관람인원을 선택하세요.');
        		   $('#document-modal').css('display','flex');
              		return;
        	   }
        	  	if(who === '성인 좌석 선택 감소'){
        		   if(now1 == '0') {
        			   $('p.dot-list').text('관람인원을 선택하세요.');
            		   $('#document-modal').css('display','flex');
                 		return;
           	   		}
        		   let textAdult = $('p.count span').text();
        		   if(textAdult.match("성인") == "성인") {
        			  let minusbtn = parseInt(now1)-1;
        			  if(minusbtn==0){
        				  $('span.adult_class').remove();
	 					  $('em.adult_class').remove();
	 					  $('input[name=adultCount]').val(0);
	 					  let ticketPay = Number($('input[name=ticketingPay]').val())-13000;
    	    	          $('input[name=ticketingPay]').val(ticketPay);
    	    	          $('div.seat-all').text('-');
    	    	    	  $('div.seat-all').attr('class','seat-position');
    	    	    	  $('input.seat-condition-choise').attr('class','seat-condition-common');
    	    	    	   totalSeat = 0;
        			  }	 						
        				  $('em.adult_class').text(minusbtn);
    		   	          $('button.down:eq(0)').next().find('button').text(minusbtn);
    				      let moneyAdult = Number($('.money em').text())-13000;
    	    	          $('.money em').text(moneyAdult);
    	    	          $('input[name=adult]').val('성인');
    	    	          $('input[name=adultCount]').val(minusbtn);
    	    	          let ticketPay = Number($('input[name=ticketingPay]').val())-13000;
    	    	          $('input[name=ticketingPay]').val(ticketPay);
    	    	          $('div.seat-all').text('-');
    	    	    	   $('div.seat-all').attr('class','seat-position');
    	    	    	   $('input.seat-condition-choise').attr('class','seat-condition-common');
    	    	    	   totalSeat = 0;
        	} }
        		   else if(who === '청소년 좌석 선택 감소'){
        		   	if(now2 == '0'){
        		   	 	$('p.dot-list').text('관람인원을 선택하세요.');
          		   		$('#document-modal').css('display','flex');
                 		return;
           	  		 }
        		    let textAdult = $('p.count span').text();
         		   if(textAdult.match("청소년") == "청소년") {
         			  let minusbtn = parseInt(now2)-1;
         			  if(minusbtn==0){
         				  $('span.baby_class').remove();
 	 					  $('em.baby_class').remove();
 	 					  $('input[name=babyCount]').val(0);
 	 					let ticketPay = Number($('input[name=ticketingPay]').val())-10000;
  	    	          $('input[name=ticketingPay]').val(ticketPay);
  	    	       	  $('div.seat-all').text('-');
		  	       	  $('div.seat-all').attr('class','seat-position');
		  	          $('input.seat-condition-choise').attr('class','seat-condition-common');
		  	       	   totalSeat = 0;
         			  }	 						
         				  $('em.baby_class').text(minusbtn);
     		   	          $('button.down:eq(1)').next().find('button').text(minusbtn);
     				      let moneyAdult = Number($('.money em').text())-10000;
     	    	          $('.money em').text(moneyAdult);
     	    	          $('input[name=baby-people]').val('청소년');
     	    	          $('input[name=babyCount]').val(minusbtn);
     	    	          let ticketPay = Number($('input[name=ticketingPay]').val())-10000;
     	    	          $('input[name=ticketingPay]').val(ticketPay);
     	    	          $('div.seat-all').text('-');
     	    	    	  $('div.seat-all').attr('class','seat-position');
     	    	    	  $('input.seat-condition-choise').attr('class','seat-condition-common');
     	    	    	  totalSeat = 0;
         	} 
        	   } else if(who === '우대 좌석 선택 감소') { 
        		   if(now3 == '0'){
        			   $('p.dot-list').text('관람인원을 선택하세요.');
            		   $('#document-modal').css('display','flex');
                		return;
          	  		 }
        		   let textAdult = $('p.count span').text();
         		   if(textAdult.match("우대") == "우대") {
         			  let minusbtn = parseInt(now3)-1;
         			  if(minusbtn==0){
         				  $('span.old_class').remove();
 	 					  $('em.old_class').remove();
 	 					  $('input[name=oldCount]').val(0);
 	 					let ticketPay = Number($('input[name=ticketingPay]').val())-5000;
  	    	            $('input[name=ticketingPay]').val(ticketPay);
  	    	       		$('div.seat-all').text('-');
		  	       	    $('div.seat-all').attr('class','seat-position');
		  	       	    $('input.seat-condition-choise').attr('class','seat-condition-common');
		  	       	    totalSeat = 0;
         			  }	 						
         				  $('em.old_class').text(minusbtn);
     		   	          $('button.down:eq(2)').next().find('button').text(minusbtn);
     				      let moneyAdult = Number($('.money em').text())-5000;
     	    	          $('.money em').text(moneyAdult);
     	    	          $('input[name=old]').val('우대');
     	    	          $('input[name=oldCount]').val(minusbtn);
     	    	          let ticketPay = Number($('input[name=ticketingPay]').val())-5000;
     	    	          $('input[name=ticketingPay]').val(ticketPay);
     	    	          $('div.seat-all').text('-');
     	    	    	  $('div.seat-all').attr('class','seat-position');
     	    	    	  $('input.seat-condition-choise').attr('class','seat-condition-common');
     	    	    	  totalSeat = 0;
         	} 
        	   }
       })
       $('button.reset-button').click(function(){//초기화버튼
    	   let now1 = $('button.now:eq(0)').text();
    	   let now2 = $('button.now:eq(1)').text();
    	   let now3 = $('button.now:eq(2)').text();
    	   let totalnow = parseInt(now1) + parseInt(now2) + parseInt(now3);
    	   if(totalnow == '0'){
    		   $('p.dot-list').text('관람인원을 선택하세요.');
    		   $('#document-modal').css('display','flex');
          		return;
    	   }
    	   $('button.down:eq(0)').next().find('button').text(0);
    	   $('button.down:eq(1)').next().find('button').text(0);
    	   $('button.down:eq(2)').next().find('button').text(0);
    	   $('.money em').text(0);
    	   $('span.old_class').remove();
		   $('em.old_class').remove();
		   $('span.baby_class').remove();
		   $('em.baby_class').remove();
		   $('span.adult_class').remove();
		   $('em.adult_class').remove();
		   $('input[name=oldCount]').val(0);
	       $('input[name=ticketingPay]').val(0);
	       $('input[name=babyCount]').val(0);
	       $('input[name=ticketingPay]').val(0);
	       $('input[name=adultCount]').val(0);
	       $('input[name=ticketingPay]').val(0);
	       $('input.seat-condition-choise').attr('class','seat-condition-common');
    	   $('div.seat-all').text('-');
    	   $('div.seat-all').attr('class','seat-position');
    	   totalSeat = 0;
       })
       
       let totalSeat = 0;
       
       $('div#show-seat').on("click","input[type=button].seat-condition-common",function(){
    	   let $seat = $(this);
    	   let now1 = $('button.now:eq(0)').text();
     	   let now2 = $('button.now:eq(1)').text();
     	   let now3 = $('button.now:eq(2)').text();
     	   let totalnow = parseInt(now1) + parseInt(now2) + parseInt(now3);
    	   let titleSeat = $('.seat-position').attr('title');
    	   if(totalSeat==totalnow){
    		   $('p.dot-list').text('관람인원을 확인하세요.');
    		   $('#document-modal').css('display','flex');
    		   return;
    	   }
    	   if(titleSeat.match('구매가능')=="구매가능"){
      			$('div.seat-position:eq(0)').attr("선택완료좌석");
      			$('div.seat-position:eq(0)').text($seat.val());
      			$('div.seat-position:eq(0)').attr('class','seat-all');
      			$seat.attr('class','seat-condition-choise');
      			$seat.css('color','gray');
      			$('input[name=seat-No'+totalSeat+']').val($seat.val());
      			totalSeat++;
    	   }
       })
       $('div#show-seat').on("click","input[type=button].seat-condition-choise",function(){
    	   let $choiesSeat = $(this);
    	   let valueString = $choiesSeat.val();
    	   $choiesSeat.attr('class','seat-condition-common');
		   $choiesSeat.css('color','white');
		   $('div.seat-all:contains('+valueString+')').attr("구매가능좌석");
		   $('div.seat-all:contains('+valueString+')').attr('class','seat-position').text('-');
		   $('div.seat-all:contains('+valueString+')').text('-');
		   $('input[name=seat-No'+totalSeat+']').val("");
		   totalSeat--;
       })
         function countCoulumn(x, y){//화면에 뿌릴 전체 값 메소드
        	let countcolumns = [];
        	for(let i = 0; i < x.length; i++) {
        		countcolumns.push(y.findIndex((e) => e === x[i])); 
            }
        	return countcolumns;
         }

         function mapping(input,i,j) { //변환하는 메소드
        	 if (i === 0) {
        		 input.value = "A" + j;
             } else if (i === 1) {
            	 input.value = "B" + j;
             } else if (i === 2) {
            	 input.value = "C" + j;
             } else if (i === 3) {
            	 input.value = "D" + j;
             } else if (i === 4) {
            	 input.value = "E" + j;
             } else if (i === 5) {
            	 input.value = "F" + j;
             } else if (i === 6) {
            	 input.value = "G" + j;
             } else if (i === 7) {
            	 input.value = "H" + j;
             } else if (i === 8) {
            	 input.value = "I" + j;
             } else if (i === 9) {
            	 input.value = "J" + j;
             } else if (i === 10) {
            	 input.value = "K" + j;
             } else if (i === 11) {
            	 input.value = "L" + j;
             } else if (i === 12) {
            	 input.value = "M" + j;
             } else if (i === 13) {
            	 input.value = "N" + j;
             } else if (i === 14) {
            	 input.value = "O" + j;
             } else if (i === 15) {
            	 input.value = "P" + j;
             } else if (i === 16) {
            	 input.value = "Q" + j;
             } else if (i === 17) {
            	 input.value = "R" + j;
             } else if (i === 18) {
            	 input.value = "S" + j;
             } else if (i === 19) {
            	 input.value = "T" + j;
             } else if (i === 20) {
            	 input.value = "U" + j;
             } else if (i === 21) {
            	 input.value = "V" + j;
             } else if (i === 22) {
            	 input.value = "W" + j;
             } else if (i === 23) {
            	 input.value = "X" + j;
             } else if (i === 24) {
            	 input.value = "Y" + j;
             } else if (i === 25) {
            	 input.value = "Z" + j;
             } 
             
         $('a#pageNext').on('click',function(e){
        	 e.preventDefault();
        	 let pay = $('div.money em').text();
        	 let ticketingPay = $('input[name=ticketingPay]').val(pay);
        	 let showNo = $('input[name="showNo"]').val();
        	 let adult = $('input[name=adult]').val();
        	 let adultCount = $('input[name=adultCount]').val();
        	 let baby = $('input[name=baby]').val();
        	 let babyCount = $('input[name=babyCount]').val();
        	 let old = $('input[name=old]').val();
        	 let oldCount = $('input[name=oldCount]').val();
        	 let array = [];
        	 array.push($('div.seat-all:eq(0)').text());
        	 array.push($('div.seat-all:eq(1)').text());
        	 array.push($('div.seat-all:eq(2)').text());
        	 array.push($('div.seat-all:eq(3)').text());
        	 let seatArray = $('input[name="seats[]"]').val(array);
        	 let count = $('div.seat-all').length;
        	 let now1 = $('button.now:eq(0)').text();
	      	 let now2 = $('button.now:eq(1)').text();
	      	 let now3 = $('button.now:eq(2)').text();
	      	 let totalnow = parseInt(now1) + parseInt(now2) + parseInt(now3);
        	 if(count === totalnow){
 				if(totalnow == '0'){
 				$('p.dot-list').text('좌석을 확인해주세요');
 		    	$('#document-modal').css('display','flex');
 		    	return; 
        		 }
        		 $('#form-seat-ticket').submit();
        	 } else {
        		 $('p.dot-list').text('좌석을 확인해주세요');
	    		 $('#document-modal').css('display','flex');
	    		 return;
        	 }
        	 
         })
         
        
         }
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<main>
	<!-- 메뉴겠지? -->
	      <nav class="sticky-top">
        <ul>
          <li><a ></a></li>
            <li><a href="${pageContext.request.contextPath}/main">Cinemu</a></li>
            <li><a href="#">극장</a>
            <!-- First Tier Drop Down -->
             <ul>
                <li><a href="#target2" class="scroll">오시는 길</a></li>
                <li><a href="#target1" class="scroll">상영관 소개</a></li>
               
            </ul>    
            </li>
  <li><a href="#">영화</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li><a href="${pageContext.request.contextPath}/movies/movielist">전체영화</a></li>
                <li><a href="#">상영 예정작</a></li>
            
            </ul>        
            </li>
            <li><a href="#">예매</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li><a href="#">상영시간표</a></li>
                <li><a href="${pageContext.request.contextPath}/ticket/movieName">예매</a></li>
            
            </ul>        
            </li>
            <li><a href="#">스토어</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li><a href="${pageContext.request.contextPath}/snack/snackUpform">푸드</a></li>
                <li><a href="#">장바구니</a></li>
                
            </ul>        
            </li>
                    <li><a href="#">이벤트</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li><a href="${pageContext.request.contextPath}/vip">멤버십</a></li>
                <li><a href="#">혜택 / 할인</a></li>
                <li><a href="#">고객참여이벤트</a></li>
            </ul>
              
             <li><a href="#">임시 메뉴</a>
            <!-- First Tier Drop Down -->
            <ul>
                <li><a href="${pageContext.request.contextPath}/chat/chatbot">LiveChat</a></li>
                <li><a href="${pageContext.request.contextPath}/theater/mapk">Map</a></li>
                <li><a href="${pageContext.request.contextPath}/mail/emailForm">Email</a></li>
            
            </ul>        
            </li>
                 <li>
            		<form action="${pageContext.request.contextPath}/movies/searchMov"
              			method="post">
               			<input type="text" name="searchValue">
               			<button type="submit">Search</button>
           			 </form>
         		</li>
            </li>
        </ul>
    </nav>

	</main>
</html>
<script>
$(".scroll").click(function(event){            
 
   event.preventDefault();
   $('html,body').animate({scrollTop:$(this.hash).offset().top}, 100);
});
</script>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>
.mypage {
   background-color: #E6E6E6;
   position: relative;
   height: auto;
   padding: 30px;
   text-align: center;
   border-radius: 1em;
   width: 800px;
   margin: auto;
}

.mybook1 {
   border: solid;
   border-width: 1px;
   border-color: #3B3939;
   width: 450px;
   height: auto;
   width: 800px;
   margin-top: 50px;
   margin-left: auto;
   margin-right: auto;
   border-radius: 0.5em;
}

.mybook2 {
   border: solid;
   border-width: 1px;
   border-color: #3B3939;
   width: 450px;
   height: auto;
   margin-top: 40px;
   width: 800px;
   margin-left: auto;
   margin-right: auto;
   border-radius: 0.5em;
}

table {
   margin-left: auto;
   margin-right: auto;
}

#btn {
   margin: auto;
}
</style>
</head>
   
<body>
<div class="mypage" style="margin-top: 50px;">

<span style="padding-left: 550px;">
   <a href="delmem?lid=${sessionScope.sessionID}">
   <button type="button"
         class="btn btn-danger">회원탈퇴</button></a></span>
<span style="padding-left: 550px;">
   <a href="${pageContext.request.contextPath}/member/upform"><button type="button"
         class="btn btn-dark">회원정보 수정</button></a></span>
   <div >   
 <button id="btn" type="button" 
      style="position: relative; margin-right: 450px; border: hidden;">
      <img id="imgx" src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
         style="width: 150px; height: 150px;">
   </button>
<!-- 사진 수정 영역 -->
      <form style="width:300px;" method="post"
         action="${pageContext.request.contextPath}/member/photoup"
         enctype="multipart/form-data">
        
         <input   type="submit" value="저장" id="btn1" > <input
            type="hidden" name="mgrno" value=1> <input type="hidden"
            name="lid" value="${v.lid }"> <input type="hidden"
            name="lpwd" value="${v.lpwd }"> <input type="hidden"
            name="lphone" value="${v.lphone }"> <input type="hidden"
            name="laddr" value="${v.laddr }"> <input type="hidden"
            name="lemail" value="${v.lemail }">


                  <div>
               <input  type="file" name="mfile" id="mfile">
            </div>


      </form>
      </div>   
<!-- 사진 수정 영역 끝-->
   
   <div style=" width:300px; position:relative; left:400px; bottom: 100px;">
      <p style="font-size: 25px; font-weight: bold; padding-top: 15px;">${v.lid}님의
         마이페이지입니다.</p>
      <p style="font-weight: bold;">회원 아이디 : ${v.lid }</p>
      <p style="font-weight: bold;">회원 이름 : ${v.lname }</p>
      <p style="font-weight: bold;">회원 연락처 : ${v.lphone }</p>
      <p style="font-weight: bold;">회원 성별 : ${v.lgender }</p>
      <p style="font-weight: bold;">회원 주소 : ${v.laddr }</p>
      <p style="font-weight: bold;">회원 메일 : ${v.lemail }</p>
   </div>
</div>



   <table class="table table-hover"
      style="margin-top: 50px; width: 800px; text-align: center; table-layout: fixed;">
      <tr>
         <th colspan="6" style="text-align: center;">영화 예매 내역</th>
      </tr>

      <tr>
         <td>번호</td>
         <td>이미지</td>
         <td>영화 제목</td>
         <td>예매 날짜</td>
         <td>영화 일자</td>
         <td>영화 시간</td>
      </tr>
      
      <c:forEach var="e" items="${muvo}" varStatus="status">
      <c:forEach var="f" items="${e.moviebuy}"  >
      <tr>
         <td>${status.count }</td>
         

         <td><img src="${pageContext.request.contextPath}/resources/img/${vo.mimg }.jpg"
            style="width: 100px; height: 100px;"></td>
         <td>${e.mname }</td>
         <td>${e.mstartday }</td>
         
           <td>${f.mbdate }</td>
         <td>${f.mstarttime }</td>
      </tr>
         </c:forEach>
         </c:forEach>
   </table>

   <table class="table table-hover"
      style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
      <tr>
         <th colspan="6" style="text-align: center;">스낵 예매 내역</th>
      </tr>

      <tr>
         <td>번호</td>
         <td>이미지</td>
         <td>상품 이름</td>
         <td>구매 날짜</td>
         <td>구매 수량</td>
         <td>구매 금액</td>
      </tr>
      <!-- 스낵 예매내역 foreach문 시작 -->
      <c:forEach var="e" items="${snvo }" varStatus="status">
      <c:forEach var="f" items="${e.buy }" >
      <tr>
         <td>${status.count }</td>
         <td><img src="resources/img/${e.popimg }"
            style="width: 100px; height: 100px;"></td>
         <td>${e.popname }</td>
         <td>구매날짜</td>
         <td>구매 수량</td>
         <td>구매 금액</td>
      </tr>
      </c:forEach>
      </c:forEach>
      <!-- 스낵 예매내역 foreach문 끝 -->
   </table>
   
   <table class="table table-hover"
      style="margin-top: 30px; width: 800px; text-align: center; table-layout: fixed">
      <tr>
         <th colspan="4" style="text-align: center;">Q&A 문의 내역</th>
      </tr>

      <tr>
         <td>번호</td>
         <td>문의 제목</td>
         <td>문의 내용</td>
         <td>문의 날짜</td>
      </tr>
      
      <c:forEach var="e" items="${lovo }" varStatus="status">
      <c:forEach var="f" items="${e.qnaboard }">
      <tr>
         <td>${status.count }</td>
         <td>${f.subject }</td>
         <td>${f.content }</td>
         <td>${f.mdate }</td>
      </tr>
      </c:forEach>
      </c:forEach>
      
   </table>
   <table>
   		<tr>
               <td>
                  <p>영화 선호 장르</p>
                  <p id="pie"></p>
               </td>
   		</tr>
   </table>
   </body>
   <script>
   $(function() {
      $('#mfile').hide();
      
      $('#btn').click(function() {
         $('#mfile').click();   
      })
      
      
      
   });
   
   function readURL(input) {
         // input type= "file"의 주소를 가져온다.
         if (input.files && input.files[0]) {
            // 자바스크립트 I/O
            var reader = new FileReader();
            // 감지자
            reader.onload = function(e) {
               $('#imgx').attr('src', e.target.result); // setter 넣겠다.
            }
            reader.readAsDataURL(input.files[0]);
         }
      }
      //jQuery문법
      $(function() {
         //jQuery 선택자
         //대상선택자에서 변화를 감지하는 이벤트: change()
         $('#mfile').change(function() {
            if ($(this).val().length > 0) {
               readURL(this);
            } else {
               console.log("이미지 없다.");
            }
         });
      });
      var uid = '<%=(String)session.getAttribute("sessionID")%>';
      console.log("uid====>"+uid);
      $(function() {   
      $.ajax({
          url : "../likemtype?lid="+uid,
          success : function(jsondata) {
			console.log(jsondata)
             var chart = c3.generate({
                bindto : '#pie',
                size: {
                    width: 800,
                    height: 600
                },
                
                data : {
                   json : [jsondata[1]],
                   keys : {
                      value : Object.keys(jsondata[1]),
                   },
                   type : 'donut',
                   
                   colors: {
                	   '드라마': '#FF9AA2',
                	   '멜로': '#FFD3B5',
                	   '로맨스': '#FDDBC7',
                	   '미스터리': '#D6EFFF',
                	   '판타지': '#A0C4FF',
                	   '다큐멘터리': '#B5EAD7',
                	   '스릴러': '#E2F0CB',
                	   'SF': '#FFF1C1',
                	   '코미디': '#FFB7B2',
                	   '애니메이션': '#F9D5E5',
                	   '액션': '#CAE4DB',
                	   '서사': '#EDB183',
                	   '공포': '#C5DCA0',
                	   '느와르': '#B2B2B2',
                	   '가족': '#E4F9F5',
                	   '범죄': '#FFE5D9',
                	   '서스펜스': '#B7B7A4',
                	   '전쟁': '#F6E7C1',
                	   '모험': '#FFC2E2'
                	   }

            

                },
                donut : {
                    title : uid+'님의 선호영화장르',
                    
                },
             });
             //----------------------
          },
          error : function(e) {
             console.log("실패")
          }
       });
      });
   </script>
</html>
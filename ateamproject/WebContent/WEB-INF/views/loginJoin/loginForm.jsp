<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- Content영역 -->


<form action="${pageContext.request.contextPath}/member/login" method="post">
  <div class="inner-container">
    <div class="box">
      <h1>Login</h1>
      <input type="text" placeholder="ID" name="lid"/>
      <input type="password" placeholder="Password" name="lpwd"/>
      <button>Login</button>
      <p><b>아직 멤버가 아닌가요?</b><span><a style="color:#C60B05;" href="${pageContext.request.contextPath}/member/joinForm"> 지금 멤버되러가기</a> </span></p>
    </div>
  </div>
  </form>
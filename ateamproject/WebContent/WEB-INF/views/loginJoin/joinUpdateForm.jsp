<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Content영역 -->

<div class="container mt-5">
	<div class="row">
		<div id="sub1">
		<form action="${pageContext.request.contextPath}/member/update" method="post">
				
					<!-- 
					액션에서 보낸 request.setAttribute("v", v).  
					쿼리문의 조건을 달기 위해서 hidden으로 조건(where lid=?)값을 보냄
					--> 
					<input type="hidden" name="lid" value="${v.lid }"> 
					
				<fieldset>
					<legend>회원정보수정</legend>
					<br> <br>


					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">${v.lname}</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">비밀번호</label>
						<div class="col-sm-10">
							<input type="password" name="lpwd" id="lpwd"
								placeholder="패스워드를 입력하세요." onchange="test()" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">비밀번호 확인</label>
						<div class="col-sm-10">
							<input type="password" name="repwd" id="repwd"
								placeholder="패스워드를 입력하세요." /> 
							<%--	&nbsp&nbsp <font id="check" size="2"></font> --%>
						</div>
						
					</div>


					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="tel" name="lphone" id="tel"
								placeholder="${v.lphone }" />
						</div>
						
					</div>
						<div class="row mb-3">
						<label class="col-sm-2 col-form-label">주소</label>
						<div class="col-sm-10">
							<input type="text" name="laddr" id="laddr"
								placeholder="${v.laddr }" />
						</div>
					</div>	<div class="row mb-3">
						<label class="col-sm-2 col-form-label">email</label>
						<div class="col-sm-10">
							<input type="email" name="lemail" id="lemail"
								placeholder="${v.lemail }" />
						</div>
					</div>	
			<div class="row mb-3">
                  <label class="col-sm-2 col-form-label">프로필</label>
                  <div class="col-sm-10">
                     <img src="${pageContext.request.contextPath}/resources/imgpwd/${v.limg }"
         				style="width: 150px; height: 150px;">
                  </div>
               </div>

					<div class="row mb-3 ">
						<div class="col-sm-10">
							<input type="submit" value="등록" id="btn1" class="button-l" />

						</div>
						<br> <br> <br>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</div>
<%--
<script type="text/javascript">
	$(function() {

		$('#repwd').keyup(function() {

			if ($('#lpwd').val() != $('#repwd').val()) {
				$('#check').html('비밀번호 일치하지 않음<br><br>');
				$('#check').attr('color', '#C60B05 ');
			} else {
				$('#check').html('비밀번호 일치함<br><br>');
				$('#check').attr('color', '#c9b459 ');
			}
		});
	});
</script> 
--%>


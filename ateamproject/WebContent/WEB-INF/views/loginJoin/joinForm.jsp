<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- Content영역 -->

<html>
<form action="join" method="post">
<input type="hidden" name="mgrno" value=1>
<input type="hidden" name="lmileage" value=1000>
<input type="hidden" name="lclass" value="실버">
<input type="hidden" name="limg" value="bg-photo.png">
<div class="wrapper">
   <div class="title">SIGN UP</div>
   <div class="form">
      <div class="inputfield">
         <label>아이디</label> <input type="text" class="input" name="lid"
            id="lid"> <input type="button" value="중복 확인" id="idBtn"
            class="button-chk" />
         <div id="checkId" style="font-size: 15px; color: red; width: 100px;"></div>
      </div>

      <div class="inputfield">
         <label>이름</label> <input type="text" class="input" name="lname">
      </div>

      <div class="inputfield">
         <label>비밀번호</label> <input type="password" class="input" name="lpwd" id="pw1">
      </div>
      <div class="inputfield">
         <label>비밀번호 재확인</label> <input type="password" class="input" id="pw2"
             placeholder=" 입력하신 비밀번호와 정확히 일치하여야 합니다"> <p id="pwchk"></p>
      </div>
      <div class="inputfield">
         <label>전화번호</label>
         <div class="custom_select">
            <select class="input1" name="lphone">
               <option value="010">010</option>
               <option value="070">070</option>
               <option value="02">02</option>
               <option value="031">031</option>
               <option value="032">032</option>
               <option value="033">033</option>
               <option value="041">041</option>
               <option value="042">042</option>
               <option value="043">043</option>
               <option value="044">044</option>
               <option value="051">051</option>
               <option value="052">052</option>
               <option value="053">053</option>
               <option value="054">054</option>
               <option value="055">055</option>
               <option value="061">061</option>
               <option value="062">062</option>
               <option value="063">063</option>
               <option value="064">064</option>
               <option value="0502">0502</option>
               <option value="0503">0503</option>
               <option value="0504">0504</option>
               <option value="0505">0505</option>
               <option value="0506">0506</option>
               <option value="0507">0507</option>
               <option value="011">011</option>
               <option value="016">016</option>
               <option value="017">017</option>
               <option value="018">018</option>
               <option value="019">019</option>
               <option value="0508">0508</option>
            </select>
         </div>
         <a style="padding: 10px"> ㅡ </a><input type="text" name="lphone" class="input1"><a
            style="padding: 10px"> ㅡ </a><input type="text" name="lphone"
            class="input1">

      </div>
      <div class="inputfield"><label>우편번호</label>
         <input type="text" id="sample6_postcode"  class="input1">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="button-chk" ><br>
      </div>
      
            <div class="inputfield"><label>주소</label>

<input type="text" class="input" id="sample6_address" placeholder="주소" name="laddr"><br>
      </div>

      <div class="inputfield">
         <label>성별</label>
         <div class="custom_select">
            <input type="radio" id="남자" name="lgender" value="남자"> <a for="male">남자</a>
               <input type="radio" id="여자" name="lgender"
               value="여자"> <a for="male">여자</a>
         </div>
      </div>

      <div class="inputfield">
         <label>생년월일</label> <input type="text" class="input2"  name="ljumin" placeholder="ex) 20220101">
      </div>
      <div class="inputfield">
         <label>이메일</label> <input type="text" class="input2" name="lemail"><a
            style="padding: 10px" name="lemail"> @ </a>
         <div class="custom_select">
            <select class="input2" name="lemail">
               <option value="naver">naver.com</option>
               <option value="gmail">gmail.com</option>
               <option value="daum">daum.net</option>
               <option value="nate">nate.com</option>
               <option value="other">other</option>
            </select>
         </div>

      </div>

      <div class="inputfield terms">
         <label class="check"> <input type="checkbox"> <span
            class="checkmark"></span>
         </label>
         <p>회원 정보를 모두 확인하였습니다.</p>
      </div>
      <div class="inputfield">
         <input type="submit" value="Register" class="btn">
      </div>
   </div>
</div>
</form>


</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>

$(function() {
   // id가 idBtn인 태그를 클릭했을 때 저장!
   
   $('#pw2')
   .focusout(
         function() {

            //alert("Test");
            // 자바스크립트 변수 idv에 입력값을 저장
            var pw1 = $('#pw1').val();
            var pw2 = $('#pw2').val();
            console.log("pw1 : "+pw1);
            console.log("pw2 : "+pw2);
      
            if (pw1 === pw2) {
               //$('#pwchk').html('일치');
               $('#pwchk').css('color','green').html(' 일치');
               
               //   alert("중복" + data);
            } else { // 0
               $('#pwchk').css('color','red').html(' 불일치');
               //  alert("사용가능" + data);
            }
      
                  
         });
});
   // jQuery 수업시 Ajax수업 때 다시 함!
   // Ajax는 url이 안바뀐다. 
   
   
   $(function() {

      // id가 idBtn인 태그를 클릭했을 때 저장!
      $('#idBtn')
            .click(
                  function() {

                     //alert("Test");
                     // 자바스크립트 변수 idv에 입력값을 저장
                     var idv = $('#lid').val();
                     console.log("lid=>" + idv);
                     $
                           .ajax({
                              // idchk.jsp?lid=xman => get방식으로  
                              url : '${pageContext.request.contextPath}/member/idchk?lid='
                                    + idv.trim(),

                              error : function(xhr, status, error) {
                                 console.log("실패");
                              },
                              success : function(data) { // callback
                                 console.log("data=>" + data.trim());
                                 console.log("성공");
                                 // 콜백의 기본 타임은 String 문자열
                                 if (data.trim() == "1") {
                                    $('#checkId').css('color','red').html(' 중복');
                                    //   alert("중복" + data);
                                 } else { // 0
                                    $('#checkId').css('color','green').html(' 사용 가능');
                                    //  alert("사용가능" + data);
                                 }
                              }
                           });
                  });
   });
   
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_address").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_address").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr+' (상세주소)';
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_address").focus();
            }
        }).open();
    }

</script>

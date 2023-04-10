<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

 <h2>날짜/시간 선택</h2>
<form action="">
<p>선택된 영화 :</p>
<img src="resources/img/movie.jpg" style="width: 180px" class="rounded">
</form>
<br>
<br>
  <label>날짜 선택</label>
             <select class="form-select" aria-label="Default select example" >
                <option selected>날짜를 선택해주세요.</option>
                <option>12월 25일</option>
                <option>12월 26일</option>
                <option>12월 27일</option>
                <option>12월 28일</option>
                <option>12월 29일</option>
                <option>12월 30일</option>
                <option>12월 31일</option>
              </select>
              <br>
              <br>
               <label>상영 시간 선택</label>
             <select class="form-select" aria-label="Default select example" >
                <option selected>상영 시간을 선택해주세요.</option>
                <option>10:30</option>
                <option>13:20</option>
                <option>15:40</option>
                <option>19:00</option>
                <option>21:20</option>
                <option>23:50</option>
              </select>
               <br>
              <br>
               <label>잔여 좌석</label>
              <select class="form-control">
                <option selected>좌석을 선택해주세요.</option>
                <option>3관 (110/200)</option>
                <option>5관(172/200)</option>
                <option>8관(189/200)</option>
                <option>10관(153/200)</option>
              </select>
<div class="row mb-3 ">
 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <a href="pro.movie?cmd=demo&scmd=selectSeat"><button class="button-l" type="button">인원/좌석 선택</button></a>
 </div>
 </div>
</body>
</html>
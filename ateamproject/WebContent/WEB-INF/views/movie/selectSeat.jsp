<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
.seat {
	align-self: center;
	width: 40px;
	height: 40px;
}

.clicked {
	background-color: red;
	color: white;
}
</style>
</head>

<body>
<div style="height: 100px; background-color: #2E2E2E; width:100%; display:table; ">
<div style="text-align:center; display: table-cell; vertical-align: middle;">
<span class="title_screen1" style="color: #c9b459; font-size: 40px;"  >SCREEN</span>
</div></div>


<br>
<br>
	<div class="seat-wrapper" style="vertical-align: middle; text-align: center"></div>
</body>
<div class="row mb-3 ">
 <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <a href="pro.movie?cmd=demo&scmd=pay"><button class="button-l" type="button">결제</button></a>
 </div>
 </div>
<script>
    let test = [];
    let selectedSeats = new Array();
    let selectedSeatsMap = [];
    const seatWrapper = document.querySelector(".seat-wrapper");
    let clicked = "";
    let div = "";

    for (let i = 0; i < 9; i++) {
        div = document.createElement("div");
        seatWrapper.append(div);
        for (let j = 0; j < 16; j++) {
            const input = document.createElement('input');
            input.type = "button";
            input.name = "seats"
            input.classList = "seat";
            //3중포문을 사용하지 않기위해 
            mapping(input, i, j);
            div.append(input);
            input.addEventListener('click', function(e) {
                console.log(e.target.value);
                //중복방지 함수
                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);

                //click class가 존재할때(제거해주는 toggle)
                if (input.classList.contains("clicked")) {
                    input.classList.remove("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    });
                    //click class가 존재하지 않을때 (추가해주는 toggle)
                } else {
                    input.classList.add("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    })
                }
                console.log(selectedSeats);
            })
        }
    }
   
    function mapping(input, i, j) {
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
        }else if (i === 7) {
            input.value = "H" + j;
        }else if (i === 8) {
            input.value = "I" + j;
        }
    }
</script>
      


</html>
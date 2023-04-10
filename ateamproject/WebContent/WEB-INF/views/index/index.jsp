<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <!-- Content영역 -->


<!-- 메인 캐러셀1 -->
   <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
   <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 7"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="7" aria-label="Slide 1"></button>
  </div>
  
         <div class="carousel-inner">
           <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/11.allied main.jpg" class="d-block w-100"
                  alt="얼라이드중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <얼라이드> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item active">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/4.hyyh main.jpg" class="d-block w-100"
                  alt="화양연화중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <화양연화> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/1.sgn main.jpg" class="d-block w-100"
                  alt="소공녀중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <소공녀> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/5.hg main.jpg" class="d-block w-100"
                  alt="헤어질 결심중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <헤어질 결심> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/8.snc main.jpg" class="d-block w-100"
                  alt="사랑할 땐 누구나 최악이 된다 중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <사랑할 땐 누구나 최악이 된다> 중에서 
                  </p>
               </div>
            </div>
          
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/15.agc main.jpg" class="d-block w-100"
                  alt="아가씨중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <아가씨> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/12.notebook main.jpg" class="d-block w-100"
                  alt="노트북중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <노트북> 중에서 
                  </p>
               </div>
            </div>
            <div class="carousel-item">
               <img src="${pageContext.request.contextPath}/resources/img/semi_movie/6.leon main.jpg" class="d-block w-100"
                  alt="레옹중에서">
               <div class="carousel-caption d-none d-md-block">
                  <p>
                     <레옹> 중에서 
                  </p>
               </div>
            </div>
         </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>



   <section id="movie">
      <div class="container">
         <div class="row">
            <h2 class="ir_so">영화 예매</h2>
            <div class="movie">
               <div class="movie_title">
                  <ul class="clearfix">
                     <li class="active"><a href="#">박스오피스</a></li>
                     <li><a href="#">최신개봉작</a></li>
                     <li><a href="#">상영예정작</a></li>
                  </ul>
               </div>




               <div class="movie_chart">
                  <div class="swiper-container2">
                     <div class="chart_cont1 swiper-wrapper">
                     <!-- 박스오피스 시작 영화8개 -->
                        
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/4.hyyh poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/4.hyyh poster.jpg" alt="화양연화">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a19 ir_pm">15세 이상 관람</span> <strong>화양연화</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/14.rmawk poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/14.rmawk poster.jpg" alt="친절한 금자씨">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">19세 이상 관람</span> <strong>친절한 금자씨</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/15.agc poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/15.agc poster.jpg" alt="아가씨">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>아가씨</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/13.sg poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/13.sg poster.jpg" alt="색, 계">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">19세 이상 관람</span> <strong>색, 계</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/6.leon poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/6.leon poster.jpg" alt="레옹">
                              </figure>
                           
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>레옹</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/19.eternal poster.png"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/19.eternal poster.png" alt="이터널 선샤인">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>이터널 선샤인</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/21.qkrwnl poster2.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/21.qkrwnl poster2.jpg" alt="박쥐">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">19세 이상 관람</span> <strong>박쥐</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/12.notebook poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/12.notebook poster.jpg" alt="노트북">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>노트북</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 최신개봉작 시작 영화6개 -->

                  <div class="swiper-container2">
                     <div class="chart_cont2 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/5.hg poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/5.hg poster.jpg" alt="헤어질 결심">
                              </figure>
                           
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span> <span
                                    class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon all ir_pm">전체관람가</span> <strong>헤어질 결심</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">15세 이상 관람</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/2.yh poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/2.yh poster.jpg" alt="윤희에게">
                              </figure>
                           
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a19 ir_pm">12세 이상 관람</span> <strong>윤희에게</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/17.rjdls poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/17.rjdls poster.jpg" alt="거인">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">12세 이상 관람</span> <strong>거인</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/9.suite poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/9.suite poster.jpg" alt="스윗 프랑세즈">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>스윗 프랑세즈</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/10.falling poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/10.falling poster.jpg" alt="폴링 스노우">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>폴링 스노우</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/8.snc poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/8.snc poster.jpg" alt="사랑할 땐 누구나 최악이 된다">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong style="font-size: 18px;">사랑할 땐 누구나 최악이 된다</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/11.allied poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/11.allied poster.jpg" alt="얼라이드">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a15 ir_pm">15세 이상 관람</span> <strong>얼라이드</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <!-- 상영예정작 시작 영화6개 -->

                  <div class="swiper-container2">
                     <div class="chart_cont3 swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/22.syk poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/22.syk poster.jpg" alt="해시태그 시그네">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span> <span
                                    class="icon b ir_pm">Boutique</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon all ir_pm">15세 이상 관람</span> <strong>해시태그 시그네</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/23.drive poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/23.drive poster.jpg" alt="드라이브 마이  카">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">15세 이상 관람</span> <strong>라이브 마이  카</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                           <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/18.baa poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/18.baa poster.jpg" alt="본즈앤올">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">15세 이상 관람</span> <strong>본즈앤올</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/16.qjfto poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/16.qjfto poster.jpg" alt="벌새">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">15세 이상 관람</span> <strong>벌새</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/1.sgn poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/1.sgn poster.jpg" alt="소공녀">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a12 ir_pm">15세 이상 관람</span> <strong>소공녀</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/3.mg poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/3.mg poster.jpg" alt="메기">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a19 ir_pm">15세 이상 관람</span> <strong>메기</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/7.about poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/7.about poster.jpg" alt="어바웃 타임">
                              </figure>
                           
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a19 ir_pm">15세 이상 관람</span> <strong>어바웃 타임</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="poster">
                              <figure>
                                 <img src="${pageContext.request.contextPath}/resources/img/semi_movie/20.mid poster.jpg"
                                    srcset="${pageContext.request.contextPath}/resources/img/semi_movie/20.mid poster.jpg" alt="미드소마">
                              </figure>
                              
                              <div class="mx">
                                 <span class="icon m ir_pm">MX</span>
                              </div>
                           </div>
                           <div class="infor">
                              <h3>
                                 <span class="icon a19 ir_pm">19세 이상 관람</span> <strong>미드소마</strong>
                              </h3>
                              <div class="infor_btn">
                                 <a href="#">상세정보</a> <a href="#">예매하기</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //chart_cont3-->

                  
                  <!-- //chart_cont4-->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- //movie -->


<!-- 서베이차트/도표 -->
   <section id="opening">
      <div class="container">
         <div class="row">
            <div class="opening">
               <h2>
                  <span class="icon grand ir_pm">Grand Opening</span>
               </h2>
               <strong class="icon date ir_pm"></strong>
               <p class="desc">선호도 </p>
               <div class="open_box">
                  <div>
                     <h3>선호 서베이</h3>
                     <p>
                        결과 등
                     </p>
                  </div>
                  <div>
                     <h3>리뉴얼 오픈</h3>
                     <p>
                        <em>경기도</em><strong>인덕원 사거리</strong>12월 8일
                     </p>
                  </div>
                  <div>
                     <h3>리뉴얼 오픈</h3>
                     <p>
                        <em>경기도</em><strong>용인테크노밸리</strong>12월 8일
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
<!-- // 서베이차트/도표 -->

<!-- 개봉예정작 동영상 -->
   <section id="new">
      <div class="container">
         <div class="row">
            <div class="new">
               <h2>
                  <em>새로운 영화</em>
               </h2>
               <div class="new_left">
                  <div class="play" id="showTrailer" data-youtube="F1239ZePXfM">
                     <iframe width="850px;" height="499px;" 
                     src="https://www.youtube.com/embed/i50tT8n9fp8?autoplay=1&mute=1" 
                     title="YouTube video player" frameborder="0" 
                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                     allowfullscreen></iframe>
                  </div>
               </div>
               <div class="new_right">
                  <h3 class="title">헤어질 결심</h3>
                  <span class="release">2022년 06월 29일 개봉</span>
                  <div class="star">
                  
                     <span class="icon star0"></span> <strong>8.96/10</strong>
                  </div>
                  <ul class="summary">
                     <li class="genre"><span class="bar">멜로/로맨스</span><span>한국</span></li>
                     <li class="age"><span class="bar">138분</span><span>15세
                           이상 관람가</span></li>
                     <li class="desc">산 정상에서 추락한 한 남자의 변사 사건. 
                     담당 형사 '해준'(박해일)은 사망자의 아내 '서래'(탕웨이)와 마주하게 된다. 
                     "산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐." 
                     남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'. 
                     경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다. 
                     '해준'은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 '서래'를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 
                     한편, 좀처럼 속을 짐작하기 어려운 '서래'는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 '해준'을 대하는데…. 
                     진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 <헤어질 결심></li>
                  </ul>
                  <div class="select">
                     <div class="s1">
                        <label for="udate" class="ir_so">날짜</label> <input type="text"
                           id="udate" name="udate" value="2022년 06월 29일" class="ui_select2">
                     </div>
                     <div class="s2">
                        <label for="utime" class="ir_so">시간</label> 
                        <select id="utime" name="utime" class="ui_select2">
                           <option value="오전 0:00">오전 0:00</option>
                           <option value="오전 1:00">오전 1:00</option>
                           <option value="오전 2:00">오전 2:00</option>
                           <option value="오전 3:00">오전 3:00</option>
                           <option value="오전 4:00">오전 4:00</option>
                           <option value="오전 5:00">오전 5:00</option>
                           <option value="오전 6:00">오전 6:00</option>
                           <option value="오전 7:00">오전 7:00</option>
                           <option value="오전 8:00">오전 8:00</option>
                           <option value="오전 9:00">오전 9:00</option>
                           <option value="오전 10:00">오전 10:00</option>
                           <option value="오전 11:00">오전 11:00</option>
                           <option value="오전 12:00">오전 12:00</option>
                           <option value="오후 1:00">오후 1:00</option>
                           <option value="오후 2:00">오후 2:00</option>
                           <option value="오후 3:00">오후 3:00</option>
                           <option value="오후 4:00">오후 4:00</option>
                           <option value="오후 5:00">오후 5:00</option>
                           <option value="오후 6:00">오후 6:00</option>
                           <option value="오후 7:00">오후 7:00</option>
                           <option value="오후 8:00">오후 8:00</option>
                           <option value="오후 9:00">오후 9:00</option>
                           <option value="오후 10:00">오후 10:00</option>
                           <option value="오후 11:00">오후 11:00</option>
                           <option value="오후 12:00">오후 12:00</option>
                        </select>
                     </div>
                     
                  </div>
                  <button class="btn">
                     <a href="#" class="white">좌석확인</a> <a href="#" class="purple">예매하기</a>
                  </button>
               </div>
            </div>
         </div>
      </div>
   </section>
<!-- // 개봉예정작 동영상 끝-->




   <section id="help">
      <div class="container">
         <div class="row">
            <div class="help clearfix">
               <article class="help_box1">
                  <h3>
                     <em>공지사항</em>
                  </h3>
                  <div class="notice">
                     <ul>
                        <li class="active">
                           <ul>
                              <li>
                                 <dl>
                                    <dt>
                                       <strong class="bar">전체</strong> <em>2019.01.25</em>
                                    </dt>
                                    <dd>[무대인사] (뺑반) 1주차~ (뺑반) 1주차~ (뺑반) 1주차~ (뺑반) 1주차~ (뺑반)
                                       1주차~</dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt>
                                       <strong class="bar">강남</strong> <em>2019.01.25</em>
                                    </dt>
                                    <dd>[라이브뷰잉] 플라잉독 10주년 기념 라이브 10주년 기념 라이브 10주년 기념 라이브..</dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt>
                                       <strong class="bar">안양</strong> <em>2019.01.25</em>
                                    </dt>
                                    <dd>[무대인사] (내 안의 그놈) 1주차 1주차 1주차 1주차 1주차 1주차 1주차 1주차</dd>
                                 </dl>
                              </li>
                           
                           </ul>
                           </li>
                        
                     </ul>
                  </div>
               </article>
               <article class="help_box2">
                  <h3>
                     <em>VIP</em>
                  </h3>
                  <div class="card">
                     <ul>
                        <li><a href="#"> <span><img
                                 src="${pageContext.request.contextPath}/resources/img/card01.jpg"
                                 srcset="${pageContext.request.contextPath}/resources/img/card01@2.jpg 2x" alt="card01"></span> <strong>T멤버십
                                 일반</strong> <em>멤버십 소개</em>
                        </a></li>
                        <li><a href="#"> <span><img
                                 src="${pageContext.request.contextPath}/resources/img/card02.jpg"
                                 srcset="${pageContext.request.contextPath}/resources/img/card02@2.jpg 2x" alt="card02"></span> <strong>LG
                                 U+</strong> <em>멤버십 소개</em>
                        </a></li>
                        <li><a href="#"> <span><img
                                 src="${pageContext.request.contextPath}/resources/img/card03.jpg"
                                 srcset="${pageContext.request.contextPath}/resources/img/card03@2.jpg 2x" alt="card03 "></span> <strong>SK멤버십
                                 일반</strong> <em>멤버십 소개</em>
                        </a></li>
                     </ul>
                  </div>
               </article>
               <article class="help_box3">
                  <h3>고객센터</h3>
                  <div class="service">
                     <ul>
                        <li><a href="#"> <span class="img_svg"> 
                           </span> <strong>1:1 문의</strong>
                        </a></li>
                        <li><a href="#"> <span class="img_svg"> 
                           </span> 
                        </a></li>
                        <li><a href="#"> <span class="img_svg">
                           </span> <strong>자주묻는 질문</strong>
                        </a></li>
                        <li><a href="#"> <span class="img_svg"> 

                           </span> 
                        </a></li>
                     </ul>
                  </div>
               </article>
            </div>
         </div>
      </div>
   </section>
   <!-- //help -->
<!-- 상영관소개, 지도 -->
   <section id="about_mu">
      <div class="container">
         <div class="row">
         <div id="target1"></div>
            <div class="greeting">
               <h2>
                  <em>상영관 소개</em>
               </h2>
               <figure class="greeting_left">
                     <img src="${pageContext.request.contextPath}/resources/img/theater_img.jpg"
                        srcset="${pageContext.request.contextPath}/resources/img/theater_img.jpg" alt="Seats">
                        <p>Sound <a>｜ Dolby Surround 7.1 / Dolby Atmos</a> </p><br>
                        <p>편안하고 쾌적한 프리미엄급 좌석</p>
               </figure>
               
               <figure class="greeting_right">
                     <img src="${pageContext.request.contextPath}/resources/img/theater_img2.jpg"
                        srcset="${pageContext.request.contextPath}/resources/img/theater_img2.jpg" alt="Seats">
                         <p>Seats <a>｜ HS-SMART SEATS</a></p><br>
                        <p>온전히 영화에 몰입되는 입체적인 사운드</p>
               </figure>
            </div>
            
            <div class="map">
             <h2><div id="target2"></div>
                  <em>오시는 길</em>
               </h2>
               <figure class="map_left" style="width: ">
               <article>
                        <h6>지하철 이용시</h6>
                        <p>
                           가산디지털단지 5번출구 기준 도보 이용시 약 10분 소요
                        </p>
                        <br>
                        <h6>버스 이용시</h6>
                   <p>[지선] 5536, 5616, 5712, 5714<br>
                     [간선] 503, 504, 571, 652</p>
                        
                  <h6>주차정보</h6>
                     <p>건물 내 지하 주차장(지하2F ~ 지하4F) 또는 인근 주차장 이용</p>

                  <h6>주차요금</h6>
                     <p>cinemu 영화 관람시 주차 3시간 6,000원</p>
                        </article>
               </figure>
               
               <div id="map" style="width:70%;height:400px; float: right;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f2d9a4b6a086417e1d0f52473d5aeae&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.477001, 126.879982), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var imageSrc = 'https://ifh.cc/g/Y11tB4.jpg', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(10, 10)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition = new kakao.maps.LatLng(37.477001, 126.879982); // 마커가 표시될 위치입니다

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition, 
    image: markerImage // 마커이미지 설정 
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>

            </div>
         </div>
      </div>
   </section>
<!-- // 멤버십 소개, 상영관소개 등 -->

   <!-- //footer -->


   <!-- 트레일러 -->
   <aside role="complementary" id="blackout" class="overlay">
      <div id="trailerModal" class="modal">
         <div id="trailer"></div>
         <!-- YouTube 플레이어로 대체되는 부분 -->
      </div>
      <button id="hideTrailer" class="modal_close">닫기</button>
   </aside>


   <!-- 자바스크립트 라이브러리 -->
   <script src="${pageContext.request.contextPath}/resources/js/jquery.min_1.12.4.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/modernizr-custom.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/ie-checker.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/swiper.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/iframe_api.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/movie.js"></script>
   <script>
      //배너 이미지 슬라이드
      var swiper = new Swiper('.swiper-container', {
         pagination : {
            el : '.swiper-pagination',
         },
         navigation : {
            nextEl : '.swiper-button-next',
            prevEl : '.swiper-button-prev',
         },
         autoplay : {
            delay : 5000,
         },
      });

      //영화차트 이미지 슬라이드
      var swiper = new Swiper('.swiper-container2', {
         slidesPerView : 4,
         spaceBetween : 24,
         //            mousewheel: {
         //                invert: true,
         //            },
         keyboard : {
            enabled : true,
            onlyInViewport : false,
         },
         autoplay : {
            delay : 6000,
         },
         breakpoints : {
            600 : {
               slidesPerView : 1.4,
               spaceBetween : 24
            },
            768 : {
               slidesPerView : 2,
               spaceBetween : 24
            },
            960 : {
               slidesPerView : 3,
               spaceBetween : 24
            }
         }
      });

      //영화차트 탭 메뉴
      var movBtn = $(".movie_title > ul > li");
      var movCont = $(".movie_chart > div");

      movCont.hide().eq(0).show();

      movBtn.click(function(e) {
         e.preventDefault();
         var target = $(this);
         var index = target.index();
         movBtn.removeClass("active");
         target.addClass("active");
         movCont.css("display", "none");
         movCont.eq(index).css("display", "block");
      });

      //공지사항 탭 메뉴
      var tabMenu = $(".notice");

      //컨텐츠 내용을 숨겨주세요!
      tabMenu.find("ul > li > ul").hide();
      tabMenu.find("li.active > ul").show();

      function tabList(e) {
         e.preventDefault(); //#의 기능을 차단
         var target = $(this);
         target.next().show().parent("li").addClass("active").siblings("li")
               .removeClass("active").find("ul").hide();
         //버튼을 클릭하면 ~ div를 보여주고
         //부모의 li 태그에 클래스 추가하고
         //형제의 li 태그에 클래스 제거하고
         //제거한 자식의 div 태그를 숨겨줌 
      }

      tabMenu.find("ul > li > a").click(tabList).focus(tabList);
   </script>
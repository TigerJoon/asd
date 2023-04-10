<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%--2023. 2. 1. / Kosmo --%> 
<%@page trimDirectiveWhitespaces="true"%>

<%
   int menu = Integer.parseInt(request.getParameter("menu"));
if (menu == 1) {
%>
<div id="silver" role="tabpanel"
   aria-labelledby="silver-tab">
   <li><strong class="ic_rank_vip">silver</strong>
      <div class="benefit">
         <div class="listbox">
            <ul class="list type1">
               <li><strong>주중스페셜관관람권</strong><span><em>1</em> 매</span></li>
               <li><strong>주중관람권</strong><span><em>1</em> 매</span></li>
               <li><strong>주중/주말관람권</strong><span><em>4</em> 매</span></li>
            </ul>
         </div>
      </div>
      <div class="benefit">
         <h4 class="tit">
            매점 혜택 <span>맛있는 매점 쿠폰</span>
         </h4>
         <ul class="list">
            <li><strong>팝콘M 교환권</strong><span><em>1</em> 매</span></li>
            <li><strong>탄산음료M 교환권</strong><span><em>1</em> 매</span></li>
            <li><strong>콤보4천원 할인권</strong><span><em>1</em> 매</span></li>
            <li>&nbsp;</li>
         </ul>
      </div>
      <div class="benefit">
         <h4 class="tit">
            기념일 <span>내가 만드는 특별한 날 쿠폰</span>
         </h4>
         <ul class="list type1">
            <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
         </ul>
      </div></li>
</div>
<%
   } else if (menu == 2) {
%>
<div id="gold" role="tabpanel"
         aria-labelledby="gold-tab">
         <li><strong class="ic_rank_vvip">gold</strong>
            <div class="benefit">
               <div class="listbox">
                  <ul class="list type1">
                     <li><strong>주중스페셜관관람권</strong><span><em>1</em> 매</span></li>
                     <li><strong>주중관람권</strong><span><em>1</em> 매</span></li>
                     <li><strong>주중/주말관람권</strong><span><em>6</em> 매</span></li>
                  </ul>
               </div>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  매점 혜택 <span>맛있는 매점 쿠폰</span>
               </h4>
               <ul class="list">
                  <li><strong>팝콘M 교환권</strong><span><em>2</em> 매</span></li>
                  <li><strong>탄산음료M 교환권</strong><span><em>2</em> 매</span></li>
                  <li><strong>콤보4천원 할인권</strong><span><em>3</em> 매</span></li>
                  <li>&nbsp;</li>
               </ul>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  기념일 <span>내가 만드는 특별한 날 쿠폰</span>
               </h4>
               <ul class="list type1">
                  <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
               </ul>
            </div></li>
      </div>

<%
   } else if (menu == 3) {
%>
<div id="platinum" role="tabpanel"
         aria-labelledby="platinum-tab">
         <li><strong class="ic_rank_gold">platinum</strong>
            <div class="benefit">
               <div class="listbox">
                  <ul class="list type1">
                     <li><strong>주중스페셜관관람권</strong><span><em>2</em> 매</span></li>
                     <li><strong>주중관람권</strong><span><em>2</em> 매</span></li>
                     <li><strong>주중/주말관람권</strong><span><em>8</em> 매</span></li>
                  </ul>
               </div>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  매점 혜택 <span>맛있는 매점 쿠폰</span>
               </h4>
               <ul class="list">
                  <li><strong>팝콘M 교환권</strong><span><em>1</em> 매</span></li>
                  <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
                  <li><strong>에이드 할인권</strong><span><em>1</em> 매</span></li>
                  <li><strong>콤보4천원 할인권</strong><span><em>3</em> 매</span></li>
               </ul>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  기념일 <span>내가 만드는 특별한 날 쿠폰</span>
               </h4>
               <ul class="list type1">
                  <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
               </ul>
            </div></li>
      </div>

<%
   }else if (menu == 4) {   
%>
<div id="diamond" role="tabpanel"
         aria-labelledby="diamond-tab">
         <li><strong class="ic_rank_platinum">diamond</strong>
            <div class="benefit">
               <div class="listbox">
                  <ul class="list type1">
                     <li><strong>주중스페셜관관람권</strong><span><em>2</em> 매</span></li>
                     <li><strong>주중관람권</strong><span><em>2</em> 매</span></li>
                     <li><strong>주중/주말관람권</strong><span><em>10</em> 매</span></li>
                  </ul>
               </div>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  매점 혜택 <span>맛있는 매점 쿠폰</span>
               </h4>
               <ul class="list">
                  <li><strong>팝콘M 교환권</strong><span><em>2</em> 매</span></li>
                  <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
                  <li><strong>에이드 할인권</strong><span><em>2</em> 매</span></li>
                  <li><strong>콤보4천원 할인권</strong><span><em>5</em> 매</span></li>
               </ul>
            </div>
            <div class="benefit">
               <h4 class="tit">
                  기념일 <span>내가 만드는 특별한 날 쿠폰</span>
               </h4>
               <ul class="list type1">
                  <li><strong>스위트콤보 교환권</strong><span><em>1</em> 매</span></li>
               </ul>
            </div></li>
      </div>
   
<%
}
 %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<style>
.fit-picture {
    width: 250px;
}
.fit-table {
    width: 750px;
}
</style>

<!-- Content¿µ¿ª -->
<div class="container mt-5">
	<div class="row">
		<div id="sub1">
			<fieldset>
				<legend>½º³¼±¸¸Å</legend>
			</fieldset>
		</div>
	</div>
</div>

<form method="post" action="pro.kosmo" id="snackform">
					<input type="hidden" name="cmd" value="snack"> 
					<input type="hidden" name="scmd" value="popcorn">
<table class="table">
	<thead>
		<tr>
			<td>½º³¼1</td>
			<td>½º³¼2</td>
			<td>½º³¼3</td>
		</tr>
	</thead>
	<tbody>
	<tr>
		<td class="align-middle">
			<div class="row mb-3">
    			<div class="col-sm-10">
    				<img class="fit-picture" 
    					src="/resources/image/apple.jpg" id="imgx1" class="rounded">
    			</div>
    			<div>
    			<label>·¯ºêÄÞº¸</label>
    			</div>
    			<div>
    			<label></label>
    			</div>
			</div> 
		</td>
		<td class="align-middle">
			<div class="row mb-3">
    			<div class="col-sm-10">
    				<img class="fit-picture" 
    					src="/resources/image/banana.jpg" id="imgx2">
    			</div>
    			<label>´õºíÄÞº¸</label>
    			</div>
    			<div>
    			<label>15,000¿ø</label>
    			</div>
			</div>
		</td>
		<td class="align-middle">
			<div class="row mb-3">
    			<div class="col-sm-10">
    				<img class="fit-picture" 
    					src="/resources/image/blueberries.jpg" id="imgx3">
    			</div>
    			<label>Æ®¸®ÇÃÄÞº¸</label>
    			</div>
    			<div>
    			<label>20,000¿ø</label>
    			</div>
			</div>
		</td>
	</tr>
	<tr>
			<td colspan="3" style="text-align: center">
  			<div>
		    <input type="radio" id="snack1" name="snack" value="snack1">
		    <label for="snack1">½º³¼1</label>
		    <input type="radio" id="snack2" name="snack" value="snack2">
		    <label for="snack2">½º³¼2</label>
		    <input type="radio" id="snack3" name="snack" value="snack3">
		    <label for="snack3">½º³¼3</label>
		  </div>
			</td>
	</tr>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3" style="text-align: right">
				<a href="pro.movie?cmd=demo&scmd=cart"><input type="button" value="°áÁ¦" id="wbtn" class="button-r">
			</a></td>
		</tr>
	</tfoot>
	</table>
</form>
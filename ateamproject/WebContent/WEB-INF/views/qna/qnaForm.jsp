<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Content영역 -->
<div class="container mt-5">
	<div class="row">
		<div id="sub1">
		<form action="qainsert" method="post">
		<input
               type="hidden" name="mgrno" value="1"> <input type="hidden"
               name="writer" value="${sessionID }">
				<fieldset>
					<legend>QnA</legend>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Writer</label>
						<!--  <input type="text" name="writer" id="writer" placeholder="작성자" />-->
						<div class="col-sm-10">${sessionID }</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Subject</label>
						<div class="col-sm-10">
							<input type="text" name="subject" id="subject"
								placeholder="제목을 입력하세요." />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Content</label>
						<div class="col-sm-10">
							<textarea name="content" id="content" rows="10" cols="70"></textarea>
							<!--  <input type="textArea" name="content" id="content" placeholder="내용을 입력하세요."/>-->
						</div>
					</div>

					<div class="row mb-3 ">
						<div class="col-sm-10">
							<input type="submit" value="등록" id="wbtn" class="button-l" /> </a> <a
								href="qalist"><input
								type="button" value="리스트" id="listBtn" class="button-l" /></a>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</div>


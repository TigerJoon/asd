
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Content 영역 -->
<div class="container mt-5">
	<div class="row">
		<div id="sub1">
			<fieldset>
				<legend>QnA Update</legend>
				<form method="post" action="qaupdate">
				 <input
						type="hidden" name="no" value="${vo.no }">

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">writer :
							${sessionScope.sessionID }</label>
						<div class="col-sm-10"></div>

					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">subject</label>
						<div class="col-sm-10">
							<input type="text" name="subject" id="subject"
								value="${vo.subject }" />
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">content</label>
						<div class="col-sm-10">
							<p>
								<textarea rows="10" cols="50" name="content" id="content"
									>${vo.content }</textarea>
							</p>
						</div>
					</div>

					<div class="row mb-3 ">
						<div class="col-sm-10">
							<input type="submit" value="등록" id="btn1" class="btn btn-danger" />
							<a href="qalist"><input
								type="button" value="리스트" id="listBtn" class="btn btn-danger" /></a>

						</div>
					</div>
				</form>
			</fieldset>
		</div>
	</div>
</div>
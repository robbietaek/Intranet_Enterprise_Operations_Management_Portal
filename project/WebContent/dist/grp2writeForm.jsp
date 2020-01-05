<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Goodee</title>
</head>
<body>
	<div class="content-wrapper">
		<div class="content">
			<div class="row">
				<div class="col-lg-12">
					<div class="card card-default">
						<div class="card-header card-header-border-bottom">
							<h2>부서 게시글 쓰기</h2>
						</div>
						<form action="grp2write.do" name="nt"
							enctype="multipart/form-data" method="post">
							<div class="card-body">
								<div class="form-group">
									<label for="exampleFormControlInput1">제목</label> <input
										type="text" class="form-control" id="subject" name="subject"
										placeholder="제목을 입력하세요">
								</div>

								<div class="form-group">
									<label for="exampleFormControlSelect12">업무종류</label>
									 <select class="form-control" name="subtype">
										<option>업무진행</option>
										<option>관련자료</option>
										<option>도움요청</option>
										<option>타부서업무</option>
										<option>결재요청</option>
									</select>
								</div>

								<div class="form-group">
									<label for="exampleFormControlTextarea1">내용</label>
									<textarea class="form-control" id="ck" rows="15" name="content"></textarea>
									<script type="text/javascript">
										CKEDITOR
												.replace(
														'ck',
														{
															height : 300,
															enterMode : CKEDITOR.ENTER_BR,
															filebrowserImageUploadUrl : "imgupload.do"
														});
									</script>
								</div>
								<div class="form-group">
									<label for="exampleFormControlFile1">파일첨부</label> <input
										type="file" class="form-control-file" id="file1" name="file1">
								</div>
								<div class="form-footer pt-4 pt-5 mt-4 border-top">
									<button type="button" class="btn btn-primary btn-default"
										onclick="javascript:inputcheck()">글쓰기</button>

									<button type="button" class="btn btn-secondary btn-default"
										onclick="history.back()">취소하기</button>
								</div>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

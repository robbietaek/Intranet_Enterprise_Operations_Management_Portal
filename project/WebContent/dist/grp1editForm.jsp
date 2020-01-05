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
							<h2>부서 게시글 수정하기</h2>
						</div>
						<div class="card-body">
							<form action="grp1edit.do" name="ed"
								enctype="multipart/form-data" method="post">
								<input type="hidden" name="num" value="${b.num}"> <input
									type="hidden" name="file2" value="${b.file1}">
								<div class="form-group">
									<label for="exampleFormControlInput1">제목</label> <input
										type="text" class="form-control" id="exampleFormControlInput1"
										name="subject" placeholder="제목을 입력하세요" value="${b.subject}">

								</div>

								<div class="form-group">
									<label for="exampleFormControlSelect12">업무종류</label> <select
										class="form-control" name="subtype">
										<option>업무진행</option>
										<option>관련자료</option>
										<option>도움요청</option>
										<option>타부서업무</option>
										<option>결재요청</option>
									</select>
								</div>

								<div class="form-group">
									<label for="exampleFormControlTextarea1">내용</label>
									<textarea class="form-control" id="ck" rows="15" name="content">${b.content}</textarea>
									<script type="text/javascript">
										CKEDITOR
												.replace(
														'ck',
														{
															height : 300,
															filebrowserImageUploadUrl : "imgupload.do"
														});
									</script>
								</div>
								<div class="form-group">
									<c:if test="${!empty b.file1}">
										<div id="file_desc">${b.file1}
											<a href="javascript:file_delete()">[첨부파일 삭제]</a>
										</div>
									</c:if>
									<label for="exampleFormControlFile1">파일첨부</label> <input
										type="file" class="form-control-file"
										id="exampleFormControlFile1" name="file1">
								</div>
								<div class="form-footer pt-4 pt-5 mt-4 border-top">
									<input type="hidden" name="pageNum" value="${param.pageNum}">
									<button type="submit" class="btn btn-primary btn-default"
										onclick="javascript:editcheck()">수정하기</button>
									<button type="button" class="btn btn-secondary btn-default"
										onclick="history.back()">취소하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

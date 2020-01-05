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
			<div class="bg-white border rounded">
				<div class="row no-gutters">
					<div class="col-lg-4 col-xl-3">
						<div class="profile-content-left pt-5 pb-3 px-3 px-xl-5">
							<div class="card text-center widget-profile px-0 border-0">
								<div class="card-img mx-auto rounded-circle">
									<img src="picture/${m.picture}">
								</div>
								<div class="card-body">
									<h4 class="py-2 text-dark">${m.dept}</h4>
									<p>${m.name}</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-xl-9">
						<div class="profile-content-right py-5">
							<ul class="nav nav-tabs px-3 px-xl-5 nav-style-border" id="myTab"
								role="tablist">

								<li class="nav-item"><a class="nav-link active"
									id="settings-tab" data-toggle="tab" href="#settings" role="tab"
									aria-controls="settings" aria-selected="false">프로필 수정 요청</a></li>
							</ul>
							<div class="tab-content px-3 px-xl-5" id="myTabContent">

								<div class="tab-pane fade show active" id="settings"
									role="tabpanel" aria-labelledby="settings-tab">
									<div class="mt-5">

										<form action="editprofile.do" name="imgs" method="POST"
											onsubmit="return inchk(this)">
											<input type = "hidden" name ="id" value = "${m.id}">
											<input type="hidden" name="picture" value="${m.picture}">
											<div class="form-group row mb-6">
												<label for="coverImage"
													class="col-sm-4 col-lg-2 col-form-label">프로필사진</label>
												<div class="col-sm-8 col-lg-10">
													<div class="custom-file mb-1">
														<img src="picture/${m.picture}" width="100"
															height="120" id="pic"><br> <a
															href="javascript:win_upload()">사진수정</a>
													</div>
												</div>
											</div>

											<div class="form-group mb-4">
												<label for="oldPassword">휴대폰번호 변경</label> <input type="text"
													class="form-control" id="oldPassword" name="tel" id = "tel" value= "${m.tel}">
											</div>

											<div class="form-group mb-4">
												<label for="oldPassword">기존 비밀번호</label> <input
													type="password" class="form-control" name="pass" id = "pass">
											</div>

											<div class="form-group mb-4">
												<label for="newPassword">새 비밀번호</label> <input
													type="password" class="form-control" name="newpass"
													id="newpass">
											</div>

											<div class="form-group mb-4">
												<label for="conPassword">새 비밀번호 확인</label> <input
													type="password" class="form-control" name="newpasscheck"
													id="newpasscheck">
											</div>

											<div class="d-flex justify-content-end mt-5">
												<button type="submit" class="btn btn-primary mb-2 btn-pill">수정하기</button>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>

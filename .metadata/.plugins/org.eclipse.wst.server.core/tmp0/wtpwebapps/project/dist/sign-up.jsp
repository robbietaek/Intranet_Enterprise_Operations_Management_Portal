<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">
<title></title>

<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500"
	rel="stylesheet" />
<link
	href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css"
	rel="stylesheet" />


<!-- PLUGINS CSS STYLE -->
<link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />



<!-- SLEEK CSS -->
<link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

<!-- FAVICON -->
<link href="assets/img/favicon.png" rel="shortcut icon" />



<!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<script src="assets/plugins/nprogress/nprogress.js"></script>
<script type="text/javascript">
	function win_upload() {
		var op = "width=500, height=200, left=50,top=150";
		open("pictureForm.do", "", op);
	}
	function inchk(imgs) {
		if(imgs.id.value==""){
			alert("아이디를 입력하세요.")
			imgs.id.value = "";
			imgs.id.focus();
			return false;
		}
		else if(imgs.pass.value==""){
			alert("비밀번호를 입력하세요.")
			imgs.ckpass.value = "";
			imgs.ckpass.focus();
			return false;
		}else if(imgs.tel.value==""){
			alert("전화번호를 입력하세요.")
			imgs.tel.value="";
			imgs.tel.focus();
			return false;
		}else if(imgs.birthday.value==""){
			imgs.birthday.value="";
			imgs.birthday.focus();
			return false;
		}else if(imgs.hiredate.value==""){
			imgs.hiredate.value="";
			imgs.hiredate.focus();
			return false;
		}else if (imgs.pass.value != imgs.ckpass.value) {
			alert("변경 비밀번호 와 변경 비밀번호 재입력이 다릅니다.");
			imgs.ckpass.value = "";
			imgs.ckpass.focus();
			return false;
		}
		return true;
	}

</script>
</head>

</head>
<body class="" id="body">
	<div
		class="container d-flex flex-column justify-content-between vh-100">
		<div class="row justify-content-center mt-5">
			<div class="col-xl-5 col-lg-6 col-md-10">
				<div class="card">
					<div class="card-header bg-primary">
						<div class="app-brand">
							<a href="index.do"> <svg class="brand-icon"
									xmlns="http://www.w3.org/2000/svg"
									preserveAspectRatio="xMidYMid" width="30" height="33"
									viewBox="0 0 30 33">
                        <g fill="none" fill-rule="evenodd">
                          <path class="logo-fill-blue" fill="#7DBCFF"
										d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                          <path class="logo-fill-white" fill="#FFF"
										d="M11 4v25l8 4V0z" />
                        </g>
                      </svg> <span class="brand-name">Goodee Academy</span>
							</a>
						</div>
					</div>





					<div class="card-body p-5">
						<h4 class="text-dark mb-3">회원가입</h4>
						
						<form action="sign.do" name="imgs" method="POST" onsubmit="return inchk(this)">
						 <input type="hidden" name="picture" value="">
							<div class="row">
								<div class="form-group col-md-12 mb-4">
									<h5>사원번호</h5>
									<input type="text" class="form-control input-lg" name="id"
										aria-describedby="nameHelp" placeholder="사원번호" id = "id">
								</div>

								<div class="form-group col-md-12 mb-4">
									<h5>이름</h5>
									<input type="text" class="form-control input-lg" name="name"
										aria-describedby="nameHelp" placeholder="이름">
								</div>


								<div class="form-group col-md-12 mb-4">
									<h5>부서</h5>
									<select class="form-control" name="dept">
										<option>개발부서</option>
										<option>회계부서</option>
										<option>금융부서</option>
										<option>영업부서</option>
									</select>
								</div>

								<div class="form-group col-md-12 mb-4">
									<h5>직급</h5>
									<select class="form-control" name="position">
										<option>인턴</option>
										<option>사원</option>
										<option>주임</option>
										<option>대리</option>
										<option>과장</option>
										<option>차장</option>
										<option>부장</option>
										<option>이사</option>
									</select>
								</div>


								<div class="form-group col-md-12 mb-4">
									<h5>생년월일</h5>
									<input type="date" class="form-control input-lg"
										name="birthday" aria-describedby="nameHelp"
										placeholder="생년월일  ex) 19950517" id = "birthday">
								</div>


								<div class="form-group col-md-12 mb-4">
									<h5>입사일</h5>
									<input type="date" class="form-control input-lg"
										name="hiredate" aria-describedby="nameHelp"
										placeholder="입사일  ex) 20191125" id= "hiredate">
								</div>


								<div class="form-group col-md-12 mb-4">
									<h5>휴대폰번호</h5>
									<input type="text" class="form-control input-lg" name="tel"
										aria-describedby="nameHelp"
										placeholder="휴대폰번호  ex) 01011112222" id = "tel">
								</div>


								<div class="form-group col-md-12 ">
									<h5>비밀번호</h5>
									<input type="password" class="form-control input-lg"
										name="pass" placeholder="비밀번호" id = "pass">
								</div>
								<div class="form-group col-md-12 ">
									<h5>비밀번호 확인</h5>
									<input type="password" class="form-control input-lg"
										name="cpassword" placeholder="비밀번호확인" id ="ckpass">
								</div>

								<div class="form-group">
									<img src="" width="100" height="120" id="pic">
									<label for="exampleFormControlFile1"><a
										href="javascript:win_upload()">사진등록</a></label>
								</div>


								<div class="col-md-12">
									<div class="d-inline-block mr-3"></div>
									<button type="submit"
										class="btn btn-lg btn-primary btn-block mb-4">회원가입</button>
									<p>
										이미 계정이 있으신가요? <a class="text-blue" href="sign-in.do">로그인
											하기</a>
									</p>
								</div>
							</div>
						</form>




					</div>
				</div>
			</div>
		</div>
		<div class="copyright pl-0">
			<p class="text-center">&copy; 2019 개인프로젝트 김경택</p>
		</div>
	</div>

</body>
</html>
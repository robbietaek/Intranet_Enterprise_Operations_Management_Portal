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
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="media widget-media p-4 bg-white border">
						<div class="icon rounded-circle mr-4 bg-primary">
							<i class="mdi mdi-account-outline text-white "></i>
						</div>
						<div class="media-body align-self-center">
							<h4 class="text-primary mb-2">
								<a href="pmlist1Form.do">개발부서 리스트 관리</a>
							</h4>
							<p>${count1}</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="media widget-media p-4 bg-white border">
						<div class="icon rounded-circle bg-warning mr-4">
							<i class="mdi mdi-cart-outline text-white "></i>
						</div>
						<div class="media-body align-self-center">
							<h4 class="text-primary mb-2">
								<a href="pmlist2Form.do">회계부서 리스트 관리</a>
							</h4>
							<p>${count2}</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="media widget-media p-4 bg-white border">
						<div class="icon rounded-circle mr-4 bg-danger">
							<i class="mdi mdi-cart-outline text-white "></i>
						</div>
						<div class="media-body align-self-center">
							<h4 class="text-primary mb-2">
								<a href="pmlist3Form.do">금융부서 리스트 관리</a>
							</h4>
							<p>${count3}</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-xl-3">
					<div class="media widget-media p-4 bg-white border">
						<div class="icon bg-success rounded-circle mr-4">
							<i class="mdi mdi-diamond text-white "></i>
						</div>
						<div class="media-body align-self-center">
							<h4 class="text-primary mb-2">
								<a href="pmlist4Form.do">영업부서 리스트 관리</a>
							</h4>
							<p>${count4}</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xl-8 col-md-12">
					<!-- Sales Graph -->
					<div class="card card-default">
						<div class="card-header">
							<h2>회사 성장률 설정 (숫자 입력)</h2>
						</div>

						<div class="card-body">
							<canvas id="linecanvas"></canvas>
						</div>
						<script>
							var MONTHS = [ '1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];
							var config = {
								type : 'line',
								data : {
									labels : MONTHS,
									datasets : [
											{
												label : '성장률',
												fill : false,
												backgroundColor : window.chartColors.red,
												borderColor : window.chartColors.red,
												borderWidth : 3,
											<c:forEach var="f" items="${flow}" begin="0" end="0">
											data : [ ${f.jan}, ${f.feb}, ${f.mar}, ${f.apr}, ${f.may}, ${f.jun}, ${f.jul},
													${f.aug}, ${f.sep}, ${f.oct}, ${f.nov}, ${f.dece} ],
											</c:forEach>
											},]
								},
								options : {
									responsive : true,
									tooltips : {
										mode : 'index',
										intersect : false,
									},
									hover : {
										mode : 'nearest',
										intersect : true
									},
									scales : {
										xAxes : [ {
											display : true,
											scaleLabel : {
												display : true,
												labelString : '월별'
											}
										} ],
										yAxes : [ {
											display : true,
											scaleLabel : {
												display : true,
												labelString : '%'
											}
										} ]
									}
								}
							};

							window.onload = function() {
								var ctx = document.getElementById('linecanvas')
										.getContext('2d');
								window.myLine = new Chart(ctx, config);
							};
						</script>


						<div class="card-footer">
							<form action="flow.do" method="POST" class="text-right mb-3"
								name="f">
								<table class="table table-bordered">
									<tr>
										<th scope='col'>1월</th>
										<th scope='col'>2월</th>
										<th scope='col'>3월</th>
										<th scope='col'>4월</th>
										<th scope='col'>5월</th>
										<th scope='col'>6월</th>
										<th scope='col'>7월</th>
										<th scope='col'>8월</th>
										<th scope='col'>9월</th>
										<th scope='col'>10월</th>
										<th scope='col'>11월</th>
										<th scope='col'>12월</th>
									</tr>
									<tr>
										<td><input type="text" name='jan' size="4"></td>
										<td><input type="text" name='feb' size="4"></td>
										<td><input type="text" name='mar' size="4"></td>
										<td><input type="text" name='apr' size="4"></td>
										<td><input type="text" name='may' size="4"></td>
										<td><input type="text" name='jun' size="4"></td>
										<td><input type="text" name='jul' size="4"></td>
										<td><input type="text" name='aug' size="4"></td>
										<td><input type="text" name='sep' size="4"></td>
										<td><input type="text" name='oct' size="4"></td>
										<td><input type="text" name='nov' size="4"></td>
										<td><input type="text" name='dece' size="4"></td>
								</table>
								<button type="submit" class="btn btn-primary btn-default">입력하기</button>
							</form>
							<form action="flowdelete.do" name="f" method="POST"
								class="text-right mb-3">
								<button type="submit" class="btn btn-primary btn-default">초기화</button>
							</form>
						</div>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="card" style="width: 30rem;">
						<div class="card-body">
							<form action="adminwrite.do" name="am"
								enctype="multipart/form-data" method="post">
								<div class="form-group">
									<label for="exampleFormControlInput1">회사 소식 제목</label> <input
										type="text" class="form-control" name="subject"
										placeholder="제목을 입력하세요">
								</div>
								<div class="form-group">
									<label for="exampleFormControlTextarea1">내용</label>
									<textarea class="form-control" id="admininputtext"
										name="content" rows="8"></textarea>
									<script type="text/javascript">
										CKEDITOR
												.replace(
														'admininputtext',
														{
															height : 130,
															filebrowserImageUploadUrl : "imgupload.do"
														});
									</script>
								</div>
								<div class="form-group">
									<label for="exampleFormControlFile1">파일첨부</label> <input
										type="file" class="form-control-file" id="file1" name="file1">
								</div>
								<div class="form-footer pt-4 pt-5 mt-4 border-top text-right mb-3">
									<button type="submit" class="btn btn-primary btn-default">업로드</button>

									<br>
								</div>
							</form>
							<div class="text-right">
							<form action="admintextdelete.do" name="ad" method="POST">
								<button type="submit" class="btn btn-secondary btn-default">삭제하기</button>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</body>
</html>

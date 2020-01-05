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
							<h2>업무 기록</h2>
							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
								<c:if test="${member.position == '이사'||member.position == '부장'||member.position == '차장'||member.position == '과장'}">
							<input type="button" class="btn btn-primary" onclick="sendto3()" value="전체 쪽지 보내기">
								</c:if>
						</div>

						<div class="card-body">

							<form action="grp3Form.do" name="sf" method="post">
								<input type="hidden" name="pageNum" value="1">

								<div class="input-group">

									<select name="column">
									<option value="">선택하세요</option>
										<option value="subject">제목</option>
										<option value="id">작성자</option>
										<option value="content">내용</option>
										<option value="subtype">분류</option>
										<option value="subject,id">제목+작성자</option>
										<option value="subject,content">제목+내용</option>
										<option value="id,content">id+내용</option></select>
									<script>
										document.sf.column.value = "${param.column}";
									</script>

									<input type="text" name="find" id="search-input"
										class="form-control" placeholder="검색" autofocus
										autocomplete="off" value="${param.find}"/>
									<button type="submit" name="search" id="search-btn"
										class="btn btn-flat">
										<i class="mdi mdi-magnify"></i>
									</button>
								</div>
							</form>


								<table class="table table-striped">
									<c:if test="${boardcnt == 0}">
										<tr>
											<td colspan="5">등록된 게시글이 없습니다.</td>
										</tr>
								</table>
								</c:if>
								<c:if test="${boardcnt > 0}">
									<thead>
										<tr>

											<th scope="col">제목</th>
											<th scope="col">분류</th>
											<th scope="col">첨부파일</th>
											<th scope="col">작성자</th>
											<th scope="col">작성일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="b" items="${list}">
											<tr>
												<td><a
													href="grp3textForm.do?num=${b.num}&pageNum=${pageNum}">${b.subject}</a></td>
												<td>${b.subtype}</td>
												<td style="text-align: left"><c:if
														test="${!empty b.file1}">
														<a href="file/${b.file1}" style="text-decoration: none;">O</a>
													</c:if> <c:if test="${empty b.file1}">X</c:if> <c:if
														test="${b.grplevel > 0}">
														<c:forEach begin="1" end="${b.grplevel}">
         								 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 			</c:forEach>└
  											</c:if></td>
												<td>${b.id}</td>
												<td><fmt:formatDate var="rdate" value="${b.regdate}"
														pattern="yyyyMMdd" /> <c:if test="${today == rdate}">
														<fmt:formatDate value="${b.regdate}" pattern="HH:mm:ss" />
													</c:if> <c:if test="${today != rdate}">
														<fmt:formatDate value="${b.regdate}"
															pattern="yy-MM-dd HH:mm" />
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
									</table>


									<ul class="pagination border-rounded justify-content-center">

										<c:if test="${pageNum <= 1 }">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true"
													class="mdi mdi-chevron-left"></span> <span class="sr-only">Previous</span>
											</a></li>
										</c:if>

										<c:if test="${pageNum > 1 }">
											<li class="page-item"><a class="page-link"
												href="grp3Form.do?pageNum=${pageNum-1}"
												aria-label="Previous"> <span aria-hidden="true"
													class="mdi mdi-chevron-left"></span> <span class="sr-only">Previous</span>
											</a></li>
										</c:if>


										<c:forEach var="a" begin="${startpage}" end="${endpage}">
											<c:if test="${a==pageNum}">
												<li class="page-item"><a class="page-link" href="">${a}</a>
												</li>
											</c:if>

											<c:if test="${a!=pageNum}">
												<li class="page-item"><a class="page-link"
													href="grp3Form.do?pageNum=${a}">${a}</a></li>
											</c:if>
										</c:forEach>



										<c:if test="${pageNum >= maxpage }">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true"
													class="mdi mdi-chevron-right"></span> <span class="sr-only">Next</span>
											</a></li>
										</c:if>


										<c:if test="${pageNum < maxpage }">
											<li class="page-item"><a class="page-link"
												href="grp3Form.do?pageNum=${pageNum + 1}" aria-label="Next">
													<span aria-hidden="true" class="mdi mdi-chevron-right"></span>
													<span class="sr-only">Next</span>
											</a></li>
										</c:if>

									</ul>


								</c:if>




							<div class="text-right mb-3">
								<form action="grp3writeForm.do" name="nt"
									enctype="multipart/form-data" method="post">
									<button type="submit" class="btn btn-primary btn-default">글쓰기</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="card card-default">
						<div class="card-header card-header-border-bottom">
							<h2>업무진행상황</h2>
						</div>
						<div class="card-body">
							<h3>부서업무 진행도</h3>
							<hr>
							<c:forEach var="ps" items="${plist }" begin="0" end="0">
							<div class="progress mb-3">

								<div class="progress-bar bg-success" role="progressbar"
									style="width: ${ps.dept}%">${ps.dept}%</div>
							</div>
							<br>
							<h3>마감일</h3>
							<hr>
							<div class="progress mb-3">

								<div class="progress-bar bg-info" role="progressbar"
									style="width: ${ps.deadline}%">${ps.deadline }%</div>
							</div>
							</c:forEach>
						</div>
												<c:if test="${member.position == '이사'||member.position == '부장'||member.position == '차장'||member.position == '과장'}">
							<div class="card-footer">
							<form action="grp3processwrite.do" method="POST" class="text-right mb-3"
								name="f">
								<table class="table table-bordered">
									<tr>
										<th scope='col'>업무진행률</th>
										<th scope='col'>마감률</th>
									</tr>
									<tr>
										<td><input type="text" name='dept' size="4"></td>
										<td><input type="text" name='deadline' size="4"></td>
								</table>
								<button type="submit" class="btn btn-primary btn-default">입력하기</button>
							</form>
							<form action="grp3processdelete.do" name="f" method="POST"
								class="text-right mb-3">
								<button type="submit" class="btn btn-primary btn-default">초기화</button>
							</form>
						</div>
						</c:if>
					</div>
				</div>
				
								<div class="col-lg-6">
					<div class="card card-default">
						<div class="card-header card-header-border-bottom">
							<h2>부서 휴가신청상황</h2>
						</div>
						<div class = "card-body">
						<form action="grp1Form.do" name="sf" method="post">
							<input type="hidden" name="pageNumV" value="1">

							<div class="input-group">

								<select name="columnV">
									<option value="">선택하세요</option>
									<option value="id">사원번호</option>
									<option value="vacationtype">분류</option>
									<option value="startdate">시작일</option>
									<option value="enddate">종료일</option>
								</select>
								<script>
									document.sf.columnV.value = "${param.columnV}";
								</script>

								<input type="text" name="findV" id="search-input"
									class="form-control" placeholder="검색" autofocus
									autocomplete="off" value="${param.findV}" />
								<button type="submit" name="search" id="search-btn"
									class="btn btn-flat">
									<i class="mdi mdi-magnify"></i>
								</button>
							</div>
						</form>


						<table class="table table-striped">
							<c:if test="${vacationcnt == 0}">
								<tr>
									<td colspan="5">등록된 휴가가 없습니다.</td>
								</tr>
						</table>
						</c:if>
						<c:if test="${vacationcnt > 0}">
							<thead>
								<tr>
									<th scope="col">사원번호</th>
									<th scope="col">분류</th>
									<th scope="col">시작일</th>
									<th scope="col">종료일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="b" items="${vlist}">
									<tr>
										<td>${b.id}</td>
										<td>${b.vacationtype}</td>
										<td>${b.startdate}</td>
										<td>${b.enddate}</td>
									</tr>
								</c:forEach>
							</tbody>
							</table>


							<ul class="pagination border-rounded justify-content-center">

								<c:if test="${pageNumV <= 1 }">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true"
											class="mdi mdi-chevron-left"></span> <span class="sr-only">Previous</span>
									</a></li>
								</c:if>

								<c:if test="${pageNumV > 1 }">
									<li class="page-item"><a class="page-link"
										href="grp1Form.do?pageNum=${pageNumV-1}" aria-label="Previous">
											<span aria-hidden="true" class="mdi mdi-chevron-left"></span>
											<span class="sr-only">Previous</span>
									</a></li>
								</c:if>


								<c:forEach var="a" begin="${startpageV}" end="${endpageV}">
									<c:if test="${a==pageNumV}">
										<li class="page-item"><a class="page-link" href="">${a}</a>
										</li>
									</c:if>

									<c:if test="${a!=pageNumV}">
										<li class="page-item"><a class="page-link"
											href="grp1Form.do?pageNum=${a}">${a}</a></li>
									</c:if>
								</c:forEach>



								<c:if test="${pageNumV >= maxpageV }">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true"
											class="mdi mdi-chevron-right"></span> <span class="sr-only">Next</span>
									</a></li>
								</c:if>


								<c:if test="${pageNumV < maxpageV }">
									<li class="page-item"><a class="page-link"
										href="grp1Form.do?pageNum=${pageNumV + 1}" aria-label="Next">
											<span aria-hidden="true" class="mdi mdi-chevron-right"></span>
											<span class="sr-only">Next</span>
									</a></li>
								</c:if>

							</ul>


						</c:if>

					</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>

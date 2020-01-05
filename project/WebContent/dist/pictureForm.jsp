<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원사진 등록</title>
</head>
<body>
<h3>사진업로드</h3>
<form action="picture.do" method="post"
   enctype="multipart/form-data">
   <input type="file" name="picture">
   <input type="submit" value="사진등록">
</form></body></html>
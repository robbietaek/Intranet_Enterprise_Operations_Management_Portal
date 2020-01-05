<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
   img = opener.document.getElementById("pic");
   img.src = "picture/${fname}";
   opener.document.imgs.picture.value="${fname}";
   self.close();
</script>  

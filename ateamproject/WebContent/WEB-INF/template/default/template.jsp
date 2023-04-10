<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>   
<!DOCTYPE html>
<html>
 <head>
  <TITLE> New Document </TITLE>
  
  <!-- Ajax C3 차트 라이브러리 -->
<script src="${pageContext.request.contextPath}/resources/js/c3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/d3-5.8.2.min.js"
   charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>

<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset19.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style_a.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/swiper.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style_login.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
	<script src="https://kit.fontawesome.com/b448fb4cb9.js" crossorigin="anonymous"></script>
	
<!-- 파비콘 -->
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/icons/favicon.png"/>
<link rel="apple-touch-icon-precomposed"
	href="<%=request.getContextPath()%>/resources/icons/fabicon.jpg" />
<link rel="apple-touch-icon-precomposed" sizes="96x96"
	href="<%=request.getContextPath()%>/resources/icons/fabicon.jpg" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=request.getContextPath()%>/resources/icons/fabicon.jpg" />
<link rel="apple-touch-icon-precomposed" sizes="192x192"
	href="<%=request.getContextPath()%>/resources/icons/fabicon.jpg" />


<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- HTLM5shiv ie6~8 -->
<!--[if lt IE 9]> 
      <script src="resources/js/html5shiv.min.js"></script>
      <script type="text/javascript">
         alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
      </script>
   <![endif]-->
  
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
<script>

</script>

</head>
<body>
<header>
 <tiles:insertAttribute name="header"/>
 <tiles:insertAttribute name="menu"/>

</header>
<tiles:insertAttribute name="body"/>

<%--footer start --%>
<footer>
<tiles:insertAttribute name="footer"/>
</footer>
</body>
</html>
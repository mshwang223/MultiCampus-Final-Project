<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜 페이지</title>
		
		<!-- header -->
	    <c:import url="/WEB-INF/views/layout/header.jsp"/>
	    
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/nice.css'/>">	    
		<script src="js/nice.js"></script>
	</head>

<body>
<!-- header -->
        <c:import url="/WEB-INF/views/layout/top.jsp"/>
           <section class="wrap">
        <article class="nice_area">
            <div class="nice_title">
                <span>#찜한 목록</span>
        </div>
        <div class="nice_wrap">
        <div class="nice_img">
        	<img src="<c:url value='/images/hotel1.jpg'/>" alt="">
        	<button class="nice_btn">장바구니에 담기</button>
        	<div class="nice_name">
        	<span>비스타 워커힐 서울</span>
        	</div>
        </div>
        </div>
        </article>
        
    </section>
        
         <!--footer -->
        <c:import url="/WEB-INF/views/layout/footer.jsp"/>     
</body>
</html>
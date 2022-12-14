<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>펫밀리가 떴다</title>
		<!-- header  -->
		<c:import url="/WEB-INF/views/layout/header.jsp"/>
		
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/board.css"/>">
		<link rel="stylesheet" type="text/css" href="<c:url value="/css/contactDetail.css"/>">
		<script src="<c:url value="/js/contactDetail.js"/>"></script>
	</head>
	
	<body>
		<!-- header  -->
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
			
		<section class="wrap">
			<!-- 세부화면 레이아웃 시작 -->
			<article class="noticeBox">
				<div class="pageTitle">
					<div>
						<span>#문의 조회</span>
					</div>
				</div>
				<form method="post" id="userFrm" class="userFrm" name="userFrm">
					<input type="hidden" name="boardId" value="<c:url value='${notice.boardId}'/>" />
					<table>
						<thead>
							<tr>
						      	<th class="contactInputTitle" colspan="2">
						      		<input type="text" name="title" value="<c:url value='${notice.title}'/>" />
						      	</th>
						    </tr>
						</thead>
						<tbody>
						    <tr>
						      	<td class="titles" colspan="2">
						      		<input type="hidden" id="chkYN" value="${notice.chkYN}">
						      		<input type="hidden" id="userId" name="userId" value="<c:url value='${sessionScope.sid}'/>">
						      		<input type="hidden" id="userName" name="userName" value="<c:url value='${sessionScope.userName}'/>">
						      		${notice.userName}&nbsp;&nbsp; | &nbsp;&nbsp;작성일 : 
						      		<fmt:formatDate value="${notice.modifyDate}" pattern="yyyy-MM-dd HH:mm:dd"/>
						      	</td>
						    </tr>
						    <tr>
						      	<td colspan="2">
						      		<c:if test="${notice.chkYN eq '0'}">
						      		<textarea id="contactContents" class="contents" name="contents">
						      			${notice.contents}
						      		</textarea>
						      		</c:if>
						      		<c:if test="${notice.chkYN eq '1'}">
						      			<div id="readOnlyContents" class="contents readOnly">${notice.contents}</div>
						      		</c:if>
						      	</td>
						    </tr>
						    <c:if test="${notice.chkYN eq '1'}">
						    
						    <tr class="trAnswerBox">
						    	<td class="answer-title" colspan="2">답변</td>
						    </tr>
						    <tr class="trAnswerBox">
						    	<td class="titles" colspan="2">
						    		${answer.userName}&nbsp;&nbsp; | &nbsp;&nbsp;작성일 : 
						    		<fmt:formatDate value="${answer.writeDate}" pattern="yyyy-MM-dd HH:mm:dd"/>
						    	</td>
						    </tr>
						    <tr class="trAnswerBox">
						      	<td colspan="2" class="answer-box">
					      			<div id="answers" class="answers">${answer.comment}</div>
						      	</td>
						    </tr>
						    </c:if>
						    <tr class="tr-file">
						    	<td class="paging-td file">첨부파일</td>
						      	<td>
						      		<c:if test="${notice.chkYN eq '0'}">
								    <div class="btn_img_box">
								    	<input type="file" id="uploadFile" name="uploadFile" style="display:none"/>
								    	<button type="button" id="btn_img_done" class="btn_img_done">파일찾기</button>
								    </div>
								    </c:if>
								    <div class="file-box">
								    	<c:if test="${notice.chkYN eq '0'}">
								    	<div id="escFile">
								    		<i class="fa-solid fa-circle-xmark"></i>
								    	</div>
								    	</c:if>
								    	<div id="fileName">${notice.chkFile}</div>
								    </div>
						      	</td>
						    </tr>
						    <tr>
						      	<td class="paging-td">▲ 다음글</td>
						      	<td>
						      		<c:if test="${empty notice.nextTitle}">
						      			마지막 글입니다.
						      		</c:if>
						      		<c:if test="${not empty notice.nextTitle}">
						      			${notice.nextTitle}
						      		</c:if>
						      	</td>
						    </tr>
						    <tr>  	
						      	<td class="paging-td">▼ 이전글</td>
						      	<td>
						      		<c:if test="${empty notice.prevTitle}">
						      			첫 번째 글입니다.
						      		</c:if>
						      		<c:if test="${not empty notice.prevTitle}">
						      			${notice.prevTitle}
						      		</c:if>						      	
						      	</td>
						    </tr>
						</tbody>
					</table>
				    <div class="btn_list_box">
				    	<button type="button" class="btn_list_done">목록</button>
				    	<c:if test="${notice.chkYN eq '0'}">
				    		<button type="submit" class="btn_save_done">저장</button>
				    	</c:if>
				    </div>
				</form>
			</article>
			<!-- 세부화면 레이아웃 종료 -->
		</section>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>
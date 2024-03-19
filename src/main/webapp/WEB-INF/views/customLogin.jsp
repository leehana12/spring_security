<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!-- 관리자가 직접만든 로그인 화면임 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Custom Login Page</h1>
	<h2><c:out value="${error}"></c:out></h2>
	<h2><c:out value="${logout}"></c:out></h2>
	
	<form method="post" action="/login">	
		<div>
			<input type="text" name="username" />
		</div>
	
		<div>
			<!-- test기 떄문에 admin으로 한것임. testㅣ후 지울것이다. -->
			<input type="password" name="password" />
		</div>
		<div>
			<input type="submit"/>
		</div>
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	
</body>
</html>




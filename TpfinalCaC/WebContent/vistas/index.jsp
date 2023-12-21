<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- index.jsp -->
<form action="FrontController?accion=login" method="post">
    <label for="username">Usuario:</label>
    <input type="text" name="username" required>
    
    <label for="password">Contraseña:</label>
    <input type="password" name="password" required>
    
    <button type="submit">Iniciar sesión</button>
</form>
	
</body>
</html>
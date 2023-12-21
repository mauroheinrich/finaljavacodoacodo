<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="conferencia.TicketCompra"%>
<%@page import="conferencia.TicketDAO"%>
<%@page import="conferencia.Oradores"%>
<%@page import="conferencia.OradoresDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style_backoffice.css">
	<script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
	<title>Backoffice</title>
	<style>
		
	</style>
</head>
<body class="fondoback">
			<!-- backoffice.jsp -->
		<%
		    // Verifica si el usuario está autenticado
		    Boolean usuarioAutenticado = (Boolean)request.getSession().getAttribute("usuarioAutenticado");
		    if (usuarioAutenticado != null && usuarioAutenticado) {
		        // Usuario autenticado, muestra el contenido de backoffice
		%>
		     
	<div class="backoffice-bg ">
		<div class="container">
		    <div class="row">
				<div class="col-md-6 offset-md-3">
			        <div class="card backoffice-card my-5 ">	   
			        	<div class="card-body text-center my-5 "> 
			        		<img src="img/codoacodo.png" alt="Logo Co1do a codo" height=100" class="d-inline-block align-middle backoffice-img" loading="lazy">
			        		 <h2 class="text-center text-dark my-4">Panel de Control</h2>  
			        		 <div class="d-flex px-1">
			        		 	<div class= " col-6 text-aline-center" >
			        		 <i class="fa-sharp fa-solid fa-ticket fa-bounce fa-2xl"></i>
			        		 
			        		 <a class="btn btn-warning" href="FrontController?accion=panelTickets">Control de tickets</a>
						     
			        		 </div>   	
						     <div class= "col-6 text-aline-center ">
						      <i class="fa-solid fa-person-chalkboard fa-bounce fa-2xl"></i>

				          	 <a class="btn btn-warning" href="FrontController?accion=panelOradores">Control de Oradores</a>
						     </div>
			        		 </div>
			        		 
						    
						 </div>
			        </div>
		        </div>
		    </div>
		    <div class="row">
		    	<div class="col-md-6 offset-md-3 text-center">
		    		<a class="link-dark backoffice-a" href="FrontController?accion=volver"><i class="fa-solid fa-arrow-left" style="color: #212529;"></i> Volver al sitio web</a>
		    	</div>
		    </div>
	  	</div>
	</div>   
		<%
		    } else {
		        // Usuario no autenticado, redirige al formulario de inicio de sesión
		        response.sendRedirect("login.jsp");
		    }
		%>
	
	 <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
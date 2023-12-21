<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="conferencia.TicketCompra"%>
<%@page import="conferencia.TicketDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   	<link rel="stylesheet" href="css/style_backoffice.css">
	<script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
	<title>Backoffice</title>
</head>
<body>
	
	<div class="container">
		<!-- Panel de Tickets -->
		<div>
		<h2 class="py-3">Panel de Tickets</h2>
		</div>
	 	<div class="row">
	 		<div class="table-responsive">
				<table class="table table-hover">
					<thead class="table-dark">
					    <tr>
					      <th scope="col">Id</th>
					      <th scope="col">Nombre</th>
					      <th scope="col">Apellido</th>
					      <th scope="col">Mail</th>
					      <th scope="col" class="text-center">Cantidad</th>
					      <th scope="col">Tipo</th>
					      <th scope="col">Total</th>
					      <th scope="col" class="text-center">Eliminar</th>
					    </tr>
					</thead>
					<tbody>
						<%
						List<TicketCompra> resultado=null;
						TicketDAO ticket=new TicketDAO();
						resultado=ticket.listarTicket();
						int totalFacturado=0;
						
						for(int x=0;x<resultado.size();x++) {
							String rutaE="FrontController?accion=eliminar&id="+resultado.get(x).getId();	
							String tipoTicketTexto;
							
							if(resultado.get(x).getTipo_ticket()==1) {
								tipoTicketTexto="Estudiante";
							}
							else if(resultado.get(x).getTipo_ticket()==2) {
								tipoTicketTexto="Trainee";
							}
							else {
								tipoTicketTexto="Junior";
							}
						%>
						<tr>
							<td><%=resultado.get(x).getId()%></td>
						  	<td><%=resultado.get(x).getNombre()%></td>
						  	<td><%=resultado.get(x).getApellido()%></td>
						  	<td><%=resultado.get(x).getMail()%></td>
						  	<td class="text-center"><%=resultado.get(x).getCant()%></td>
						  	<td><%=tipoTicketTexto%></td>
						  	<td>$<%=resultado.get(x).getTotal_facturado()%></td>
						  	<td class="text-center">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#eliminarModal<%=resultado.get(x).getId()%>">
                                    <i class="fa-regular fa-trash-can" style="color:#dc3545;"></i>
                                </a>
                            </td>
						</tr>
						
						<!-- Modal -->
						<div class="modal fade" id="eliminarModal<%=resultado.get(x).getId()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="eliminarModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h3 class="modal-title fs-5" id="eliminarModalLabel">Eliminar registro</h3>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        <p>Está seguro que desea eliminar el registro? Si elimina el registro ya no se podrá recuperar.</p>
						      </div>
						      <div class="modal-footer">
						        <a class="btn btn-success" href=<%=rutaE%>>Si</a>
						        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">No</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<%
							totalFacturado+=resultado.get(x).getTotal_facturado();
						}
						%>		
					</tbody>								
				</table>
			</div>	 	
		</div>
		<div class="row">
			<div class="col">
				<a class="btn btn-success my-3" href="FrontController?accion=backoffice">Volver</a>
				<a class="btn btn-primary my-3" href="FrontController?accion=volver">Ir al sitio web</a>
			</div>
		</div>
	</div>

	 <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>

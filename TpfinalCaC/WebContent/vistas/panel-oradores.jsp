<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
    <div class="container">
        <!-- Panel de Oradores -->
        <h2 class="py-3">Panel de Oradores</h2>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Tematica</th>
                            <th scope="col" class="text-center">Eliminar</th>
                        </tr>
                    </thead>

                    <%
                    List<Oradores> resultadoOrador = null;
                    OradoresDAO oradores = new OradoresDAO();
                    resultadoOrador = oradores.listarOrador();

                    for (int x = 0; x < resultadoOrador.size(); x++) {
                        String rutaE = "FrontController?accion=eliminarOrador&id=" + resultadoOrador.get(x).getId();
                    %>

                    <tbody>
                        <tr>
                            <td><%=resultadoOrador.get(x).getId()%></td>
                            <td><%=resultadoOrador.get(x).getNombre()%></td>
                            <td><%=resultadoOrador.get(x).getApellido()%></td>
                            <td><%=resultadoOrador.get(x).getTematica()%></td>
                            <td class="text-center">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#eliminarOradorModal<%=resultadoOrador.get(x).getId()%>">
                                    <i class="fa-regular fa-trash-can" style="color:#dc3545;"></i>
                                </a>
                            </td>
                        </tr>

                        <!-- Modal -->
                        <div class="modal fade" id="eliminarOradorModal<%=resultadoOrador.get(x).getId()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="eliminarOradorModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="modal-title fs-5" id="eliminarOradorModalLabel">Eliminar registro</h3>
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
                    }
                    %>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <a class="btn btn-success my-3" href="FrontController?accion=backoffice">Volver</a>
                <a class="btn btn-primary my-3" href="FrontController?accion=volver">Página Principal</a>
            </div>
        </div>
    </div>

     <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>

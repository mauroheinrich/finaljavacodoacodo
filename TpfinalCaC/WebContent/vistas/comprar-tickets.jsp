<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- bootstrap -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- style local -->
    <link rel="stylesheet" href="css/style.css">
    <title>Comprar tickets</title>
</head>
<body>
     <!-- NAVBAR DE BOOSTRAP -->
     <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-lg">
            <span><img src="./img/codoacodo.png" alt="Logo CaC"></span>
            <h1 class="navbar-brand-h1 me-auto">Conferencia Bs As</h1>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link active" href="FrontController" aria-current="page">La conferencia</a>
                    <a class="nav-link" href="FrontController#speakers">Los oradores</a>
                    <a class="nav-link" href="FrontController#container-cta">El lugar y la fecha</a>
                    <a class="nav-link" href="FrontController#form">Conviertete en orador</a>
                    <a class="nav-link" href="#tickets">Comprar tickets</a>
                    <a class="nav-link text-warning" href= "FrontController?accion=backoffice"">Back Office</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Comprar tickets -->
   <!-- TICKETS -->

   <div id="tickets" class="tickets">
    <div class="container-tickets">
        <div class="tickets-category">
            <div class="estudiante">
                <marquee behavior="" direction=""><h3>Estudiante</h3></marquee>
                <h5>Tiene un descuento</h5>
                <h2>80%</h2>
                <h6>* presentar documentación</h6>
            </div>
            <div class="trainee">
                <marquee behavior="" direction=""><h3>Trainee</h3></marquee>
                <h5>Tiene un descuento</h5>
                <h2>50%</h2>
                <h6>* presentar documentación</h6>
            </div>
            <div class="junior">
                <marquee behavior="" direction=""><h3>Junior</h3></marquee>
                <h5>Tiene un descuento</h5>
                <h2>15%</h2>
                <h6>* presentar documentación</h6>
            </div>
        </div>
        <div class="tickets-text">
            <h6>VENTA</h6>
            <h1>VALOR DE TICKET $200</h1>
        </div>


        <form class="ticketsForm" action="FrontController?accion=insertar" method = "POST">
            <div class="tickets-form">
                <input type="text" class="ticketsFirstName" name="nombre" placeholder="Nombre">
                <input type="text" class="ticketsLastName" name="apellido" placeholder="Apellido">
                <input type="email" class="ticketsEmail" name="mail" placeholder="E-mail">
                <div class="labelTicketsQuantity">
                    <label for="Cantidad">Cantidad</label>
                    <input id="cant" type="text" class="ticketsQuantity" name="cant"
                        placeholder="Cantidad">
                </div>
                <div class="labelTicketsCategory">
                    <label for="Categoria">Categoria</label>
                    <select name="categoria" class="ticketsCategory">
                        <option value="Estudiante">Estudiante</option>
                        <option value="Trainee">Trainee</option>
                        <option value="Junior">Junior</option>
                    </select>
                </div>
                <!-- <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span><span class="ticketsBuy"><i class="fa-solid fa-cart-shopping"></i> Comprar</span></output> -->
                <output class="ticketsOutput"><span class="ticketsValue">Total a pagar: </span></output>
                <button id="ticketsBorrar" type="reset" class="btnTickets" name="Borrar">Borrar</button>
                <button id="ticketsResumen" class="btnTickets" name="Resumen">Resumen</button>
                <button id="ticketsResumen" class="btnTickets" name="insertar" >Comprar</button>
                
            </div>
        </form>

    </div>
</div><!-- FOOTER -->
<footer class="footer">
    <div class="container-footer">
        <a class="footer-item" href="#">Preguntas frecuentes</a>
        <a class="footer-item" href="#">Contáctanos</a>
        <a class="footer-item" href="#">Prensa</a>
        <a class="footer-item" href="#">Conferencias</a>
        <a class="footer-item" href="#">Términos y condiciones</a>
        <a class="footer-item" href="#">Privacidad</a>
        <a class="footer-item" href="#">Estudiantes</a>
    </div>
</footer> 
<script src="js/ticket.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
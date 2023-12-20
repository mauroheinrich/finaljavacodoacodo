<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- bootstrap -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- style local -->
    <link rel="stylesheet" href="css/style.css">
   
    
    <title>Conferencia Codo a Codo</title>
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
                    <a class="nav-link active" href="#" aria-current="page">La conferencia</a>
                    <a class="nav-link" href="#speakers">Los oradores</a>
                    <a class="nav-link" href="#container-cta">El lugar y la fecha</a>
                    <a class="nav-link" href="#form">Conviertete en orador</a>
                    <a class="nav-link" href="FrontController?accion=comprar">Comprar tickets</a>
                    <a class="nav-link text-warning" href="FrontController?accion=backoffice">Back Office</a>
                </div>
            </div>
        </div>
    </nav>
<!-- SHOWCASE -->

<section class="showcase">
    <div class="shadow">
        
        <div class="container-flex">
            
            <div class="content">
                <marquee behavior="" direction="" scrollamount = "20"     ><h2>¡ULTIMOS CUPOS!</h2></marquee>
                <h1>Conf Bs As</h1>
                <p>Bs As llega por primera vez a Argentina. Un eveto para compratir con nuestra comunidad el
                    conocimiento y experiencia de los expertos que estan creando el futuro de Internet. Ven a
                    conocer a
                    miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que
                    tenemos
                    para ti. Te esperamos!</p>
                <div class="buttonarea">
                    <a class="btn btn-transparent" href="#form">Quiero ser orador</a>
                    <a class="btn btn-solid" href="FrontController?accion=comprar">Comprar tickets</a>
                </div>
            </div>
        </div>
    </div>
</section> 

<!-- SPEAKERS -->
<section class="speakers" id="speakers">
    <div class="title">
        <h6>CONOCE A LOS</h6>
        <h2>ORADORES</h2>
    </div>
    <div class="container-speakers">
        <div class="card">
            <img src="./img/steve.jpg" alt="Steve Jobs">
            <div class="skills">
                <h6 class="yellow">JavaScript</h6>
                <h6 class="cyan">React</h6>
            </div>
            <h3>Steve Jobs</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum, expedita pariatur officiis dicta
                tempore repellat!</p>
        </div>
        <div class="card">
            <img src="./img/bill.jpg" alt="Bill Gates">
            <div class="skills">
                <h6 class="yellow">JavaScript</h6>
                <h6 class="celeste">React</h6>
            </div>
            <h3>Bill Gates</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum, expedita pariatur officiis dicta
                tempore repellat!</p>
        </div>
        <div class="card">
            <img src="./img/ada.jpeg" alt="Ada Lovelace">
            <div class="skills">
                <h6 class="grey">Negocios</h6>
                <h6 class="magenta">Startups</h6>
            </div>
            <h3>Ada Lovelace</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum, expedita pariatur officiis dicta
                tempore repellat!</p>
        </div>
    </div>
</section>


<!-- CALL TO ACTION -->

<section class="call-to-action" id="container-cta">
    <div class="container-cta">
        <img src="./img/honolulu.jpg" alt="Honolulu">
        <div class="cta-content">
            <h2>Bs As - Octubre</h2>
            <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos.
                Honolulu es la mas sureña de entre las principales ciudades estadounidenses. Aunque el nombre de
                Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de
                Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600
                km2 de superficie.</p>
            <a href="#" class="btn btn-transparent">Conocé más</a>
        </div>
    </div>
</section>

<!-- FORM -->
<section class="form" id="form">
    <div class="title">
        <h6>CONVIERTETE EN UN</h6>
        <h2>ORADOR</h2>
        <h3>Anótate como orador para dar una <span class="underline">charla ignite.</span> Cuéntanos de qué quieres
            hablar!</h3>
    </div>
    <div class="container-form">
        <form action="FrontController?accion=insertarOrador" method= "POST">
            <div class="first-last-name">
                <input type="text" class="input-name" name="nombreOrador" placeholder="Nombre" required>
                <input type="text" class="input-name" name="apellidoOrador" placeholder="Apellido" required> 
            </div>
            <textarea class="input-about" name="tematicaOrador" id="" cols="30" rows="6" placeholder="Sobre qué quieres hablar?" required></textarea>
            <h6 class="recordatorio">Recuerda incluir un título para tu charla</h6>
            <input class="btn-submit" type="submit" value="Enviar">
        </form>
    </div>
</section>


<!-- FOOTER -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error de inicio de sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    <style>
        /* Estilos adicionales para personalizar la página de error de inicio de sesión */
        body {
            background-color: #495057;
            color: #FFC900;
        }

        .container {
            margin-top: 50px;
            text-align: center;
        }

        .btn-primary {
            background-color: #FFC900;
            border-color: #FFC900;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="py-3">Error de inicio de sesión</h2>
        <p>Las credenciales proporcionadas son incorrectas o no tienes acceso al área de administración.</p>
        <a class="btn btn-primary" href="FrontController?accion=backoffice">Volver al formulario de inicio de sesión</a>
    </div>
    <!-- scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>

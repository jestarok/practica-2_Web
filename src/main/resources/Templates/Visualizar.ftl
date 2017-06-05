<!DOCTYPE html>
<html>
<head>
    <title>Ver Estudiantes</title>
    <!-- BootStrap -->

    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <!-- Favicon -->
    <link rel="shortcut icon" href="rolling/images/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" type="image/x-icon" href="rolling/images/favicon/apple-touch-icon.png">

    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="rolling/css/plugin.css">

    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="rolling/css/style.css">

    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">
</head>
<body>

<header id="home" class="home-section">
    <div id="page-content">
        <!-- Home & Menu Section Start -->
        <header id="home" class="home-section">

            <div class="header-top-area">
                <div class="container">
                    <div class="row">

                        <div class="col-sm-3">
                            <div class="logo">
                                <a href="index-2.html">Rolling</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="home-section-background" data-stellar-background-ratio="0.6">
                <div class="display-table">
                    <div class="display-table-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <div class="header-text">
                                        <p>Manejador de Estudiantes!</p>
                                        <h2><span class="typing"></span></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>
        <!-- Home & Menu Section End-->


        <div class="col-md-4 col-md-offset-4">
            <br>
            <form action="/Home" method="get">
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <label for="Matricula">Matricula</label><br>
                        <label for="nombre">nombre</label><br>
                        <label for="apellido">apellido</label><br>
                        <label for="telefono">telefono</label><br>
                    </div>
                    <div class="col-md-4">
                        <input disabled type="text" name="Mat" id="Matricula" value="${Estudiante.getMatricula()}"><br>
                        <input disabled type="text" name="Nom" id="Nombre" value="${Estudiante.getNombre()}"><br>
                        <input disabled type="text" name="Ape" id="Apellido" value="${Estudiante.getApellido()}"><br>
                        <input disabled type="text" name="Tel" id="Telefono" value="${Estudiante.getTelefono()}"><br>
                        <input type="submit" class="btn btn-success col-md-12" value="Volver">
                    </div>
                </div>
            </form>
        </div>

    </div>
</header>


</body>
</html>
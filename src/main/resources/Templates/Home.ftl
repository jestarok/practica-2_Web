<!DOCTYPE html>
<html>
<head>
    <title>Información Estudiantes </title>

    <script src="JavaScript/jquery-2.2.4.min.js"></script>
    <script src="JavaScript/Home.js"></script>
    <link href="CSS/Home.css" rel="stylesheet" >


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

    <!--DataTables [ OPTIONAL ]-->
    <script src="JavaScript/datatables/media/js/jquery.dataTables.js"></script>
    <script src="JavaScript/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>

    <!--DataTables Sample [ SAMPLE ]-->
    <script src="JavaScript/tables-datatables.js"></script>
    <link href="JavaScript/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="JavaScript/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">

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

                    <div class="col-sm-9">
                        <div class="navigation-menu">
                            <div class="navbar">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <div class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="/Registro">Crear</a>
                                        </li>
                                        <li><a class="btnModify" href="#">Modificar</a>
                                        </li>
                                        <li><a class="btnView" href="#">Ver</a>
                                        </li>
                                        <li><a class="btnDelete" href="#">Borrar</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
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

    <div id="area-table-estudiantes" class="row col-md-8 col-md-offset-2">
        <table id="datos-estudiantes" style="width: 100%">
            <thead>
                <tr>
                    <th>Mat</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Tel.</th>
                </tr>
            </thead>
            <tbody>
                <#if (Estudiantes) ??>
                    <#list Estudiantes as est>
                        <tr>
                            <#if (est.getMatricula())??>
                                <td>${est.getMatricula()}</td>
                            <#else>
                                <td>Datos no insertados</td>
                            </#if>

                            <#if (est.getNombre())??>
                                <td>${est.getNombre()}</td>
                            <#else>
                                <td>Datos no insertados</td>
                            </#if>

                            <#if (est.getApellido())??>
                                <td>${est.getApellido()}</td>
                            <#else>
                                <td>Datos no insertados</td>
                            </#if>


                            <#if (est.getTelefono())??>
                                <td>${est.getTelefono()}</td>
                            <#else>
                                <td>Datos no insertados</td>
                            </#if>
                        </tr>
                    </#list>
                </#if>
            </tbody>
        </table>

        <div id="area-herramientas" class="row">
            <button id="boton-crear" class="btn btn-success" onclick="location.href='/Registro';">Crear</button>
            <button class="btnView btn btn-info" id="btnView">Visualizar</button>
            <button class="btnModify btn btn-info id="btnModify">Modificar</button>
            <button class="btnDelete btn btn-danger" id="btnDelete">Borrar</button>
        </div>
    </div>
</div>
</header>
</body>
</html>
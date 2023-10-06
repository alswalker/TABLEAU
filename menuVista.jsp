<%-- 
    Document   : menuVista
    Created on : 21 oct. 2022, 20:39:28
    Author     : alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("Usuario") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Principal</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="jquery/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <nav class="navbar navbar-dark bg-dark">

                <a class="navbar-brand" href="#"><img src="imagenes/helpdeskIcon.png" alt="" height="50" width="50"/></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="menu.jsp">Inicio<span class="sr-only">(current)</span></a>
                        <!--FRANCISCO-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Usuarios
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarUsuario.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoUsuario.jsp">Mantenimiento Usuarios</a>
                            </div>
                        </li>
                        <!--JASON-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Empleados
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarEmpleado.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoEmpleado.jsp">Mantenimiento Empleados</a>
                            </div>
                        </li>
                        <!--EMERSON-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Solicitantes
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarSolicitante.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoSolicitante.jsp">Mantenimiento Solicitantes</a>
                            </div>
                        </li>
                        
                        <!--EMILY-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Empresa
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarEmpresa.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoEmpresa.jsp">Mantenimiento Empresa</a>
                            </div>
                        </li>
                        
                        <!--MISHELL-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Hardware
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarHardware.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoHardware.jsp">Mantenimiento Hardware</a>
                            </div>
                        </li>
                        <!--EMERSON-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Software
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarSoftware.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoSoftware.jsp">Mantenimiento Software</a>
                            </div>
                        </li>
                        
                        <!--EMILY-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Incidencia
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarIncidencia.jsp">Insertar</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoIncidencia.jsp">Mantenimiento Incidencia</a>
                            </div>
                        </li>
                        <!--JASON-->                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Atencion de Incidencia
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="insertarAtencion.jsp">Atender</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="mantenimientoAtencion.jsp">Mantenimiento de Atenciones</a>
                            </div>
                        </li>
                        
                        <!--REPORTERIA-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                                Reportes
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="rptAtencion.jsp">Tickets en Cola</a>                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="rptIncidencia.jsp">Búsqueda de Tickets</a>  
                            </div>
                        </li>
                    </ul>
                    <a margin-left="35px" href="login.jsp?cerrar=true" button type="button" class="btn btn-danger">Cerrar Sesión</a>
                </div>
            </nav>
        </nav>
        <!--
        SIN IMAGEN DE FONDO
        -->
    </body>
</html>

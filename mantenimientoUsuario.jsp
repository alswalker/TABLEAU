<%-- 
    Document   : mantenimientoUsuario
    Created on : 7 oct. 2022, 22:27:53
    Author     : alejandro
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.SrvUsuario_Service"%>
<%@page import="Modelo.SrvUsuario"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimiento Usuario</title>      
        <style>
            <!--
            .inputcentrado {
                text-align: center
            }
            -->
        </style>
    </head>
    <body>
        <%@include file="menuVista.jsp"%>
        <form name="frmMantenimientoUsuario" action="ServletMantenimientoUsuario" method="POST">
            <div align="center">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-3">
                        <div align="center"><p><strong><h3>Búsquedas</h3></strong></p></div>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">ID Usuario</th>
                                    <td><input type="text" name="txtBuscar" class="inputcentrado" value="" /></td>
                                    <td><button type="submit" class="btn btn-info">BUSCAR</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
        <div align="center">
            <div class="row d-flex justify-content-center">
                <div class="col-md-10">
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">ID Usuario</th>
                                <th scope="col">Usuario</th>
                                <th scope="col">Contraseña</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--INSTANCIA SERVICIOS-->
                            <%                                
                                List<Usuario> u;
                                Usuario u1;
                                SrvUsuario_Service user = new SrvUsuario_Service();

                                if (request.getAttribute("ID_USUARIO") != null) {
                                    Integer ID_USUARIO = 0;

                                    ID_USUARIO = Integer.parseInt(request.getAttribute("ID_USUARIO").toString());
                                    u1 = user.getSrvUsuarioPort().listarUsuarioPorID(ID_USUARIO);

                            %>
                            <tr>
                                <th scope="row"><%=u1.getIDUSUARIO()%></th>
                                <th scope="row"><%=u1.getUSUARIO()%></th>
                                <th scope="row"><%=u1.getPASSWORD()%></th>
                                <th><a href="actualizarUsuario.jsp?id=<%=u1.getIDUSUARIO()%>" class="btn btn-primary">Actualizar</a></th>
                                <th><a href="eliminarUsuario.jsp?id=<%=u1.getIDUSUARIO()%>" class="btn btn-danger" >Eliminar</a></th> 
                            </tr>
                            <%

                            } else {
                                u = user.getSrvUsuarioPort().listarUsuario();
                                for (int i = 0; i < u.size(); i++) {
                            %>
                            <tr>
                                <th scope="row"><%=u.get(i).getIDUSUARIO()%></th>
                                <th scope="row"><%=u.get(i).getUSUARIO()%></th>
                                <th scope="row"><%=u.get(i).getPASSWORD()%></th>
                                <th><td><a href="actualizarUsuario.jsp?id=<%=u.get(i).getIDUSUARIO()%>" class="btn btn-primary">Actualizar</a></td></th>
                                <th><a href="eliminarUsuario.jsp?id=<%=u.get(i).getIDUSUARIO()%>" class="btn btn-danger"  >Eliminar</a></th>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>    
        </div>
    </body>
</html>

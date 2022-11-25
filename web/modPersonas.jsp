<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Persona</title>
    </head>
    <body>
        <h1>Modificar Persona</h1>
        <h3>Ingrese los datos de la persona</h3>

        <%
            Persona perso = (Persona) request.getSession().getAttribute("perso");
        %>

        <form action="SvModificar" method="POST">
             <input type="hidden" name="id" value="<%=perso.getId()%>">
            <p><b>Dni: </b> <input name="dni" type="text" value="<%=perso.getDni()%>"></p>
            <p><b>Nombre: </b> <input type="text" name="nombre" value="<%=perso.getNombre()%>"></p>
            <p><b>Apellido: </b> <input type="text" name="apellido" value="<%=perso.getApellido()%>"></p>
            <p><b>Teléfono: </b> <input type="text" name="telefono" value="<%=perso.getTelefono()%>"></p>

            <br>
            <button type="submit">modificar</button>
        </form>
    </body>
</html> 
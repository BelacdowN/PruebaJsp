
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la Persona</h1>
            <form action="SvPersona" method="POST">
            <p><label>Dni: </label> <input type="text" name="dni"></p> 
            <p><label>Nombre: </label> <input type="text" name="nombre"></p> 
            <p><label>Apellido: </label> <input type="text" name="apellido"></p> 
            <p><label>Teléfono: </label> <input type="text" name="telefono"></p> 
                <button type="submit" >Enviar</button>
            </form>

        <h1>Ver lista de Personas</h1>
            <p>Si desea ver todos las personas haga click en el botón mostrar personas</p> 
            <form action="SvPersona" method="Get"> 
                <button type="submit" >Mostrar Personas</button> 
            </form>

        <h1>Eliminar Personas</h1>
            <p>Ingrese el ID de la persona a eliminar</p>
            <form action="SvEliminar" method="POST">
            <p><label for="idEliminar">ID: </label> <input id="idELiminar" type="text" name="id_eliminar"></p> 
            <button type="submit">Eliminar</button>
            </form>
            
        <h1>Modificar Personas</h1>
            <p>Ingrese el ID de la persona a modificar</p>
            <form action="SvModificar" method="GET">
            <p><label for="idModificar">ID: </label> <input id="idModificar" type="text" name="id_buscar"></p> 
            <button type="submit">Ver</button>
            </form>
    </body>
</html>

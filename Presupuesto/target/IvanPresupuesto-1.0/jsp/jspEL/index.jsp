<%-- 
    Document   : index
    Created on : 20-oct-2017, 16:34:35
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elegir Seguro</title>
    </head>
    <body>
        <div>
            <h2>¡Elija su seguro!</h2>
            <form action="../../eleccion" method="post">
                <table>
                    <tr>
                        <td>¿Qué tipo de seguro quiere?</td>
                    </tr>
                    <tr>
                        <td><label for="edificio">Seguro de edificios</label></td>
                        <td><input type="checkbox" name="edificio" value="edificio" id="edificio" checked/></td>
                    </tr>
                    <tr>
                        <td><label for="contenido">Seguro de contenido</label></td>
                        <td><input type="checkbox" name="contenido" value="contenido" id="contenido" checked/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>

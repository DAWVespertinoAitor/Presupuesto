<%-- 
    Document   : contenido
    Created on : 20-oct-2017, 16:41:31
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Continente</title>
    </head>
    <body>
        <div>
            <h2>Detalles de la póliza de contenidos</h2>
            <form action="../../contenido" method="post">
                <table>
                    <tr>
                        <td><label for="daños">Cubrir daños accidentales:</label></td>
                        <td><input type="checkbox" name="danios" value="danios" id="daños" checked/></td>
                    </tr>
                    <tr>
                        <td>Cantidad que quiere asegurar: </td>
                        <td>
                            <select name="cantidad">
                                <option value="10000">10.000</option>
                                <option value="20000">20.000</option>
                                <option value="30000">30.000</option>
                                <option value="50000">50.000</option>
                                <option value="100000">100.000</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Franquicia:</td>
                        <td>
                            <input type="radio" name="franquicia" value="0" id="no" checked/>
                            <label for="no">Ninguna</label>
                            <input type="radio" name="franquicia" value="500" id="500"/>
                            <label for="500">500</label>
                            <input type="radio" name="franquicia" value="1000" id="1000"/>
                            <label for="1000">1.000</label> 
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="enviar" value="Enviar"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>

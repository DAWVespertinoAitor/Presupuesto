<%-- 
    Document   : edificio
    Created on : 20-oct-2017, 16:41:12
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edificio</title>
    </head>
    <body>
        <div>
            <h2>Detalles de la póliza de edificios</h2>
            <form action="../../edificio" method="post">
                <table>
                    <tr>
                        <td>Tipo de edificio:</td>
                        <td>
                            <select name="tipo">
                                <option value="piso">Piso</option>
                                <option value="casa">Casa</option>
                                <option value="adosado">Adosado</option>
                                <option value="duplex">Duplex</option>
                                <option value="chalet">Chalet</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Número de habitaciones:</td>
                        <td>
                            <select name="habitaciones">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5 o más</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha de construcción:</td>
                        <td>
                            <select name="fecha">
                                <option value="1949">Anterior a 1950</option>
                                <option value="1950">Entre 1950 - 1990</option>
                                <option value="1991">Entre 1991 - 2005</option>
                                <option value="2006">Entre 2006 - 2015</option>
                                <option value="2016">Posterior a 2015</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tipo de construcción:</td>
                        <td>
                            <input type="radio" name="material" value="madera" id="madera" checked/>
                            <label for="madera">Madera</label>
                            <input type="radio" name="material" value="hormigon" id="hormigon"/>
                            <label for="hormigon">Hormigón</label>
                        </td>
                    </tr>
                    <tr>
                        <td>Valor estimado en el mercado:</td>
                        <td>
                           <select name="valor">
                                <option value="25000">Menos de 50.000</option>
                                <option value="50001">Entre 50.001 - 80.000</option>
                                <option value="80001">Entre 80.001 - 100.000</option>
                                <option value="100001">Entre 100.001 - 150.000</option>
                                <option value="150.001">Mas de 150.000</option>
                            </select> 
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

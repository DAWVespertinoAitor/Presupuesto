<%-- 
    Document   : visualizar
    Created on : 22-oct-2017, 20:05:50
    Author     : Ivan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar Poliza</title>
    </head>
    <body>
        <c:set var="edificioSes" scope="page" value="${sessionScope.edificio}"/>
        <c:set var="contenidoSes" scope="page" value="${sessionScope.contenido}"/>
        <c:set var="edificio" scope="page" value="false"/>
        <c:set var="contenido" scope="page" value="false"/>
        <fmt:setLocale value ="es_ES"/>
        <div>
            <h2>Detalles de la póliza</h2>
            <c:if var="edifTiene" test="${edificioSes!=null}">
                <c:out value="JSTL"/>
                <c:set var="edificio" scope="page" value="true"/>
                <div style="float:left; margin: 10%;">
                    <h3>Edificio</h3>
                    <p>Tipo de edificio: <c:out value="${edificioSes.getTipo()}"/></p>
                    <p>Habitaciones: <c:out value="${edificioSes.getHabitaciones()}"/></p>
                    <p>Fecha de construcción: <c:out value="${edificioSes.getFecha()}"/></p>
                    <p>Tipo de construcción: <c:out value="${edificioSes.getMaterial()}"/></p>
                    <p>Valor de mercado: <c:out value="${edificioSes.getValor()}"/></p>
                    <p class="res">Prima: <fmt:formatNumber value="${edificioSes.getPrima()}" type="currency"/></p>
                </div>
            </c:if>
            <c:if var="contTiene" test="${contenidoSes!=null}">
                <c:set var="contenido" scope="page" value="true"/>
                <div style="float:left;  margin: 10%;">
                    <h3>Contenido</h3>
                    <c:if var="cubiertos" test="${contenidoSes.getDaños()}">
                        <p>Daños cubiertos</p>
                    </c:if>
                        <p>Cantidad: <c:out value="${contenidoSes.getCantidad()}"/></p>
                    <p>Franquicia: <c:out value="${contenidoSes.getFranquicia()}"/></p>
                    <p class="res">Prima: <fmt:formatNumber value="${contenidoSes.getPrima()}" type="currency"/></p>
                </div>
            </c:if>
            <c:if var="calcular" test="${edificio && contenido}">
                <h3>Total: <fmt:formatNumber value="${contenidoSes.getPrima()+edificioSes.getPrima()}" type="currency"/>
            </c:if>
            <c:if var="calcular" test="${edificio && contenido==null}">
                <h3>Total: <fmt:formatNumber value="${edificioSes.getPrima()}" type="currency"/>
            </c:if>
            <c:if var="calcular" test="${contenido && edificio==null}">
                <h3>Total: <fmt:formatNumber value="${contenidoSes.getPrima()}" type="currency"/>
            </c:if>
            
        </div>
    </body>
</html>

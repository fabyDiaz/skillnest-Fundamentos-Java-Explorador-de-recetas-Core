<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle de Receta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

    <div class="nav">
        <a href="/recetas">Lista de recetas</a>
    </div>
    
    <div class="content">
        <c:choose>
            <c:when test="${not empty ingredientes}">
                <div class="titulo">
                    <h1>Receta: ${nombre}</h1>
                </div>
                <div class="ContenedorRecetas">
                    <h3 class="subtitulo">Ingredientes:</h3>
                    <ul class="listaRecetas">
                        <c:forEach var="ingrediente" items="${ingredientes}">
                            <li>
                                <span class="itemReceta">${ingrediente}</span>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </c:when>
            <c:otherwise>
                <div class="titulo">
                    <h1>Receta no encontrada</h1>
                </div>
                <div class="ContenedorRecetas">
                    <p class="mensaje-error">${mensaje}</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

</body>
</html>
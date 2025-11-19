<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recetas</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

     <div class="nav">
            <a href="#">Lista de recetas</a>
        </div>
        <div class="content">
	        <div class="titulo">
	            <h1>Mis Recetas</h1>
	        </div>
	        <div class="ContenedorRecetas">
	            <ul class="listaRecetas">
		            <c:forEach var="receta" items="${listaRecetas}">
			            <li>
			                <a class="itemReceta" href="/detalle/${receta}">${receta}</a>
			            </li>
		            </c:forEach>
	            </ul>
	        </div>
        </div>
</body>
</html>
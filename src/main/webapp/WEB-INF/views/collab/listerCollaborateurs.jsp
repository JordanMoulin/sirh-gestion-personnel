<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<title>SGP - App</title>
	</head>
	<body>
	<a href="<c:url value='nouveau' />">Lien</a>
		<h1>Les collaborateurs</h1>
		<ul>
		<c:forTokens var="nom" items="${listeNoms}" delims=",">
			<li> ${nom} </li>
		</c:forTokens>
		</ul>
	</body>
</html>
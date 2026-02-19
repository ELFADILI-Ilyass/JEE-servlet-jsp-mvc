<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="nom" value="Ilyass" />

<h2>Affichage avec JSTL</h2>
<p>Nom: <c:out value="${nom}" /></p>

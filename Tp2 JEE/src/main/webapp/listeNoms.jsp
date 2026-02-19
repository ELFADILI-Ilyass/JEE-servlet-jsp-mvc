<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<String> liste = (List<String>) session.getAttribute("listeNoms");
    if (liste == null) {
        liste = new ArrayList<>();
    }

    String nom = request.getParameter("nom");
    if (nom != null && !nom.trim().isEmpty()) {
        liste.add(nom.trim());
    }

    session.setAttribute("listeNoms", liste);
%>

<h2>Liste des noms</h2>

<form>
  Nom: <input name="nom" required>
  <button type="submit">Ajouter</button>
</form>

<ul>
  <c:forEach var="n" items="${listeNoms}">
    <li><c:out value="${n}"/></li>
  </c:forEach>
</ul>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Gestion des Produits (MVC)</h2>

<c:if test="${not empty erreur}">
  <p style="color:red"><c:out value="${erreur}"/></p>
</c:if>

<h3>Ajouter un produit</h3>

<form action="GestionProduitsServlet" method="post">
  <input type="hidden" name="action" value="ajouter">
  Id: <input type="number" name="idProduit" required>
  Nom: <input name="nomProduit" required>
  Prix: <input type="number" step="0.01" name="prixProduit" required>
  <button type="submit">Ajouter</button>
</form>

<hr>

<h3>Liste des produits</h3>

<c:catch var="ex">
<table border="1" cellpadding="6">
  <tr>
    <th>ID</th><th>Nom</th><th>Prix</th><th>Action</th>
  </tr>

  <c:forEach var="p" items="${listeProduits}">
    <tr>
      <td><c:out value="${p.idProduit}"/></td>
      <td><c:out value="${p.nomProduit}"/></td>
      <td><c:out value="${p.prixProduit}"/></td>
      <td>
        <form action="GestionProduitsServlet" method="post" style="display:inline">
          <input type="hidden" name="action" value="supprimer">
          <input type="hidden" name="idProduit" value="${p.idProduit}">
          <button type="submit">Supprimer</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
</c:catch>

<c:if test="${not empty ex}">
  <p style="color:red">Exception capturée: <c:out value="${ex}"/></p>
</c:if>

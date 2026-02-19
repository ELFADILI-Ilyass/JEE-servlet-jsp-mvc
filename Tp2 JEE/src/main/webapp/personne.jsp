<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="p" class="beans.Personne" scope="session" />
<jsp:setProperty name="p" property="*" />

<h2>Saisie Personne</h2>

<form>
  Nom: <input name="nom" required><br><br>
  Prénom: <input name="prenom" required><br><br>
  Âge: <input type="number" name="age" required><br><br>
  <button type="submit">Valider</button>
</form>

<hr>

<h3>Résultat</h3>
<p>Nom: <c:out value="${p.nom}"/></p>
<p>Prénom: <c:out value="${p.prenom}"/></p>
<p>Âge: <c:out value="${p.age}"/></p>

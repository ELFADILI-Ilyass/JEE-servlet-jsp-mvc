<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Test âge</h2>

<form method="post">
  Age: <input type="number" name="age" required>
  <button type="submit">Tester</button>
</form>

<c:if test="${not empty param.age}">
  <c:choose>
    <c:when test="${param.age > 18}">
      <h3>Majeur</h3>
    </c:when>
    <c:otherwise>
      <h3>Mineur</h3>
    </c:otherwise>
  </c:choose>
</c:if>

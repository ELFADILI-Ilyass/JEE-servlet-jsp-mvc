<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Contact</title></head>
<body>
<h2>Formulaire de contact</h2>

<form action="ContactServlet" method="post">
  Nom: <input type="text" name="nom" required><br><br>
  Email: <input type="email" name="email" required><br><br>
  Message: <textarea name="message" required></textarea><br><br>
  <button type="submit">Envoyer</button>
</form>

</body>
</html>

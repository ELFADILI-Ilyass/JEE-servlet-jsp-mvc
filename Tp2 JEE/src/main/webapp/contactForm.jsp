<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="contact" class="beans.ContactBean" scope="request" />

<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Confirmation</title></head>
<body>
<h2>Confirmation de soumission</h2>

<p><b>Nom:</b> ${contact.nom}</p>
<p><b>Email:</b> ${contact.email}</p>
<p><b>Message:</b> ${contact.message}</p>

</body>
</html>

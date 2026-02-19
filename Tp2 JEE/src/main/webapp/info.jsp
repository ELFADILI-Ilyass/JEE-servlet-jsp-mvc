<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Info</title></head>
<body>

<h2>Date et heure actuelles :</h2>
<p><%= new Date() %></p>

<%
    String nom = "Ilyass";
    int age = 22;
    String adresse = "Mohammedia";
%>

<p>Nom : <%= nom %></p>
<p>Âge : <%= age %></p>
<p>Adresse : <%= adresse %></p>

</body>
</html>

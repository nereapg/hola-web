<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Un JSP es una pagina web con Java</h1>

<% 
	//esto es un striplet y sirve para escribir Java
	for (int i=0; i<6;i++){
		out.print("<h"+i+">Cabecera H"+i+"</h"+i+">");
	}
	String saludo = "Ongi etorri";
%>

<p>Saludo: <%=saludo%></p>	

<%
	Receta marmitako = new Receta("marmitako");
	//TODO meter ingredientes y resto de atributos
	marmitako.setImagen("http://www.clubcampos.com/upload/recetas/gourmet_elaboradas/MarmitakodeAtunCampos.jpg");
%>

<h2><%=marmitako.getTitulo()%></h2>

<img src="<%=marmitako.getImagen()%>"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eghosa- Home Page</title>
<link href="images/eagunu-logo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Hello Wellcome, To Daniel Overo DevOps Wep Developer Application</h1>
<h1 align="center">Maven Application Real Time World Scenarion Optimization</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<%
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName());
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mithunlogo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Daniel DevOps,
		321 beach 57th,
		Farrockawy Ny,
		+(929) 316-5900.
		<br>
		<a href="mailto:eagunuworld@gmail.com">Mail to Dan Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Eghosa Agunu DevOps.</p>
<p align=center><small>Copyrights 2024 by <a href="http://eghosa4live.com/">Eghosa DevOps Project</a> </small></p>

</body>
</html>

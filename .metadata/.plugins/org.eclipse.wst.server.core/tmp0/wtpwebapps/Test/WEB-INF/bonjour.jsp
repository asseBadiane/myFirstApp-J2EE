<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
	<body>
	<%@ include file="menu.jsp" %>
        <p><c:out value="Bonjour Diadieuffff!" /></p>

	<%@ include file="menu.jsp" %>
		<p>Bonjour ${ !empty name ? name : '' }</p>
        <p>${ noms[2] }</p>
		
		<%-- <p>Bonjour  
		<%
		String name = (String) request.getAttribute("name");
		out.println(name);
		%>
		! </p --%>>
		<%
		String bye = (String) request.getAttribute("variable");
		String person = (String) request.getAttribute("person");
		if (person == "Mamy"){
			out.println(bye);
		} else {
			out.println("Au revoir!");
		}
		%>
	</body>
</html>
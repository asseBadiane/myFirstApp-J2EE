<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
	<body>
	<%-- <%@ include file="menu.jsp" %>
        <p><c:out value="Bonjour Diadieuffff!" /></p>

	<%@ include file="menu.jsp" %>
		<p>Bonjour ${ !empty name ? name : '' }</p>
        <p>${ noms[2] }</p>
		
		<p>Bonjour  
		<%
		String name = (String) request.getAttribute("name");
		out.println(name);
		%>
		! </p>
		<%
		String bye = (String) request.getAttribute("variable");
		String person = (String) request.getAttribute("person");
		if (person == "Mamy"){
			out.println(bye);
		} else {
			out.println("Au revoir!");
		}
		%>

		<c:if test="${ 50 > 10 }" var="variable">
    C'est vrai !
</c:if>

<c:choose>
    <c:when test="${ variable }">Du texte</c:when>
    <c:when test="${ autreVariable }">Du texte</c:when>
    <c:when test="${ encoreUneAutreVariable }">Du texte</c:when>
    <c:otherwise></c:otherwise>
</c:choose> --%>

 <c:if test="${ !empty nom }"><p><c:out value="Bonjour, vous vous appelez ${ nom }" /></p></c:if>
        
        <form method="post" action="bonjour">
            <label for="nom">Nom : </label>
            <input type="text" name="nom" id="nom" />
            
            <input type="submit" />
        </form>
	</body>
</html>

<jsp:useBean id="calcular" class="beans.BeanJsp" type="beans.BeanJsp" scope="page"></jsp:useBean>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix = "myprefix"  uri="WEB-INF/testetag.tld"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Curso JSP</title>
</head>

<body>

<c:set var = "numero" value="${100/2}"></c:set>

<c:choose>

	<c:when test="${numero > 50}">
	
		<c:out value="${' Valor maior que 50'}"></c:out>
	
	</c:when>
	
	
	<c:when test="${numero < 50}">
	
		<c:out value="${' Valor menor que 50'}"></c:out>
	
	</c:when>
	
	<c:otherwise>
	
		<c:out value="${'valor não satisfaz nenhuma condição'}"></c:out>
	
	</c:otherwise>


</c:choose>

<p/>
<p/>
<p/>
<p/>

<c:set var = "numero" value="${100/2}"></c:set>

<c:forEach var ="n" begin="1" end="${numero}">
	
	Item : ${n}
	<br/>	

</c:forEach>

<p/>
<p/>
<p/>
<p/>

<c:set var = "numero" value="${100/10}"></c:set>

<c:forTokens items="Odair-Pedroso-Junior" delims="-" var="nome_quebrado">

	Novo nome : <c:out value="${nome_quebrado}"></c:out>
	<br/>

</c:forTokens>

<p/>
<p/>
<p/>
<p/>


<c:url value="/acessoliberado.jsp" var="acesso">

	<c:param name="param1" value="111"></c:param>
	<c:param name="param2" value="222"></c:param>
	
</c:url>

${acesso}




<p/>
<p/>
<p/>
<p/>

<c:set var = "numero" value="${100/1}"></c:set>

<c:if test="${numero > 50}">

	<c:redirect url="acessoliberado.jsp"></c:redirect>	

</c:if>

<c:if test="${numero < 50}">

	<c:redirect url="acessonegado.jsp"></c:redirect>	

</c:if>




<p/>
<p/>
<p/>
<p/>

	
	<form action ="LoginServlet" method="post">
	
		Login:	
		<input type="text" id="Login" name="Login">
		<br/>
		Senha:
		<input type="text" id="senha" name="senha">
		<br/>
		<input type="submit" value="Logar">	
	
	
	</form>
	
	
	
		
		
	
	
	
</body>
</html>
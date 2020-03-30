<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        
        <%--Odpowiedź do zadania - w przypadku użycia c:out, kod html lub js nie
        jest interpretowany, nie da się więc uruchomić na stronie skryptu
        przesyłając go formularzem :)--%>
        <h1>Zad1: Cześć, ${os.firstName} ${os.lastName}!</h1>
        <a href="mailto:${os.email}">click to mail!</a>
        
        <h1>Zad2: Cześć, <c:out value="${os.firstName} ${os.lastName}"/>!</h1>
         <a href="mailto:<c:out value="${os.email}"/>">click to mail!</a>
         
         <c:forEach items="${dniTygodnia}" var="dzien">
            <p>
                ${dzien}
            </p>
        </c:forEach>
    </body>
</html>
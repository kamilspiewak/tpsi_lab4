<%-- 
    Document   : personList
    Created on : 2020-03-30, 17:33:10
    Author     : Kamil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <c:forEach items="${osoby}" var="os">
                <tr>
                    <td>${os.firstName}</td>
                    <td>${os.lastName}</td>
                    <td>${os.email}</td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>

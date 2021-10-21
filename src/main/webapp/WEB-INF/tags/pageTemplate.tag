<%-- 
    Document   : pageTemplate
    Created on : Oct 21, 2021, 6:44:48 PM
    Author     : ASUS
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="pageTitle"%>

<!DOCTYPE html>
<html>
    <head>
        <title>${pageTitle}}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:doBody/>Hello World!
    </body>
</html>

<%-- any content can be specified here e.g.: --%>
<h2>${message}</h2>
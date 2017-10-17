<%--
  Created by IntelliJ IDEA.
  User: Win10
  Date: 10/14/2017
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring MVC form application</title>
</head>
<body>
<%@ include file="header.jsp" %>

<h2>Hello from home.jsp page of spring-mvc-form project, springmvcform module!</h2>
<p>Welcome to my project of form handling in Spring MVC</p>
<p>Go to user registration
    <a href="http://localhost:8080/springmvcform/form.do">form</a></p>

<a href="${pageContext.request.contextPath}/form.do?lang=en_US">English</a> - <a href="${pageContext.request.contextPath}/form.do?lang=de_DE">German</a>
<a href="${pageContext.request.contextPath}?lang=en_US">ENmain</a> - <a href="${pageContext.request.contextPath}?lang=de_DE">DEmain</a>
<!-- cannot change language on home page, changing language only works for userForm page-->
Locale: ${pageContext.response.locale}

<%@ include file="footer.jsp" %>
</body>
</html>

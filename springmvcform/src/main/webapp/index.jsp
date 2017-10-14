<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Spring MVC form application</title>
</head>
<body>

<h2>Hello from spring-mvc-form project, springmvcform module!</h2>
<p>Welcome to my project of form handling in Spring MVC</p>
<p>Go to user registration
    <a href="http://localhost:8080/springmvcform/form.do">form</a></p>

<a href="${pageContext.request.contextPath}/form.do?lang=en_US">English</a> - <a href="${pageContext.request.contextPath}/form.do?lang=de_DE">German</a>
<a href="${pageContext.request.contextPath}?lang=en_US">ENmain</a> - <a href="${pageContext.request.contextPath}?lang=de_DE">DEmain</a>
<!-- cannot change language on index page, changing language only works for userForm page-->
Locale: ${pageContext.response.locale}
</body>
</html>

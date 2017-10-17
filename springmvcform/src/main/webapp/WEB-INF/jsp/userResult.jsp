<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%--
  Created by IntelliJ IDEA.
  User: Win10
  Date: 10/9/2017
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%@ include file="header.jsp" %>

<h2><spring:message code="result.header"/></h2>
<table>
    <tr>
        <td><spring:message code="Username"/></td>
        <td>${u.username}</td>
    </tr>
    <tr>
        <td><spring:message code="Email"/></td>
        <td>${u.email}</td>
    </tr>
    <tr>
        <td><spring:message code="Password"/></td>
        <td>${u.password}</td>
    </tr>
    <tr>
        <td><spring:message code="Details"/></td>
        <td>${u.details}</td>
    </tr>
    <tr>
        <td><spring:message code="BirthDate"/></td>
        <td>${u.birthDate}</td>
    </tr>

    <tr>
        <td><spring:message code="Gender"/></td>
        <td>${u.gender}</td>
    </tr>

    <tr>
        <td><spring:message code="Country"/></td>
        <td>${u.country}</td>
    </tr>
    <tr>
        <td><spring:message code="NonSmoking"/></td>
        <td>${u.nonSmoking}</td>
    </tr>
    <tr>
        <td><spring:message code="CCNumber"/></td>
        <td>${u.ccNumber}</td>
    </tr>
    <tr>
        <td><spring:message code="PictureSize"/></td>
        <td>${pictureSize}</td>
    </tr>
    <tr>
        <td><spring:message code="Picture"/></td>
        <td>
            <a  href="${pageContext.request.contextPath}/userPictures/${fileName}">link ka slici</a>
        </td>
    </tr>

</table>

<%@ include file="footer.jsp" %>
</body>
</html>

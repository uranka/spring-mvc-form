<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%--
  Created by IntelliJ IDEA.
  User: Win10
  Date: 10/9/2017
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration form</title>
    <style type="text/css">
        .formFieldError { background-color: #FFC; }
    </style>
</head>
<body>
<spring:message code="welcome"/>
Locale: ${pageContext.response.locale}
<h2>User registration form</h2>
<mvc:form modelAttribute="user" action="result.do" enctype="multipart/form-data">
    <table>
        <tr>
            <td><mvc:label path="username"><spring:message code="Username"/></mvc:label></td>
            <td><mvc:input path="username" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="username" /></td> <!-- here write error message for username-->
        </tr>
        <tr>
            <td><mvc:label path="email">Email</mvc:label></td>
            <td><mvc:input path="email" cssErrorClass="formFieldError" /></td>
            <td><mvc:errors path="email" /></td> <!-- here write error message for email-->
        </tr>
        <tr>
            <td><mvc:label path="password">Password</mvc:label></td>
            <td><mvc:password path="password" cssErrorClass="formFieldError" /></td>
            <td><mvc:errors path="password" /></td> <!-- here write error message for password-->
        </tr>
        <tr>
            <td><mvc:label path="details">Details</mvc:label></td>
            <td><mvc:textarea path="details" /></td>
        </tr>
        <tr>
            <td><mvc:label path="birthDate">Birth Date</mvc:label></td>
            <td><mvc:input path="birthDate" /></td>
        </tr>
        <tr>
            <td><mvc:label path="gender">Gender</mvc:label></td>
            <td><mvc:radiobuttons path="gender" items="${genders}"/></td>
        </tr>
        <tr>
            <td><mvc:label path="country">Country</mvc:label></td>
            <td><mvc:select path="country" items="${countries}"/></td>
        </tr>
        <tr>
            <td><mvc:label path="nonSmoking">Non Smoking</mvc:label></td>
            <td><mvc:checkbox path="nonSmoking" /></td>
        </tr>
        <tr>
            <td><mvc:label path="ccNumber">Credit Card Number</mvc:label></td>
            <td><mvc:input path="ccNumber" cssErrorClass="formFieldError"/></td>
            <td><mvc:errors path="ccNumber" /></td> <!-- here write error message for ccnumber-->
        </tr>
        <tr>
            <td><mvc:label path="picture">Choose Picture</mvc:label></td>
            <td><mvc:input type="file" path="picture"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit" />
            </td>
        </tr>
    </table>
</mvc:form>



</body>
</html>

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
<h2>User registration result</h2>
<table>
    <tr>
        <td>Username</td>
        <td>${u.username}</td>
    </tr>
    <tr>
        <td>Email</td>
        <td>${u.email}</td>
    </tr>
    <tr>
        <td>Password</td>
        <td>${u.password}</td>
    </tr>
    <tr>
        <td>Detail</td>
        <td>${u.details}</td>
    </tr>
    <tr>
        <td>Birth Date</td>
        <td>${u.birthDate}</td>
    </tr>

    <tr>
        <td>Gender</td>
        <td>${u.gender}</td>
    </tr>

    <tr>
        <td>Country</td>
        <td>${u.country}</td>
    </tr>
    <tr>
        <td>Non-Smoking</td>
        <td>${u.nonSmoking}</td>
    </tr>
    <tr>
        <td>Credit card number</td>
        <td>${u.ccNumber}</td>
    </tr>

</table>
</body>
</html>

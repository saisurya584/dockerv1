<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List of Tour Details</h2>
<table border="1">
<tr>
   <th>FirstName</th>
   <th>LastName</th>
   <th>Email</th>
   <th>Contact</th>
   <th>StartDate</th>
   <th>EndDate</th>
</tr>
<c:forEach var="f" items="${mm}">
      <tr>
        <td>${f.firstName}</td>
        <td>${f.lastName}</td>
        <td>${f.email}</td>
        <td>${f.mobile}</td>
        <td>${f.startDate}</td>
        <td>${f.endDate}</td>
        
      </tr>
</c:forEach>
</table>


</body>
</html>
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
   <th>NavigatorName</th>
   <th>Email</th>
   <th>Contact</th>
   <th>Location</th>
   <th>StartDate</th>
   <th>EndDate</th>
</tr>
<c:forEach var="f" items="${ff}">
      <tr>
        <td>${f.guideName}</td>
        <td>${f.guideEmail}</td>
        <td>${f.guideMobile}</td>
        <td>${f.location}</td>
        <td>${f.startDate}</td>
        <td>${f.endDate}</td>
        
      </tr>
</c:forEach>
</table>


</body>
</html>
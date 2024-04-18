<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="com.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body{
            background-image: url("https://images.unsplash.com/flagged/photo-1592544858330-7ac10a0468e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29vcmd8ZW58MHx8MHx8fDA%3D&w=1000&q=80");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .div1
        {
            height: 250px;
            width:250px;
            background-color: grey;
            text-align: center;
            font-size: larger;
            font-weight: bolder;
            padding-top: 50px;
           
             float: left;
            margin-left: 2%;
        }
        .div1:hover
        {
          height:300px;
          width:300px;
          background-color:back;
          color: white;
        }
        a
        {
        color:white;
        }
    </style>
</head>
<body>
<h1>welcome coorg</h1>


<c:forEach var="ss" items="${ffl}">
   <a href="select?NavigatorId=${ss.id}&email=${check}"> 
        <div class="div1">
        ${ss.firstName}<br>
        ${ss.lastName}<br>
        ${ss.mobile}<br>
        ${ss.email}<br>
        </a>
       </div>
       
 </c:forEach>
 
</body>
</html>
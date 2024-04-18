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
            background-image: url("https://revolvingcompass.com/wp/wp-content/uploads/2023/06/Wayanad_Mayookham_4.jpg");
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
<h1>welcome wayanad</h1>


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
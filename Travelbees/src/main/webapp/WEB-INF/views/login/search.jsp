<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #s
        {
            width: 500px;
            height: 50px;
            border-radius: 10px;
            border-color:black;
            margin-left: 30%;
            margin-top: 10%;
            text-align: center;
            font-size: 20px;
        }
        .d
        {
            width: 100px;
            height: 55px;
            background-color: rgb(141, 139, 137);
            border-radius: 5px;
            border-color: white;
            font-size: 15px;
        }
        body{
         background-color: cornsilk;
        }
        h1{
            text-align: center;
            font-family:cursive;
            margin-top: 8%;

        }
        .s1
        {
        margin-left:45%;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            overflow: hidden;
            background-color: #333;
        }
        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .dropdown {
            float: left;
            overflow: hidden;
        }
        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }
        .navbar a:hover, .dropdown:hover .dropbtn {
            background-color: #ddd;
            color: black;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #ddd;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        #ho
        {
           margin-left: 65%;
        }
    </style>
    
</head>
<body>
<div class="navbar">
    <a href="home" id="ho">Home</a>
    <a href="#home">Services</a>
     <a href="myBooking?email=${de}">MyBooking</a>
    
    
    
    
    <div class="dropdown">
        <button class="dropbtn">Login
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="login">Tourist</a>
            <a href="login1">Navigator</a>
            <a href="login2">Coordinator</a>
        </div>
    </div>
    <a href="contact">Contacts</a>
</div>

    <h1>TravelBee</h1>
    <div class="div1">
    <form action="search" method="post">
    <input type="text" name="search" placeholder="Search Places" id="s">
    <input type="submit" value="Search" class="d">
    <input type="hidden" value= ${ de} name ="email">
    <h2 style="color:red" class="s1">${msg}</h2>
    <h2 style="color:red" class="s1">${message}</h2>
    </div>
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Bar</title>
    <style>
       
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
        body{
            background-image: url("https://wallpapercave.com/wp/wp8788367.jpg");
            background-repeat: no-repeat;
            background-size: auto;
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
    
    
    <div class="dropdown">
        <button class="dropbtn">Locations
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="login">Wayanad</a>
            <a href="login">Coorg</a>
            <a href="login">Goa</a>
            <a href="login">Ladakh</a>
            <a href="login">Araku</a>
        </div>
    </div>
    
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

<!-- Your page content goes here -->

</body>
</html>

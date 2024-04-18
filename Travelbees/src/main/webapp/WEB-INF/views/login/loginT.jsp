<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tourist Login</title>
    <style>
	
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image:url("Security.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
        }

        .container {
            margin: 100px auto;
            max-width: 300px;
            border: 1px solid #ccc;
            padding: 16px;
            border-radius: 6px;
            box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
            background-color: #fff; 
        }
        .input-field {
            display: block;
            margin-bottom: 20px;
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }
        .login-button {
            background-color: #2c2fab;
            color: white;
            padding: 10px 40px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
        .login-button:hover {
            background-color: #45a049;
        }
        .forgot-password {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #2196F3;
            font-size: 14px;
        }
        body{
            background-image: url("https://images.pexels.com/photos/1371360/pexels-photo-1371360.jpeg?cs=srgb&dl=pexels-te-lensfix-1371360.jpg&fm=jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Tourist Login</h2>
         <h3 style="color:red">${b}</h3>
        <form action="logint" method="get">
            <input type="text" class="input-field" placeholder="Email" name="email" required>
            <input type="password" class="input-field" placeholder="Password" name="password" required>
            <h3 style="color:red">${msg}</h3>
            <button type="submit" class="login-button">Login</button>
        </form>
        <a href="forget" class="forgot-password">Forgot Password</a>
	<a href="register" class="register">Register</a>
    </div>
</body>
</html>

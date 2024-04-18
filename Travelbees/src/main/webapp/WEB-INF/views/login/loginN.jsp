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
            background-image: url("https://images.unsplash.com/photo-1600714480856-dc99b28892eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dG91ciUyMGd1aWRlfGVufDB8fDB8fHww&w=1000&q=80");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Navigator Login</h2>
        <form action="loginnav" method="get">
            <input type="text" class="input-field" placeholder="Email" name="email" required>
            <input type="password" class="input-field" placeholder="Password" name="password" required>
             <h3 style="color:red">${msg}</h3>
            <button type="submit" class="login-button">Login</button>
        </form>
        <a href="forgetp" class="forgot-password">Forgot Password</a>
	<a href="regis" class="register">Register</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
	    background-image:url("forgot-password.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
        }
        .container {
            margin: 100px auto;
            max-width: 300px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
        .reset-password-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
        .reset-password-button:hover {
            background-color: #45a048;
        }
        .forgot
        {
            padding: 10px;
           text-decoration: none;
           color: black;
           background-color: rgb(177, 177, 224);
           text-align: center;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <form action="forgetPassword"  method="post">
            <input type="text" class="input-field" placeholder="Email" name="email" required>
            <h3 style="color:red">${sai}</h3>
            <button type="submit" class="reset-password-button">Reset Password</button>
	       <a href="login" class="forgot">Back</a>
        </form>
        
    </div>
</body>
</html>
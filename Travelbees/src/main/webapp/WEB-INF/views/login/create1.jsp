<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tourist Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
	    background-image:url("tourist.jpg");
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
            border-radius: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
        .register-button {
             background-color: #45a049;
            color: white;
            padding: 5px 10px;
            border: right;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .register-button:hover {
            background-color: #45a049;
        }
	.back-button {
             background-color: #45a049;
            color: white;
            padding: 5px 10px;
            border: left;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Tourist Details</h2>
        <form action="regi" method="post">
	    <input type="text" class="input-field" placeholder="Firstname" name="firstName" required>
	    <input type="text" class="input-field" placeholder="Lastname" name="lastName" required>
	    <input type="text" class="input-field" placeholder="Mobile" name="mobile" required>
	    
	    <input type="email" class="input-field" placeholder="Email" name="email" required>
	    <input type="password" class="input-field" placeholder="Password" name="password" required>
            <button type="submit" class="register-button">Register/Sign Up</button>
	    
        </form><br><br>
        <form action="back" method="post">
        <button type="submit" class="back-button">back</button>
        
        </form>
    </div>
</body>
</html>
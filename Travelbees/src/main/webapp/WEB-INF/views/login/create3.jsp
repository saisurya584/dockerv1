<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
	    background-image:url("Lock.jpg");
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
        .create-account-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
        .create-account-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Account</h2>
        <form action="sigin3" method="post">
	    <input type="text" class="input-field" placeholder="Firstname" name="firstName" required>
	    <input type="text" class="input-field" placeholder="Lastname" name="lastName" required>
	    <input type="email" class="input-field" placeholder="Email" name="email" required>
	    <input type="text" class="input-field" placeholder="Mobile" name="mobile" required>
	    <input type="password" class="input-field" placeholder="Password" name="password" required>
	    <input type="text" class="input-field" placeholder="adhaar" name="adhaar" required>
	    <input type="text" class="input-field" placeholder="location" name="location" required>
	    	    <input type="text" class="input-field" placeholder="address" name="address" required>
            <button type="submit" class="create-account-button">Create Account</button>
        </form>
    </div>
</body>
</html>
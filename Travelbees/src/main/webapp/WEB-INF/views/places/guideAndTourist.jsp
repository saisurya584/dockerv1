<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        label
        {
            margin-left: 5px;
            font-weight: bolder;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>TouriseDetails</h2>
        <form action="sigin1" method="post">
        
	    <input type="hidden" class="input-field" placeholder="Firstname" name="guideName" value=${ ms.firstName}${ms.lastName} required>
       
	    <input type="hidden" class="input-field" placeholder="Email" name="guideEmail" value=${ ms.email} required>
        
	    <input type="hidden" class="input-field" placeholder="Mobile" name="guideMobile" value=${ ms.mobile}  required>
	    <input type="hidden" class="input-field" placeholder="location" name="location" value=${ ms.location}  required>
	    <input type="hidden" class="input-field"  name="navigatorId" value=${ ms.id} required>


        
            <label >FirstName</label>
            <input type="text" class="input-field" placeholder="Firstname" name="firstName" value=${ rr.firstName} required>
            <label >LastName</label>
            <input type="text" class="input-field" placeholder="Lastname" name="lastName" value=${ rr.lastName} required>
            <label >Email</label>
            <input type="email" class="input-field" placeholder="Email" name="email" value=${ rr.email} required>
            <label >Mobile</label>
            <input type="text" class="input-field" placeholder="Mobile" name="mobile" value=${ rr.mobile} required>
            <label >AdhaarNumber</label>
            <input type="text" class="input-field" placeholder="adhaarNumber" name="adhaar" required>
            <label >StartDate</label>
            <input type="date" class="input-field" placeholder="StartDate" name="startDate" required>
            <label >EndDate</label>
            <input type="date" class="input-field" placeholder="EndDate" name="endDate" required>
            <input type="hidden" class="input-field"  name="touristId" value=${ rr.id} required>
            
	 
            <button type="submit" class="create-account-button">submit</button>
        </form>
    </div>
</body>
</html>
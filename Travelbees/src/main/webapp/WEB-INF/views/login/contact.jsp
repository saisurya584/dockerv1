<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Get in Touch</title>
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
            padding: 60px;
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
        .submit-button {
            background-color: #2c2fab;
            color: white;
            padding: 10px 40px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
        body{
            background-image: url("https://media.istockphoto.com/id/942996712/photo/couple-of-tourists.jpg?s=612x612&w=0&k=20&c=R768_jQ226Hc06YKCa0BzrYlnRQPljxv7BJM9h46N2U=");
            background-repeat: no-repeat;
            background-size: cover;
        }
        
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Get in Touch</h2>
        <form>
            <input type="text" class="input-field" placeholder="Enter Your Name" name="enter your name" required >
            <input type="text" class="input-field" placeholder="Enter Your Email" name="email" required  >
	    <input type="text" class="input-field" placeholder="Enter Your Message" name="message" required >
            <button type="submit" class="submit-button">Submit</button>
        </form>

  	<p class="mx-auto">Contact Information</p>

          <div class="my-6">
            <div class="my-8">
              <i class="fa-solid fa-map-marker-alt fa-md"></i>
              <label>Address:</label>
              <span class="text-sky-500 hover:text-teal-700">
                Hyderabad, India</span
              >
            </div>

            <div class="my-8">
              <i class="fa-solid fa-envelope fa-md"></i>
              <label>Email:</label>
              <a
                href="mailto:travelbee@gmail.com"
                class="text-sky-500 hover:text-teal-700"
                >travelbee@gmail.com</a
              >
            </div>
          </div>
    </div>
</body>
</html>
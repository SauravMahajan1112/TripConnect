<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveler Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {

        }
        .background {
            background-image: url('/img/fbi.jpg');
            background-size: cover; /* Scales the image to cover the entire container */
            background-position: center; /* Centers the image */
            height: 700px; /* Sets height */
            width: 100%; /* Sets width to full */
            z-index: 1;
            position: relative;
        }

        /* Container styling */
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            padding: 40px;
            border-radius: 20px; /* Rounded corners */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3); /* Shadow effect */
            margin: 0 auto; /* Center the container horizontally */
            width: 50%; /* Width of the container */
            text-align: center;
            position: absolute; /* Absolute positioning */
            top: 50%; /* Center vertically relative to the parent */
            left: 50%; /* Center horizontally relative to the parent */
            transform: translate(-50%, -50%); /* Adjust for centering */
            z-index: 2; /* Layer above the background */
        }
        h1 {
            color: #004085;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }
        p {
            font-size: 1.2rem;
            color: #333;
        }
        .btn {
            border-radius: 8px;
            padding: 10px 20px;
            font-size: 1.1rem;
            transition: all 0.3s;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-success:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="background"></div>
<!--  <img src="/img/fbi.jpg" height="700px" width="">-->
    <div class="container">
        <h1>Welcome to Traveler Management System</h1>
        <p class="text-center">Effortlessly manage all traveler data in one place with our streamlined system.</p>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

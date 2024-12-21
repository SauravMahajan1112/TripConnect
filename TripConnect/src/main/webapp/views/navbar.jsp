<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveler Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://source.unsplash.com/1600x900/?travel,nature');
            background-size: cover;
            background-position: center;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important;
            font-weight: bold;
        }
        .navbar-brand:hover, .nav-link:hover {
            color: #ffcc00 !important;
        }
        .jumbotron {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
            margin-top: 50px;
            text-align: center;
        }
        .jumbotron h1 {
            font-size: 2.5rem;
            color: #333;
        }
        .jumbotron p {
            font-size: 1.2rem;
            color: #555;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">TravelBuddy</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home-page">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add-page">Add Traveler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="display-traveller">Display Travelers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="display-traveller">Update Traveler</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="display-traveller">Delete Traveler</a>
                </li>
            </ul>
        </div>
    </nav>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

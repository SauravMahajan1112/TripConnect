<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveller Data Display</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            font-family: 'Poppins', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            margin-bottom: 30px;
        }
        .container {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-top: 30px;
        }
        .table {
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
        }
        .table-hover tbody tr:hover {
            background-color: rgba(79, 172, 254, 0.1);
        }
        .btn {
            border-radius: 5px;
            transition: all 0.3s ease;
        }
        .btn-warning:hover {
            background-color: #ffc107;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .btn-danger:hover {
            background-color: #dc3545;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        #saurav{
        	width:40%;
        }
    </style>
</head>
<body>

    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="container">
        <h1 class="text-center">All Traveller Data</h1>

        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="table-primary">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Travel Date</th>
                        <th scope="col">Gender</th>
                        <th scope="col">DOB</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                
                    <c:forEach var="t" items="${Travel}">
                        <tr>
                            <th scope="row">${t.id}</th>
                            <td>${t.name}</td>
                            <td>${t.email}</td>
                            <td>${t.destination}</td>
                            <td>${t.ph}</td>
                            <td>${t.travelDate}</td>
                            <td>${t.gender}</td>
                            <td>${t.dateOfBirth}</td>
                            <td id="saurav">
                                <a href="view-traveller?id=${t.id}" class="btn btn-warning">UPDATE</a>
                                <a href="delete-traveller?id=${t.id}" class="btn btn-danger">DELETE</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

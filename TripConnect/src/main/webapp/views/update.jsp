<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Traveler</title>
<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background: linear-gradient(to right, #4facfe, #00f2fe);
	color: #333;
}

.form-heading {
	text-align: center;
	margin-top: 30px;
	font-size: 32px;
	color: #fff;
	font-weight: bold;
}

.traveler-form {
	max-width: 600px;
	margin: 30px auto;
	padding: 25px;
	background: #ffffff;
	border-radius: 10px;
	box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
	transition: transform 0.3s ease;
}

.traveler-form:hover {
	transform: translateY(-5px);
}

.traveler-form label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #555;
}

.traveler-form input, .traveler-form select, .traveler-form button {
	width: 100%;
	padding: 12px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
	transition: border-color 0.3s ease;
}

.traveler-form input:focus, .traveler-form select:focus {
	border-color: #4facfe;
	outline: none;
}

.traveler-form button {
	background-color: #4facfe;
	color: #fff;
	border: none;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.3s ease, box-shadow 0.3s ease;
}

.traveler-form button:hover {
	background-color: #00f2fe;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}
</style>
</head>
<body>
	<h2 class="form-heading">Update Traveler</h2>
	<form action="update-traveller" method="POST" class="traveler-form">

		<label for="Id">Id:</label> <input type="text" id="id" name="id" value="${t.id}">
		<!-- Name -->
		<label for="name">Name:</label> <input type="text" id="name"
			name="name" value="${t.name}"required>

		<!-- Email -->
		<label for="email">Email:</label> <input type="email" id="email"
			name="email" value="${t.email}"required>

		<!-- Destination -->
		<label for="destination">Destination:</label> <input type="text"
			id="destination" name="destination" value="${t.destination}"required>

		<!-- Phone Number -->
		<label for="ph">Phone Number:</label> <input type="number" id="ph"
			name="ph" placeholder="Enter 10-digit number" value="${t.ph}"required>

		<!-- Travel Date -->
		<label for="travelDate">Travel Date:</label> <input type="date"
			id="travelDate" name="travelDate"value="${t.travelDate}" required>

		<!-- Gender -->
		<label for="gender">Gender:</label> <select id="gender" name="gender"value="${t.gender}"
			required>
			<option value="" disabled selected>Select Gender</option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			<option value="Other">Other</option>
		</select>

		<!-- Date of Birth -->
		<label for="dateOfBirth">Date of Birth:</label> <input type="date"
			id="dateOfBirth" name="dateOfBirth" value="${t.dateOfBirth}"required>

		<!-- Submit Button -->
		<button type="submit" class="submit-button">Update</button>
	</form>
	<script>
		document.querySelector('.traveler-form').addEventListener('submit',
				function(event) {
					const phone = document.getElementById('ph').value;
					if (phone.length !== 10) {
						alert('Phone number must be exactly 10 digits long.');
						event.preventDefault();
					}
				});
	</script>
</body>
</html>

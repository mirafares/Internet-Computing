<?php
$servername = "localhost";
$username = "root";
$password = "Mira1234.";
$dbname = "cp476";

// Create a connection to the MySQL database
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check the connection
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Grade Manager</title>
</head>
<body>
	<h1>Grade Manager</h1>
	<form method="post" action="redirected.php">
	<fieldset>
			<legend>Override test grade</legend>
			<label for="studentID">Student ID:</label>
			<input type="text" id="studentID" name="studentID" maxlength="9"><br><br>
			<label for="courseCode">Course Code:</label>
			<input type="text" id="courseCode" name="courseCode" min="5" max="5">
			<br><br>
			<label for="Test1">Test 1:</label>
			<input type="number" id="Test1" name="Test1" min="0" max="100">
			<br><br>
			<label for="Test2">Test 2:</label>
			<input type="number" id="Test2" name="Test2" min="0" max="100">
			<br><br>
			<label for="Test3">Test 3:</label>
			<input type="number" id="Test3" name="Test3" min="0" max="100">
			<br><br>
			<label for="finalExam">Final Exam:</label>
			<input type="number" id="finalExam" name="finalExam" min="0" max="100">
			<br><br>
	</fieldset><br>
	<input type="submit" value="View Table">

	<?php
	// Select table
$sql = "SELECT * FROM final";
$result = mysqli_query($conn, $sql);
// Print table
echo "<table border=1>";
echo "<tr><th>Student ID</th><th>Student Name</th><th>Course Code</th><th>Final Grade</th></tr>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $row['studentID'] . "</td>";
	echo "<td>" . $row['studentName'] . "</td>";
	echo "<td>" . $row['courseCode'] . "</td>";
    echo "<td>" . $row['finalGrade'] . "</td>";
    // Repeat for each column in your table
    echo "</tr>";
}
echo "</table>";
?>
	</form>
	</body>
	</html>
	

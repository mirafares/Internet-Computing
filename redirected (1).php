<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the user input from the form
	$studentID = $_POST['studentID'];
	$courseCode = $_POST['courseCode'];
	$Test1 = $_POST['Test1'];
	$Test2 = $_POST['Test2'];
	$Test3 = $_POST['Test3'];
	$finalExam = $_POST['finalExam'];

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

    if (!empty($studentID)) {
        $updateQuery = "UPDATE course SET ";

        $updateValues = array();

        if (!empty($Test1)) {
            $updateQuery .= "Test1 = ?, ";
            $updateValues[] = $Test1;
        }
        if (!empty($Test2)) {
            $updateQuery .= "Test2 = ?, ";
            $updateValues[] = $Test2;
        }
        if (!empty($Test3)) {
            $updateQuery .= "Test3 = ?, ";
            $updateValues[] = $Test3;
        }
        if (!empty($finalExam)) {
            $updateQuery .= "finalExam = ?, ";
            $updateValues[] = $finalExam;
        }

        // Remove the trailing comma and space
        $updateQuery = rtrim($updateQuery, ", ");

        // Add the WHERE clause to update the specific student's grades
        $updateQuery .= " WHERE studentID = ? AND courseCode = ?";

        // Prepare the SQL statement
        $stmt = mysqli_prepare($conn, $updateQuery);

        // Bind the parameters to the placeholders
        $values = array_merge($updateValues, [$studentID, $courseCode]);
        $types = str_repeat('s', count($values));

        mysqli_stmt_bind_param($stmt, $types, ...$values);

		// Execute the SQL statement
		if (mysqli_stmt_execute($stmt)) {
			mysqli_stmt_close($stmt);
			echo "Test marks updated successfully.";
			
			// Rebuild Final Table
			$sql = "TRUNCATE TABLE final";
			mysqli_query($conn, $sql);
            
			$sql = "INSERT INTO final (studentID, studentName, courseCode, finalGrade) 
			SELECT name.studentID, name.studentName, course.courseCode, (course.Test1*0.2 + course.Test2*0.2 + course.Test3*0.2 + course.finalExam *0.40) AS finalGrade 
			FROM name
			JOIN course ON name.studentID = course.studentID";
			mysqli_query($conn, $sql);

		} else {
			echo "Error updating test marks: " . mysqli_error($conn);
		}


	}

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
}
mysqli_close($conn);
?>

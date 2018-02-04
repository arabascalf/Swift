<!DOCTYPE html>
<html>
	<head>
		<title>Table</title>
	</head>

	<body>
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>
			<?php
			$conn = mysqli_connect("localhost", "root", "fararoni", "Liverpool");

			if ($conn- > connect_error) {
				die("Connection failed:" .$conn- > connect_error);
			}

			$sql = "SELECT id, name FROM product";

			$result = $conn- > query($sql);

			if ($result- > num_rows > 0) {
				while($row = $result- > fetch_assoc()){
					echo "<tr><td>". $row["id"] ."</td><td>" . $row["name"]. "</td></tr>";
				}

				echo "</table>";
			}
			else {
				echo "0 result";
			}

			$conn- > close();
			?>
		</table>
	</body>
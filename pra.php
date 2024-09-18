<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

// Establish database connection
$db = mysqli_connect('localhost', 'root', '', 'att');

if (!$db) {
    die('Error: Unable to connect to the database.');
}

$reg = "23UCSE2154";
$data = [];

// Query to fetch subjects
$sql = "SELECT s.subid, c.subname 
        FROM students s
        INNER JOIN class c ON s.subid = c.subid
        WHERE s.regno='$reg';";

$result = mysqli_query($db, $sql);

if (!$result) {
    die('Error: Unable to fetch data from the database.');
}

// Loop through the subjects
while ($row = mysqli_fetch_assoc($result)) {
    $subid = $row['subid'];
    $subname = $row['subname'];

    // Query to fetch attendance for the subject
    $sql2 = "SELECT atten FROM atte WHERE regno='$reg' AND subid='$subid';";
    $result2 = mysqli_query($db, $sql2);

    if (!$result2) {
        die('Error: Unable to fetch attendance data from the database.');
    }

    $total_attendance = mysqli_num_rows($result2);
    $present_count = 0;

    // Calculate total present count
    while ($attendance_row = mysqli_fetch_assoc($result2)) {
        if ($attendance_row['atten'] == "Present") {
            $present_count++;
        }
    }

    // Calculate attendance percentage
    $attendance_percentage = 0;

    if ($total_attendance > 0) {
        $attendance_percentage = ($present_count / $total_attendance) * 100;
    }

    // Append data to the array
    $data[] = [
        'subid' => $subid,
        'subname' => $subname,
        'at' => $attendance_percentage
    ];
}

// Output JSON data
echo json_encode($data);
?>


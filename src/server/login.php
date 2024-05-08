<?php
include_once("db_connect.php");

// Set headers to allow CORS
header("Access-Control-Allow-Origin: *"); // Update with your Angular application's origin
header("Access-Control-Allow-Methods: POST, OPTIONS"); // Include OPTIONS method
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Check if the request method is OPTIONS (preflight request)
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200); // Return 200 OK for preflight requests
    exit();
}

// Check if POST data is present
$postdata = file_get_contents("php://input");

if (isset($postdata) && !empty($postdata)) {
    // Decode JSON data
    $request = json_decode($postdata);

    // Validate email and password
    if (!empty($request->email) && !empty($request->password)) {
        $email = mysqli_real_escape_string($mysqli, trim($request->email));
        $password = mysqli_real_escape_string($mysqli, trim($request->password));

        // Query the database
        $sql = "SELECT * FROM faculty_account WHERE faculty_email = '$email' AND faculty_password = '$password'";
        $result = mysqli_query($mysqli, $sql);

        // Check if query was successful
        if ($result) {
            $nums = mysqli_num_rows($result);
            if ($nums > 0) {
                // User exists, login successful
                $data = array('success' => true, 'message' => 'Login successful', 'email' => $email);
                http_response_code(200);
                echo json_encode($data);
            } else {
                // User does not exist or password is incorrect
                $data = array('success' => false, 'message' => 'Invalid email or password');
                http_response_code(401);
                echo json_encode($data);
            }
        } else {
            // Handle SQL query error
            $data = array('success' => false, 'message' => 'Database error');
            http_response_code(500);
            echo json_encode($data);
        }
    } else {
        // Invalid request
        $data = array('success' => false, 'message' => 'Email and password are required');
        http_response_code(400);
        echo json_encode($data);
    }
} else {
    // Invalid request
    $data = array('success' => false, 'message' => 'No data provided');
    http_response_code(400);
    echo json_encode($data);
}
?>
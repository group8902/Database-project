<?php
// Database connection configuration
$host = 'localhost'; // Replace with your DB host
$dbname = 'citizen participation system'; // Replace with your DB name
$user = 'root'; // Replace with your DB username
$password = ''; // Replace with your DB password

// Establish database connection using PDO
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Function to register a new user
function registerUser($pdo, $username, $email, $password) {
    // Check if username or email already exists
    $query = "SELECT * FROM users WHERE username = :username OR email = :email";
    $stmt = $pdo->prepare($query);
    $stmt->execute(['username' => $username, 'email' => $email]);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Debug: Print the entire POST array to check for issues
        echo "<pre>";
        print_r($_POST);
        echo "</pre>";
    
        // Check if keys exist before accessing them
        $username = isset($_POST['username']) ? trim($_POST['username']) : null;
        $email = isset($_POST['email']) ? trim($_POST['email']) : null;
        $password = isset($_POST['password']) ? trim($_POST['password']) : null;
    
        // Validate inputs
        if (!empty($username) && !empty($email) && !empty($password)) {
            // Call the function to register the user
            registerUser($pdo, $username, $email, $password);
        } else {
            echo "All fields are required!";
        }
    }
    
}
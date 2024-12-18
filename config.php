<?php
// Database Connection
$host = 'localhost';
$dbname = 'citizen participation system'; 
$username = 'root';
$password = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// User Registration
if (isset($_POST['register_user'])) {
    $firstName = $_POST['first_name'];
    $lastName = $_POST['last_name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $role = $_POST['role'];

    try {
        $sql = "INSERT INTO Users (first_name, last_name, email, password_hash, role) 
                VALUES (:first_name, :last_name, :email, :password, :role)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':first_name' => $firstName,
            ':last_name' => $lastName,
            ':email' => $email,
            ':password' => $password,
            ':role' => $role
        ]);
        echo "User registered successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

// Feedback Submission
if (isset($_POST['submit_feedback'])) {
    $userId = $_POST['user_id'];
    $title = $_POST['feedback_title'];
    $description = $_POST['feedback_description'];

    try {
        $sql = "INSERT INTO Feedback (user_id, title, description, submission_date, upvotes, downvotes, status) 
                VALUES (:user_id, :title, :description, CURRENT_TIMESTAMP, 0, 0, 'open')";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':user_id' => $userId,
            ':title' => $title,
            ':description' => $description
        ]);
        echo "Feedback submitted successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

// Submit Comment
if (isset($_POST['submit_comment'])) {
    $suggestionId = $_POST['suggestion_id'];
    $userId = $_POST['user_id'];
    $commentText = $_POST['comment_text'];

    try {
        $sql = "INSERT INTO Comments (suggestion_id, user_id, comment_text, comment_date) 
                VALUES (:suggestion_id, :user_id, :comment_text, CURRENT_TIMESTAMP)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':suggestion_id' => $suggestionId,
            ':user_id' => $userId,
            ':comment_text' => $commentText
        ]);
        echo "Comment added successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
// Poll
if (isset($_POST['create_poll'])) {
    $title = $_POST['poll_title'];
    $description = $_POST['poll_description'];
    $closingDate = $_POST['closing_date'];
    $createdBy = $_POST['created_by'];

    try {
        $sql = "INSERT INTO Polls (title, description, creation_date, closing_date, created_by) 
                VALUES (:title, :description, CURRENT_TIMESTAMP, :closing_date, :created_by)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':title' => $title,
            ':description' => $description,
            ':closing_date' => $closingDate,
            ':created_by' => $createdBy
        ]);
        echo "Poll created successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}


// Submit Vote
if (isset($_POST['submit_vote'])) {
    $pollId = $_POST['poll_id'];
    $userId = $_POST['user_id'];
    $voteOption = $_POST['vote_option'];

    try {
        $sql = "INSERT INTO Votes (poll_id, user_id, vote_option, vote_date) 
                VALUES (:poll_id, :user_id, :vote_option, CURRENT_TIMESTAMP)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':poll_id' => $pollId,
            ':user_id' => $userId,
            ':vote_option' => $voteOption
        ]);
        echo "Vote submitted successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
// Create Project
if (isset($_POST['create_project'])) {
    $title = $_POST['project_title'];
    $description = $_POST['project_description'];
    $startDate = $_POST['start_date'];
    $endDate = $_POST['end_date'];
    $status = $_POST['status']; 
    $createdBy = $_POST['created_by']; 

    try {
        $sql = "INSERT INTO Projects (title, description, start_date, end_date, status, created_by) 
                VALUES (:title, :description, :start_date, :end_date, :status, :created_by)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':title' => $title,
            ':description' => $description,
            ':start_date' => $startDate,
            ':end_date' => $endDate,
            ':status' => $status,
            ':created_by' => $createdBy
        ]);
        echo "Project created successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

// Issue Reporting
if (isset($_POST['report_issue'])) {
    $userId = $_POST['user_id']; 
    $issueTitle = $_POST['issue_title'];
    $issueDescription = $_POST['issue_description'];
    $status = $_POST['status']; 

    try {
        $sql = "INSERT INTO Public_Issues (user_id, issue_title, issue_description, report_date, status) 
                VALUES (:user_id, :issue_title, :issue_description, CURRENT_TIMESTAMP, :status)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':user_id' => $userId,
            ':issue_title' => $issueTitle,
            ':issue_description' => $issueDescription,
            ':status' => $status
        ]);
        echo "Public issue reported successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
// Town Hall Meeting
if (isset($_POST['create_meeting'])) {
    $title = $_POST['meeting_title'];
    $meetingDate = $_POST['meeting_date'];
    $description = $_POST['meeting_description'];
    $locationUrl = $_POST['location_url'];
    $createdBy = $_POST['created_by']; 

    try {
        $sql = "INSERT INTO TownHallMeetings (title, meeting_date, description, location_url, created_by) 
                VALUES (:title, :meeting_date, :description, :location_url, :created_by)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':title' => $title,
            ':meeting_date' => $meetingDate,
            ':description' => $description,
            ':location_url' => $locationUrl,
            ':created_by' => $createdBy
        ]);
        echo "Town Hall Meeting created successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

// Send Notification
if (isset($_POST['send_notification'])) {
    $userId = $_POST['user_id']; 
    $notificationMessage = $_POST['notification_message'];

    try {
        $sql = "INSERT INTO Notifications (user_id, notification_message, sent_date) 
                VALUES (:user_id, :notification_message, CURRENT_TIMESTAMP)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':user_id' => $userId,
            ':notification_message' => $notificationMessage
        ]);
        echo "Notification sent successfully!";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}


?>
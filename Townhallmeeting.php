<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/skiii.css">
    <title>Citizen Participation System</title>
    
</head>
<body>
    <header>
        <h1>Citizen Participation System</h1>
    </header>
     <!-- Navbar -->
     <nav>
        <ul>
        <li><a href="index.php">User Registration</a></li>
            <li><a href="submit.php">Submit Feedback</a></li>
            <li><a href="comment.php">Submit Comment</a></li>
            <li><a href="Poll.php">Create Poll</a></li>
            <li><a href="Submitvote.php">Submit Vote</a></li>
            <li><a href="createproject.php">Create Project</a></li>
            <li><a href="Reportissue.php">Report Issue</a></li>
            <li><a href="Townhallmeeting.php">Schedule Meeting</a></li>
            <li><a href="notification.php">Send Notification</a></li>
        </ul>
    </nav>
    <section id="about" class="about-section">
    <h2> Citizen Participation System</h2>
    <p>
    Engage directly with local leaders and fellow citizens through citizen participation Town Hall Meetings feature. This tool bridges the gap between communities and decision-makers, fostering open dialogue and collaborative problem-solving.
    </p>
    
    <div class="about-content">
        <div class="image-container">
            <img src="images/skii1.png" alt="Citizen Engagement" class="about-image">
            <p><strong>Citizen Engagement</strong></p>
        </div>
        <div class="text-container">
            <h3>Empowering Citizens</h3>
            <p>
                This system empowers citizens by giving them a platform to report issues, participate in polls, 
                and provide feedback to local authorities. Through this participation, citizens can actively contribute to 
                solving community problems and improving the quality of life in their areas.
            </p>
        </div>
    </div>

    <div class="about-content reverse">
        <div class="text-container">
            <h3>Real-Time Project Updates</h3>
            <p>
                With the Citizen Participation System, citizens can track the progress of various community projects in real-time. 
                From public infrastructure to social welfare initiatives, this platform ensures that information is transparent and 
                accessible, keeping everyone informed and involved.
            </p>
        </div>
        <div class="image-container">
            <img src="images/realtime.jpeg" alt="Project Updates" class="about-image">
            <p><strong>Real-Time Updates</strong></p>
        </div>
    </div>

    <div class="about-content">
        <div class="image-container">
            <img src="images/virtual.jpeg" alt="Town Hall Meetings" class="about-image">
            <p><strong>Virtual Town Hall Meetings</strong></p>
        </div>
        <div class="text-container">
            <h3>Virtual Town Hall Meetings</h3>
            <p>
                Our platform facilitates virtual town hall meetings where citizens can engage with local officials, 
                ask questions, share concerns, and discuss important matters in a collaborative environment. 
                This feature fosters direct communication between citizens and their leaders.
            </p>
        </div>
    </div>

    <div class="about-content reverse">
        <div class="text-container">
            <h3>Enhanced Voting System</h3>
            <p>
                Citizens can participate in transparent and secure voting for important decisions affecting the community. 
                This ensures that the views of the majority are considered in key governance matters.
            </p>
        </div>
        <div class="image-container">
            <img src="images/voting.jpeg" alt="Voting" class="about-image">
            <p><strong>Secure Voting</strong></p>
        </div>
    </div>
</section>
<div class="container">
        <!-- Town Hall Meeting -->
        <section id="Schedule Town Hall Meeting">
        <form action="config.php" method="POST">
            <h2>Schedule Town Hall Meeting</h2>
            <input type="text" name="meeting_title" placeholder="Meeting Title" required>
            <input type="date" name="meeting_date" placeholder="Meeting Date" required>
            <textarea name="meeting_description" placeholder="Meeting Description" rows="4" required></textarea>
            <input type="text" name="location_url" placeholder="Location URL (e.g., Google Maps link)" required>
            <input type="number" name="created_by" placeholder="Created By (User ID)" required>
            <button type="submit" name="create_meeting">Schedule Meeting</button>
        </form>
        </section>

    </div>
    </section>    
    <footer>
        <p>&copy; 2024 Citizen Participation System. All rights reserved.</p>
        <p>Contact us: <a href="mailto:sichoiq@gmail.com">sichoiq@gmail.com</a></p>
        <p>Follow us on <a href="https://twitter.com" target="_blank">Twitter</a> and <a href="https://facebook.com" target="_blank">Facebook</a></p>
        <p>&copy; 2024 Citizen Participation System. All rights reserved.</p>
        Designed and Maintained by Sichonga Lweendo<br>
        SIN: 2303485720
        <a href="http://www.icuzambia.net" style="color: #00bcd4; margin: 0 10px; text-decoration: none;">ICU Zambia</a>
        <a href="http://www.zrdc.org" style="color: #00bcd4; margin: 0 10px; text-decoration: none;">ZRDC</a>
      
      
    </footer>
</body>
</html>

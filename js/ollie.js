document.addEventListener('DOMContentLoaded', () => {
    // Helper function to send AJAX requests
    const sendRequest = async (url, data) => {
        try {
            const response = await fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            });
            const result = await response.text();
            alert(result); // Show server response
        } catch (error) {
            console.error('Error:', error);
            alert('An error occurred while processing your request.');
        }
    };

    // User Registration
    const registrationForm = document.getElementById('registrationForm');
    if (registrationForm) {
        registrationForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(registrationForm);
            const data = {
                register_user: true,
                first_name: formData.get('first_name'),
                last_name: formData.get('last_name'),
                email: formData.get('email'),
                password: formData.get('password'),
                role: formData.get('role')
            };

            sendRequest('path/to/your/php/file.php', data); // Update path as needed
        });
    }

    // Feedback Submission
    const feedbackForm = document.getElementById('feedbackForm');
    if (feedbackForm) {
        feedbackForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(feedbackForm);
            const data = {
                submit_feedback: true,
                user_id: formData.get('user_id'),
                feedback_title: formData.get('feedback_title'),
                feedback_description: formData.get('feedback_description')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Submit Comment
    const commentForm = document.getElementById('commentForm');
    if (commentForm) {
        commentForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(commentForm);
            const data = {
                submit_comment: true,
                suggestion_id: formData.get('suggestion_id'),
                user_id: formData.get('user_id'),
                comment_text: formData.get('comment_text')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Create Poll
    const pollForm = document.getElementById('pollForm');
    if (pollForm) {
        pollForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(pollForm);
            const data = {
                create_poll: true,
                poll_title: formData.get('poll_title'),
                poll_description: formData.get('poll_description'),
                closing_date: formData.get('closing_date'),
                created_by: formData.get('created_by')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Submit Vote
    const voteForm = document.getElementById('voteForm');
    if (voteForm) {
        voteForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(voteForm);
            const data = {
                submit_vote: true,
                poll_id: formData.get('poll_id'),
                user_id: formData.get('user_id'),
                vote_option: formData.get('vote_option')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Create Project
    const projectForm = document.getElementById('projectForm');
    if (projectForm) {
        projectForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(projectForm);
            const data = {
                create_project: true,
                project_title: formData.get('project_title'),
                project_description: formData.get('project_description'),
                start_date: formData.get('start_date'),
                end_date: formData.get('end_date'),
                status: formData.get('status'),
                created_by: formData.get('created_by')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Report Issue
    const issueForm = document.getElementById('issueForm');
    if (issueForm) {
        issueForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(issueForm);
            const data = {
                report_issue: true,
                user_id: formData.get('user_id'),
                issue_title: formData.get('issue_title'),
                issue_description: formData.get('issue_description'),
                status: formData.get('status')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Create Town Hall Meeting
    const meetingForm = document.getElementById('meetingForm');
    if (meetingForm) {
        meetingForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(meetingForm);
            const data = {
                create_meeting: true,
                meeting_title: formData.get('meeting_title'),
                meeting_date: formData.get('meeting_date'),
                meeting_description: formData.get('meeting_description'),
                location_url: formData.get('location_url'),
                created_by: formData.get('created_by')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }

    // Send Notification
    const notificationForm = document.getElementById('notificationForm');
    if (notificationForm) {
        notificationForm.addEventListener('submit', (e) => {
            e.preventDefault();

            const formData = new FormData(notificationForm);
            const data = {
                send_notification: true,
                user_id: formData.get('user_id'),
                notification_message: formData.get('notification_message')
            };

            sendRequest('path/to/your/php/file.php', data);
        });
    }
});

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password and Admin Sign-In</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom CSS for attractive styles and animations */
        body {
            background-color: #f8f9fa;
        }

        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
            margin-top: 50px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        .form-container button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .form-container button[type="submit"]:hover {
            background-color: #0056b3; /* Hover effect */
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        
        <div class="col-md-6">
            <div class="form-container">
                <h2>Admin Sign-In</h2>
                <form id="adminSignInForm">
                    <div class="form-group">
                        <input type="email" class="form-control" id="adminEmail" placeholder="Admin Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="adminPassword" placeholder="Admin Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Sign In</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    // JavaScript for displaying a popup message when the form is submitted
    document.getElementById("forgotPasswordForm").addEventListener("submit", function(event) {
        event.preventDefault();
        const email = document.getElementById("email").value;
        alert(`Reset password link has been sent to ${email}`);
    });

    // Add JavaScript for admin sign-in form submission here
    document.getElementById("adminSignInForm").addEventListener("submit", function(event) {
        event.preventDefault();
        // Add code to handle admin sign-in here
    });
</script>
</body>
</html>

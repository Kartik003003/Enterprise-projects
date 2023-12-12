<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Added Successfully</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <style>
body {
  background-color: #f0f0f0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
}

.container {
  text-align: center;
}

.notification {
  display: none;
  max-width: 300px;
  background-color: #4caf50;
  color: #fff;
  border-radius: 5px;
  padding: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  animation: slideIn 1s ease-in-out, fadeOut 1s 2s ease-in-out;
  cursor: pointer;
}

.notification:hover {
  animation: none;
}

.notification-icon {
  font-size: 24px;
}

@keyframes slideIn {
  0% {
    transform: translateX(100%);
  opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}

@keyframes fadeOut {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}

  </style>
</head>
<body>
  <div class="container">
    <div class="notification" id="employee-notification">
      <div class="notification-icon">
        <i class="fas fa-check-circle"></i>
      </div>
      <div class="notification-text">
        Employee Added Successfully!
        <button type="button"><a href="/user">Home</a></button>
      </div>
    </div>
  </div>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
  const notification = document.getElementById("employee-notification");

  setTimeout(function() {
    notification.style.display = "block";
  }, 1000);
});

  </script>
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

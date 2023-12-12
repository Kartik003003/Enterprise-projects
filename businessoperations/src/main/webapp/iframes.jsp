<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iframes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>

<body>
    <div class="container">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="/">Magnus</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="User.jsp">Home </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Employee
                        </a>
                        <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <a class="dropdown-item" href="create">Create</a>
                            <a class="dropdown-item" href="search">Search</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            More
                        </a>
                        <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <a class="dropdown-item" href="multiple">Multiple Tabs</a>
                            <a class="dropdown-item" href="menu">Menu</a>
                            <a class="dropdown-item" href="autocomplete">Autocomplete</a>
                            <a class="dropdown-item" href="content">Collapsible Content</a>
                            <a class="dropdown-item" href="image">Images</a>
                            <a class="dropdown-item" href="slides">Slider</a>
                            <a class="dropdown-item" href="tooltips">Tooltips</a>
                            <a class="dropdown-item" href="popups">Popups</a>
                            <a class="dropdown-item" href="links">Links</a>
                            <a class="dropdown-item" href="css">CSS Properties</a>
                            <a class="dropdown-item" href="iframes">iFrames</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle"  id="productsDropdown" role="button"
                             aria-haspopup="true" aria-expanded="false">
                            <a href="Setting">Setting</a>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="ml-auto">
                <a class="btn btn-success" href="/"><ion-icon name="log-out-outline"
                        style="font-size: 4vh;"></ion-icon>Logout</a>
            </div>
        </nav>
        <br>
        <h1>iframes</h1>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
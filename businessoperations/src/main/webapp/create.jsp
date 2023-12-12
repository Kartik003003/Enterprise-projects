<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details Form</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
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
                        <a class="nav-link" href="/User.jsp">Home </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Employee
                        </a>
                        <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <a class="dropdown-item" href="create">Create</a>
                            <a class="dropdown-item" href="#">Search</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            More
                        </a>
                        <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                            <a class="dropdown-item" href="#">Multiple Tabs</a>
                            <a class="dropdown-item" href="#">Menu</a>
                            <a class="dropdown-item" href="#">Autocomplete</a>
                            <a class="dropdown-item" href="#">Collapsible Content</a>
                            <a class="dropdown-item" href="#">Images</a>
                            <a class="dropdown-item" href="#">Slider</a>
                            <a class="dropdown-item" href="#">Tooltips</a>
                            <a class="dropdown-item" href="#">Popups</a>
                            <a class="dropdown-item" href="#">Links</a>
                            <a class="dropdown-item" href="#">CSS Properties</a>
                            <a class="dropdown-item" href="#">iFrames</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="productsDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Setting
                        </a>
                    </li>
                </ul>
            </div>
            <div class="ml-auto">
                <a class="btn btn-success" href="/"><ion-icon name="log-out-outline"
                        style="font-size: 4vh;"></ion-icon>Logout</a>
                        
            </div>
        </nav>
        <h2>Employee Details Form</h2>
        <video data-v-27edef16="" data-test="video-content" preload="auto" src="https://cdn.dribbble.com/userupload/10563897/file/original-96362454c31d3574f31b80e5843f2b6d.mp4" playsinline="true" loop="loop" draggable="false" class="" autoplay="autoplay"style="height:10vh; width: 10vw;"></video>
        <form id="employeeForm" action="addemp" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="firstName">First Name</label>
                    <input type="text" class="form-control" required name="fname" placeholder="First Name"name="fname">
                </div>
                <div class="form-group col-md-6">
                    <label for="lastName">Last Name</label>
                    <input type="text" class="form-control" id="lastName" placeholder="Last Name"name="lname" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="mobile">Mobile Number</label>
                    <input type="tel" class="form-control" id="mobile" placeholder="Mobile Number" name="mobileno" required>
                </div>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <div class="form-check">
                    <input type="radio" class="form-check-input" id="male" name="gender" value="Male" name="male" required>
                    <label class="form-check-label" for="male">Male</label>
                </div>
                <div class="form-check">
                    <input type="radio" class="form-check-input" id="female" name="gender" value="Female" name="female" required>
                    <label class="form-check-label" for="female">Female</label>
                </div>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <textarea class="form-control" id="address" rows="4" style="height: 8vh;" name="address" required></textarea>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="country">Country</label>
                    <select class="form-control" id="country" name="country" required>
                        <option value="USA" >USA</option>
                        <option value="Canada" >Canada</option>
                        <option value="UK" >UK</option>
                        <option value="Australia" >Australia</option>
                        <option value="France" >France</option>
                        <option value="Germany" >Germany</option>
                        <option value="India" >India</option>
                        <option value="Japan" >Japan</option>
                        <option value="Spain" >Spain</option>
                        <option value="Italy">Italy</option>
                        <!-- Add more countries here -->
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="city">City</label>
                    <select class="form-control" id="city" name ="city" required>
                        <!-- City options will be populated based on the selected country using JavaScript -->
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="skills">Skills</label>
                <select multiple class="form-control" id="skills" name="skills" required>
                    <option value="AWS" >AWS</option>
                    <option value="DevOps" >DevOps</option>
                    <option value="FullStackDeveloper" >Full Stack Developer</option>
                    <option value="Middleware" >Middleware</option>
                    <option value="QA-Automation" >QA Automation</option>
                    <option value="WebServices" >Web Services</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-secondary" id="cancel">Cancel</button>
        </form>
    </div>

    <!-- Include Bootstrap and jQuery JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>

        // JavaScript for populating city options based on the selected country
        const cityOptions = {
            USA: ['New York', 'Los Angeles', 'Chicago', 'San Francisco'],
            Canada: ['Toronto', 'Vancouver', 'Montreal', 'Calgary'],
            UK: ['London', 'Manchester', 'Birmingham', 'Edinburgh'],
            Australia: ['Sydney', 'Melbourne', 'Brisbane', 'Perth'],
            France: ['Paris', 'Marseille', 'Lyon', 'Nice'],
            Germany: ['Berlin', 'Munich', 'Hamburg', 'Cologne'],
            India: ['Delhi', 'Mumbai', 'Bangalore', 'Chennai'],
            Japan: ['Tokyo', 'Osaka', 'Kyoto', 'Hiroshima'],
            Spain: ['Madrid', 'Barcelona', 'Seville', 'Valencia'],
            Italy: ['Rome', 'Milan', 'Venice', 'Florence']
        };

        const countrySelect = document.getElementById('country');
        const citySelect = document.getElementById('city');

        countrySelect.addEventListener('change', () => {
            const selectedCountry = countrySelect.value;
            citySelect.innerHTML = '';

            if (cityOptions[selectedCountry]) {
                cityOptions[selectedCountry].forEach(city => {
                    const option = document.createElement('option');
                    option.value = city;
                    option.textContent = city;
                    citySelect.appendChild(option);
                });
            }
        });
    </script>
</body>

</html>
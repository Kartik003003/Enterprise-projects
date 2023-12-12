<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@page session="false" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                        crossorigin="anonymous">
                    <style>
                        * {
                            padding: 0;
                            margin: 0;
                        }

                        html,
                        body {
                            width: 100%;
                            padding: 1px;
                        }

                        nav {
                            position: relative;

                        }

                        .intro {
                            height: 100vh;
                            width: 100vw;
                        }

                        table td,
                        table th {
                            text-overflow: ellipsis;
                            white-space: nowrap;
                            overflow: hidden;
                        }

                        thead th {
                            color: #fff;
                        }

                        .card {
                            border-radius: .5rem;
                        }

                        .table-scroll {
                            border-radius: .5rem;
                        }

                        .table-scroll table thead th {
                            font-size: 1.25rem;
                        }

                        thead {
                            position: sticky;
                        }

                        /* Custom CSS for animated hover effects and additional styles */
                        .nav-item:hover .dropdown-menu {
                            display: block;
                            transform: translateY(0);
                            opacity: 1;
                        }

                        .nav-item .dropdown-menu {
                            display: none;
                            transform: translateY(10px);
                            opacity: 0;
                            transition: all 0.2s;
                        }

                        .nav-item:hover a.nav-link {
                            color: #007bff;
                            /* Change text color on hover */
                        }

                        .nav-item:hover {
                            background-color: #f8f9fa;
                            /* Change background color on hover */
                        }

                        .nav-item:hover .dropdown-menu a.dropdown-item {
                            background-color: #007bff;
                            /* Change dropdown item background color on hover */
                            color: #fff;
                            /* Change dropdown item text color on hover */
                        }

                        nav {
                            color: #f8f9fa;
                        }
                    </style>
                </head>

                <body>
                    <div style="height: 100vh;">
                    <section class="intro">
                            <div class="bg-image h-100" style="background-color: #7ca6e498;">
                                <nav class="navbar navbar-expand-lg navbar-light " style="width: 100vw;">
                                    <a class="navbar-brand" href="/">Magnus</a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                                        data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                        aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>
                                    <div class="collapse navbar-collapse" id="navbarNav">
                                        <ul class="navbar-nav ml-auto" style="color: #fff;">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="/User.jsp">Home</a>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                    id="navbarDropdownMenuLink1" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                    Employee
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                                                    <a class="dropdown-item" href="create">Create</a>
                                                    <a class="dropdown-item" href="search">Search</a>
                                                </div>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                    id="navbarDropdownMenuLink2" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                    More
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                                                    <a class="dropdown-item" href="multiple">Multiple Tabs</a>
                                                    <a class="dropdown-item" href="menu">Menu</a>
                                                    <a class="dropdown-item" href="autocomplete">Autocomplete</a>
                                                    <a class="dropdown-item" href="content">Collapsible Content</a>
                                                    <a class="dropdown-item" href="images">Images</a>
                                                    <a class="dropdown-item" href="slider">Slider</a>
                                                    <a class="dropdown-item" href="tooltips">Tooltips</a>
                                                    <a class="dropdown-item" href="popups">Popups</a>
                                                    <a class="dropdown-item" href="links">Links</a>
                                                    <a class="dropdown-item" href="css">CSS Properties</a>
                                                    <a class="dropdown-item" href="iFrames">iFrames</a>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="Setting">Setting</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Contact</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="/">Logout</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>


                                <div class="row justify-content-center" style="align-items: center;">
                                    <div class="col-12">
                                        <div class="card">
                                            <div class="card-body p-4">
                                                <div class="table-responsive " data-mdb-perfect-scrollbar="true">
                                                    <h2>List of Employee</h2>
                                                    <table class="table table-striped mb-0">
                                                        <thead style="background-color: #002d72;">
                                                            <tr>
                                                                <th scope="col">First Name</th>
                                                                <th scope="col">Last Name</th>
                                                                <th scope="col">Email</th>
                                                                <th scope="col">Mobile no</th>
                                                                <th scope="col">Date of Birth</th>
                                                                <th scope="col">gender</th>
                                                                <th scope="col">Address</th>
                                                                <th scope="col">Country</th>
                                                                <th scope="col">City</th>
                                                                <th scope="col">Skills</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <sql:setDataSource var="mydb"
                                                                driver="com.mysql.cj.jdbc.Driver"
                                                                url="jdbc:mysql://biglgqh8uk3jdas1jikz-mysql.services.clever-cloud.com:3306/biglgqh8uk3jdas1jikz"
                                                                user="usciqed31zgky9cx"
                                                                password="6v8ytX685mwH6dFv7jQL" />
                                                            <sql:query var="db" dataSource="${mydb}">
                                                                select * from employeedata ;
                                                            </sql:query>
                                                            <spring:forEach items="${db.rows}" var="lst">
                                                                <tr>
                                                                    <td>
                                                                        <spring:out value="${lst.fname}">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.lname }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.email }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.mobileno }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.dob }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.gender }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.address }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.country }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.city }">
                                                                        </spring:out>
                                                                    </td>
                                                                    <td>
                                                                        <spring:out value="${lst.skills }">
                                                                        </spring:out>
                                                                    </td>
                                                                </tr>
                                                            </spring:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>


                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

                </body>

                </html>
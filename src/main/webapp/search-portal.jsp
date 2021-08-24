<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/airplane-plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>
<body>
<%@ include file="/common/navbar.jsp" %>
    
<section class="container-fluid bg">
    <section class="row justify-content-center">
        <div class="row">
            <div class="col">
                <h2 align="center" style="color:black;"><b>FlyAway <br> Ticket Booking</b></h2>
                <br>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">&nbsp;</div>
        <div class="col-sm-12 col-md-6">
            <form action="search" class="form-container">
                <div class="form-group">
                    <label for="date">Date</label>
                    <input type="date"  class="form-control" id="date" name="date" placeholder="Travel Date..">
                </div>
                <div class="form-group">
                    <label for="source">Source</label>
                    <select class="form-control" id="source" name="source">
                    	<option value="">Select Source</option>
                        <option value="Dhaka">Dhaka, Bangladesh</option>
                        <option value="Kolkata">Kolkata, India</option>
                        <option value="Newyork">Newyork, USA</option>
                        <option value="London">London, UK</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="destination">Destination</label>
                    <select class="form-control" id="destination" name="destination">
                    	<option value="">Select Destination</option>
                        <option value="Dhaka">Dhaka, Bangladesh</option>
                        <option value="Kolkata">Kolkata, India</option>
                        <option value="Newyork">Newyork, USA</option>
                        <option value="London">London, UK</option>
                    </select>
                </div>
                <div>
                    <label for="persons">No of Persons</label>
                    <select class="form-control" id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>

                    </select>
                </div>
                <br>
                <button type="submit" class="btn btn-success btn-block" value="Submit">Search Flights</button>
            </form>
        </div>
        <div class="col-sm-6 col-md-3">&nbsp;</div>
    </section>
</section>
<%@ include file="/common/footer.jsp" %>
</body>
</html>
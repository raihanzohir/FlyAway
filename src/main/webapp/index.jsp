<!DOCTYPE html>
<html>
<head>

    <title>FlyAway</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", "sans-serif"}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/flight_home.jpg");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #e5e5e5;
            color: #3b3b3b;
            text-align: center;
        }
        header{
            background-color: steelblue;
        }

    </style>
</head>

<body>
    <%@ include file="/common/navbar.jsp" %>
    
    <header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">        
        <div class="w3-display-centre w3-text-white" style="padding: 15px 48px">
            <span class="w3-jumbo w3-hide-small w3-text-orange">Welcome to FlyAway</span><br>
            <span class="w3-large">Your Flight Booking Partner</span>
        </div>
        <div class="w3-display-left w3-text-white" style="padding: 15px 48px">
            <p><a href="${pageContext.request.contextPath}/search-portal.jsp" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-on"><i class="fa fa-fighter-jet"></i>Book Flights</a></p>
<%--             <p><a href="${pageContext.request.contextPath}/login.jsp" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-on"><i class="fa fa-gear"></i>Admin Login</a></p> --%>
        </div>
    </header>
   <%@ include file="/common/footer.jsp" %>
</body>
</html>
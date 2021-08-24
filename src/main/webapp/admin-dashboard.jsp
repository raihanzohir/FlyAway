<%@page import="java.sql.*"%>
<%@page import="fsjd.course3.flyaway.servlets.Login"%>

<%
	 String driverName = "com.mysql.cj.jdbc.Driver";
	 String connectionUrl = "jdbc:mysql://remotemysql.com:3306/";
	 String dbName = "ajekZWC0ZI";
	 String userId = "ajekZWC0ZI";
	 String password = "tNOQju8GXD";
     
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            background-image: url("img/plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
<%@ include file="/common/navbar.jsp" %>

<%
    if (Login.isLoggedIn) {
%>
<div class="container">
	<div class="row">
		<div class="col-lg-3 col-md-4 col-sm-6 mb-4">
			&nbsp;
		</div>
		<div class="col-lg-6 col-md-8 col-sm-12 mb-8">
			<h2 align="center"><b>Admin Dashboard</b></h2>
		</div>
		<div class="col-lg-3 col-md-4 col-sm-6 mb-4">
			<p align="center"><span><strong>Logged as : <%=Login.email%></strong></span></p>
			<form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Change Password</button>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/add-flight.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Add new Flight</button>
            </form>
            <form method="post" action="${pageContext.request.contextPath}/show-bookings.jsp">
                <button type="submit" class="btn btn-success mb-2 btn-block">Previous bookings</button>
            </form>    
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
            </form>
        </div>		
	</div>    
</div>

<section class="container-fluid">
    <section class="row justify-content-center">
        <section>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">Flight ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Source</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Day</th>
                    <th scope="col">Ticket Price</th>
                </tr>
                </thead>
                <tbody>
                <p style="text-align:center;">
                    <img src="${pageContext.request.contextPath}/img/route.png" alt="route">
                </p>
                <p align="center"><span><strong> Flight Table (Database hosted at <a href="https://remotemysql.com">Remote MySQL</a>)</strong></span></p>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flight";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <tr>
                    <td><%=resultSet.getString("flight_id") %></td>
                    <td><%=resultSet.getString("name") %></td>
                    <td><%=resultSet.getString("source") %></td>
                    <td><%=resultSet.getString("destination") %></td>
                    <td><%=resultSet.getString("days") %></td>
                    <td><%=resultSet.getString("ticket_price") %></td>
                </tr>
                <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table>
        </section>
    </section>
</section>
<%@ include file="/common/footer.jsp" %>
</body>
</html>

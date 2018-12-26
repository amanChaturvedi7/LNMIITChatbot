<%@page import="java.sql.Connection" %>
<%@page import="com.src.isd1.DbManager" %>
<%@page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
  <link rel="stylesheet" href="styles.css">
<meta charset="ISO-8859-1">
<title>LNMBOT</title>
</head>
<body>
	<!--NavBar-->
 <div class="navbar-fixed">
 	<nav class="transparent z-depth-0">
    <div class="nav-wrapper black">
      <a href="http://localhost:8080/isd_team_14/index.html" class="brand-logo"><b>LNMBOT</b></a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="http://localhost:8080/isd_team_14/index.html">Home</a></li>
        <li><a href="http://localhost:8080/isd_team_14/index.html#about">About</a></li>
        <li><a href="http://localhost:8080/isd_team_14/index.jsp#cont">Contact</a></li>
        <li><a href="https://lnmiit17.odoo.com/forum/help-1">Forum</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        <li><a href="http://localhost:8080/isd_team_14/index.html">Home</a></li>
        <li><a href="http://localhost:8080/isd_team_14/index.html#about">About</a></li>
        <li><a href="http://localhost:8080/isd_team_14/index.jsp#cont">Contact</a></li>
        <li><a href="https://lnmiit17.odoo.com/forum/help-1">Forum</a></li>
      </ul>
    </div>
  </nav>
</div>  
	
	
	<!--Enter Query-->
    <div class="container" id="about">
     <div class="row">
        <h2 class="thin-text center-align"><b>How Can I Help You ?</b></h2>
        </div>
        <p class="flow-text">.</p>
    </div>
	<form name="loginForm" method="post" action="DatabaseAccess">
    <div class="row">
      <div class="col-25">
      </div>
      <div class="col-75">
        <textarea id="subject" name="myText" placeholder="Write something.." style="height:100px"></textarea>
      </div>
    </div>
    <button class="btn waves-effect waves-light center-align light-blue darken-1" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
	</form>
	<br/>
	<br/>
	
	
	<h5 align="center"><%
        String a = request.getParameter("answer");

        if(a != null)
            out.println("LNMIIT Bot  :  "+a);
        
    %></h5>
    
	<br/>
	<br/>
	
	<!--Contact-->
     <footer class="page-footer" id="cont">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h3 class="thin-text white-text">Contact Me</h3>
                <p class="white-text text-lighten-4">Made By :</p>
                <ul class="mb">
                <li>Ajendra Singh</li>
                <li>Aman Chaturvedi</li>
                <li>Hardik Gupta</li>
                <li>Junaid Ahmed</li>
                </ul>
                             <div class="row">
                             
              </div>
                </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Other Useful Links :</h5>
                <ul>
                  <li><u><a class="grey-text text-lighten-3" href="https://www.lnmiit.ac.in/">LNMIIT Official Website</a></u></li>
                  <br/>
                  <li><u><a class="grey-text text-lighten-3" href="https://placements.lnmiit.ac.in/">Placement Cell</a></u></li>
                  <br/>
                  <li><u><a class="grey-text text-lighten-3" href="https://www.google.co.in/maps/dir//lnmiit/@26.9363288,75.853483,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x396dba21e8a1d1c9:0x5ab565cce4d44c2b!2m2!1d75.9235233!2d26.9363461">How To Reach ?</a></u></li>
                  <br/>
                 <li><u><a class="grey-text text-lighten-3" href="#!">Sample Application Form</a></u></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © Copyright&nbsp;|&nbsp;Team-14&nbsp;|&nbsp;2017
            <a class="grey-text text-lighten-4 right" href="http://localhost:8080/isd_team_14/index.jsp">Back To Top</a>
            </div>
          </div>
        </footer>

	
	
</body>
</html>
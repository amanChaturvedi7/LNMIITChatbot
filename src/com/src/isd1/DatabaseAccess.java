package com.src.isd1;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Arrays;

/**
 * Servlet implementation class DatabaseAccess
 */
@WebServlet("/DatabaseAccess")
public class DatabaseAccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatabaseAccess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// read form fields
        String username = request.getParameter("myText").toLowerCase();
        String[] splited = username.split("\\b+");
        
        // do some processing here...
         
        // get response writer
        PrintWriter out = response.getWriter();
         
        // build HTML code
       
        /*String htmlRespone = "<html><h2>Response: ";
        if(Arrays.asList(splited).contains("hi")) {
        	htmlRespone += "sup?</h2>"; 
        }
        else {
        	htmlRespone += "nope</h2>"; 
        }
        htmlRespone += "</html>";
         
        // return response
        out.println(htmlRespone);*/
		
		
		
		
		// JDBC driver name and database URL
	      final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	      final String DB_URL="jdbc:mysql://localhost:3306/isdProject";

	      //  Database credentials
	      final String USER = "root";
	      final String PASS = "youngmoney$";

	      // Set response content type
	      response.setContentType("text/html");
	      //PrintWriter out = response.getWriter();
	      String title = "Database Result";
	      
	      String docType =
	         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
	      
	      out.println(docType +
	         "<html>\n" +
	         "<head><title>" + title + "</title></head>\n" +
	         "<body bgcolor = \"#f0f0f0\">\n" +
	         "<h1 align = \"center\">" + title + "</h1>\n");
	      try {
	         // Register JDBC driver
	         Class.forName(JDBC_DRIVER);

	         // Open a connection
	         Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

	         // Execute SQL query
	         Statement stmt1 = conn.createStatement();
	         Statement stmt2 = conn.createStatement();
	         String sql1="";
	         String sql2="";
	         int id = 0;
	         if(Arrays.asList(splited).contains("hi") || Arrays.asList(splited).contains("hey") || Arrays.asList(splited).contains("hello")) {
	        	  id = 1;
	        	  
	         }
	         else if(Arrays.asList(splited).contains("lnmiit") && (Arrays.asList(splited).contains("placements") || Arrays.asList(splited).contains("placement"))) {
	        	  id = 4;
	         }
	         else if(Arrays.asList(splited).contains("lnmiit") && Arrays.asList(splited).contains("nit")) {
	        	  id = 5;
	         }
	         else if(Arrays.asList(splited).contains("lnmiit") && Arrays.asList(splited).contains("thapar")) {
	        	  id = 6;
	         }
	         else if(Arrays.asList(splited).contains("lnmiit") && Arrays.asList(splited).contains("vit")) {
	        	  id = 7;
	         }
	         else if(Arrays.asList(splited).contains("lnmiit") && Arrays.asList(splited).contains("cutoff")) {
	        	  id = 8;
	         }
	         else if(Arrays.asList(splited).contains("ragging")) {
	        	  id = 15;
	         }
	         else if(Arrays.asList(splited).contains("how") && Arrays.asList(splited).contains("are") && Arrays.asList(splited).contains("you")) {
	        	  id = 16;
	         }
	         else if(Arrays.asList(splited).contains("your") && Arrays.asList(splited).contains("name")) {
	        	  id = 17;
	         }
	         else if((Arrays.asList(splited).contains("what") && Arrays.asList(splited).contains("you") && Arrays.asList(splited).contains("do")) || Arrays.asList(splited).contains("functionalities")) {
	        	  id = 18;
	         }
	         else if(Arrays.asList(splited).contains("your") && Arrays.asList(splited).contains("owner")) {
	        	  id = 19;
	         }
	         else if(Arrays.asList(splited).contains("campus")) {
	        	  id = 14;
	         }
	         else if(Arrays.asList(splited).contains("route")||Arrays.asList(splited).contains("directions")||(Arrays.asList(splited).contains("reach") && Arrays.asList(splited).contains("lnmiit"))) {
	        	  id = 20;
	         }
	         else if(Arrays.asList(splited).contains("mnit") && Arrays.asList(splited).contains("lnmiit")) {
	        	  id = 21;
	         }
	         else if(Arrays.asList(splited).contains("facilities")) {
	        	  id = 22;
	         }
	         else if(Arrays.asList(splited).contains("fees") || Arrays.asList(splited).contains("fee")) {
	        	  id = 23;
	         }
	         else if(Arrays.asList(splited).contains("counselling")) {
	        	  id = 9;
	         }
	         else if(Arrays.asList(splited).contains("branches") && Arrays.asList(splited).contains("btech")) {
	        	  id = 10;
	         }
	         else if(Arrays.asList(splited).contains("branches") && Arrays.asList(splited).contains("mtech")) {
	        	  id = 11;
	         }
	         else if(Arrays.asList(splited).contains("branches") && Arrays.asList(splited).contains("msc")) {
	        	  id = 12;
	         }
	         else if(Arrays.asList(splited).contains("branches") && Arrays.asList(splited).contains("phd")) {
	        	  id = 13;
	         }
	         else if(Arrays.asList(splited).contains("lnmiit")) {
	        	  id = 2;
	         }
	         else if(username.isEmpty()) {
	        	 id = -1;
	         }
	         else {
	        	 id = 0;
	        	 sql2 = "INSERT into invalid_queries(query) values('" + username +"')";
		         PreparedStatement ps = conn.prepareStatement(sql2);
		         ps.execute();
	         }
	         
	         sql1 = "SELECT answer FROM queries WHERE id = " + id;
	         ResultSet rs = stmt1.executeQuery(sql1);

	         // Extract data from result set
	         while(rs.next()){
	            //Retrieve by column name
	            String answer;
	            if(username.isEmpty()) {
	            	answer = "enter";
	            }
	            else {
	            	answer = rs.getString("answer");
	            }
	            //Display values
	            
	            //HttpSession session = request.getSession(true);
	            if(username.isEmpty())
	            {
	            	response.sendRedirect( "index.jsp?answer= Please enter something" );
	            }
	            else {
	            	response.sendRedirect( "index.jsp?answer="+answer );
	            }
	          }
	         out.println("</body></html>");

	         // Clean-up environment
	         rs.close();
	         stmt1.close();
	         stmt2.close();
	         conn.close();
	      } catch(SQLException se) {
	         //Handle errors for JDBC
	         se.printStackTrace();
	      } catch(Exception e) {
	         //Handle errors for Class.forName
	         e.printStackTrace();
	      }  //end try
	      
	      String htmlResponse = "<html><button onclick=\"goBack()\" center-align margin-left : 550px style=\"background:blue\">Go Back</button><script>\r\n" + 
	      		"function goBack() {\r\n" + 
	      		"    window.history.back();\r\n" + 
	      		"}\r\n" + 
	      		"</script></html>";
	      out.println(htmlResponse);
	      
	      
	      
	     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

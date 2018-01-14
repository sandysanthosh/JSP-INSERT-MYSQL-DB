Welcome to the JSP-INSERT-MYSQL-DB wiki!
* form:
`
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="sas.*" %>
<%@ page import="sas.school" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container">
  <h2>Vertical (basic) form</h2>
  <form action="/insert.java" method="GET">
    <div class="form-group">
      <label for="id">id:</label>
      <%school sc=new school(); %>
      <input type="text" class="form-control" id="id" placeholder="Enter id" name="id"><%=sc.getId()%>
    </div>
    <div class="form-group">
      <label for="pwd">name:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Enter name" name="pwd"><%=sc.getName()%>
    </div>
    <div class="form-group">
      <label for="pwd">subject:</label>
      <input type="text" class="form-control" id="subject" placeholder="Enter "subject"" name="subject"><%=sc.getSubject()%>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" onclick="NewFile.jsp" class="btn btn-default">Submit</button>
  </form>
</div>
</body>
</html>



insert.java:

package sas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class insert {
	static int status=0;
	  
	public static int insert(String id,String name,String subject){
	
	try{
		  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sandy","root","sandy");
		  school sc=new school();
		//PreparedStatement stmt=con.prepareStatement("select * from family"); 
		PreparedStatement stmt=con.prepareStatement("insert into school values(?,?,?)");
		stmt.setInt(1,sc.getId());
		stmt.setString(2,sc.getName());
		stmt.setString(3,sc.getSubject());
		
		status=stmt.executeUpdate();
		con.close();
		
	}
		
catch(Exception e)
{ 
	System.out.println(e);
}
	return status;
}
}


school.java:


public class school {
	int id;
	String name;
	String subject;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	

}




web.xml:

<?xml version="1.0" encoding="UTF-8"?>
<web-app version="2.5" 
	xmlns="http://java.sun.com/xml/ns/javaee" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
	http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd">
	
   <welcome-file-list>
    <welcome-file>sas/form.jsp</welcome-file>
  </welcome-file-list>
  
  
   <servlet>
    <description>This is the description of my J2EE component</description>
    <display-name>This is the display name of my J2EE component</display-name>
    <servlet-name>test</servlet-name>
    <servlet-class>com.test</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>test</servlet-name>
    <url-pattern>/test</url-pattern>
  </servlet-mapping>
  
  
  
</web-app>`

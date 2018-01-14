<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");
String dob=request.getParameter("dob");
int age=Integer.parseInt(request.getParameter("age"));
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
int telephone=Integer.parseInt(request.getParameter("tno"));
int mobile=Integer.parseInt(request.getParameter("mobile"));
        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/roseindia", "root", "sandy");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into student(firstname,lastname,email,pass,confirm_pass,dob,age,gender,address,country,state,city,telephone,mobile) values('"+fname+"','"+lname+"','"+email+"','"+pass+"','"+cpass+"','"+dob+"',"+age+",'"+gender+"','"+address+"','"+country+"','"+state+"','"+city+"',"+telephone+","+mobile+")");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>

</body>
</html>
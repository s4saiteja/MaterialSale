<%@page import="java.sql.*"%>
<%
String agname=request.getParameter("agname");
String aemail=request.getParameter("aemail");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String loc=request.getParameter("loc");
String gender=request.getParameter("gender");


Class.forName("com.mysql.jdbc.Driver");

String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";

Connection con=DriverManager.getConnection(url,name,pwd);


String sql="insert into areg (agname,aemail,password,phone,gender) values (?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,agname);
ps.setString(2,aemail);
ps.setString(3,password);
ps.setString(4,phone);
ps.setString(5,gender);


int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("agentlogin.jsp?reg=success");
}
%>
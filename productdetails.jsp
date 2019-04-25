<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Material Sale</title>
<!--
Classic Template
http://www.templatemo.com/tm-488-classic
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
       
        <div class="tm-header">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="#" class="navbar-brand tm-site-name">Material Sale</a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                               <!-- <li class="nav-item">
                                    <a href="#agentpm.jsp" class="nav-link">Plot Management</a>
                                </li>-->
								<li class="nav-item ">
                                    <a href="" class="nav-link">Buyer</a>
                                </li>
                                <li class="nav-item active">
                                    <a href="custviewplots.jsp" class="nav-link">View Products</a>
                                </li>
                                <li class="nav-item">
                                    <a href="custbuyplots.jsp" class="nav-link">Purchased Products</a>
                                </li>
                                <li class="nav-item">
                                    <a href="index.html" class="nav-link">Logout</a>
                                </li>
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>
<%@page import="java.sql.*"%>
 <% 
String pid=request.getParameter("id");
System.out.print(pid);

%>
      
        <div class="tm-home-img-container">
            <img src="img/tm-home-img.jpg" alt="Image" class="hidden-lg-up img-fluid">
<% 

  Class.forName("com.mysql.jdbc.Driver");
	Connection	con = DriverManager.getConnection("jdbc:mysql://localhost/msale","root","root");
	ResultSet rs3=null;
	
	Statement st4=con.createStatement();
	rs3=st4.executeQuery("select filepath,id,pname,ptype,pdes,price,agent,quantity from product where id='"+pid+"'");
	
	while(rs3.next())
	{
%>  
<center>
<!-- Mention Directory where your images has been saved-->
 
<img src="img/<%=rs3.getString("filepath") %>" width="160" height="128" style="margin-bottom: 30px;margin-left: 0px;margin-top: 30px;" />
</center>


<center>
<table border="1" style="color: black;width: 500px;"width="18%" height="160"  align="center">
<tr bgcolor="#e8d4b9">
<th>Product Id</th>
<th><%=rs3.getString("id") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Product Name</th>
<th><%=rs3.getString("pname") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Type</th>
<th><%=rs3.getString("ptype") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Description</th>
<th><%=rs3.getString("pdes") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Price</th>
<th><%=rs3.getString("price") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Seller</th>
<th><%=rs3.getString("agent") %></th>
</tr>

<tr bgcolor="#e8d4b9">
<th>Quantity</th>
<th><%=rs3.getString("quantity") %></th>
</tr>
<tr bgcolor="#e8d4b9">
<td> </td>

<th><a style="color:red" href="custviewplots.jsp">Back To Booking </a></th>

</tr>
</table>
</center>
<%
}

%>	

        </div>


        
        <footer class="tm-footer">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        
                        <div class="tm-footer-content-box">
                            
                        </div>
                                                
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        
                        
                    </div>

                    <!-- Add the extra clearfix for only the required viewport 
                        http://stackoverflow.com/questions/24590222/bootstrap-3-grid-with-different-height-in-each-item-is-it-solvable-using-only
                    -->
                    <div class="clearfix hidden-lg-up"></div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                       
                        
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                       
                        
                    </div>


                </div>

                <div class="row">
                    <div class="col-xs-12 tm-copyright-col">
                        <p class="tm-copyright-text">Copyright &copy 2018 Material Sale</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h --> 
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
       
</body>
</html>
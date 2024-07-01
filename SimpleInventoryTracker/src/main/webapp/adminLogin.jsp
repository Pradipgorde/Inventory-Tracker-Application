<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="adminLogin.AdminBean" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
.c1{

margin:auto;
height:250px;
width:500px;
background-color: aqua;
text-align:center;
margin-bottom:80px;

}
h1{
 
 color:red;
 background-color:yellow;
 text-align:center;
}

.header{
  height:50px;
   color:red;
   background-color:aqua;
   text-align:center;
   text-font:bold;
   margin:auto;
 }


.c5{

margin:auto;
height:600px;
weight:80%;
background-color:grey;


}

p{

color:yellow;
text-align:right;
padding-right:50px;


}

h2{

color:yellow;
text-align:left;


}


</style>

<body>


<% 

AdminBean ab = (AdminBean) session.getAttribute("adminlogin");

String msg = (String) request.getAttribute("msg");

%>

<div class="c5">  
<h1 class="header"> Inventory  Tracker Application</h1>
<br>
 <p> <% out.println("Login User:-"+ab.getName()); %>
 <br> <br>
 <a href="logout"> <button> logOut</button> </a>
  </p>
 

<h2> <%  out.println(msg); %>  </h2>

<div class="c1" >

<h1> Choose Your Option Below </h1>

 <h5> <a href="add.html">  <button> Add New Product  </button>  </a> </h5>
 <h5> <a href="veiw"> <button> Show Product Details </button> </a> </h5>
 
</div>


</div>



</body>
</html>
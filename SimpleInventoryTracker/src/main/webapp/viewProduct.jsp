<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="java.util.* , addProduct.* , adminLogin.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>
<style>

table{

  border: 1 px solid;
  width:2px;
  background-color:antiquewhite;
  margin:auto;
  text-align:center;
  width:60%;
  
  

}
div{
    background-color: grey;
    width:80%;
    height:60%;
    text-align:center;
    margin:auto;
}
th{

border:1px solid;

}
td{
border:1px solid;

}
h1{
  
   color:red;
   background-color:aqua;
   text-align:center;
   text-font:bold;
 }
 caption{
  
  background-color:aqua;
  color:red;
  height:25px;
  padding-top:5px;
  margin-bottom:8px;
  text-align:center;
  font-weight:bold;
   
 }

form{
display:inline;
}
.red{
text-align:center;
color:red;

font-weight:bold;
}
header{
margin-right:25px;
padding-right:20px;
text-align:right;
}
</style>


<body>

<header>
<% AdminBean ab = (AdminBean) session.getAttribute("adminlogin");
   %> <p> <% out.println("Login User:-"+ab.getName()); %>
<br> <br>
<a href="logout"> <button> logOut</button> </a>
 </p>
 </header>


<div>



 <h1> Inventory  Tracker Application</h1>
 <br> 
 
  <a href="add.html"> <button> Add Product   </button></a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  <form action="searchproduct" method="post"> 
    <input type="text"  name="pname"  placeholder="Enter Product Name">
    <button type="submit"> Search Product </button>
   </form>
  <br> <br>
 
<table>
<caption> All Product Details </caption> 

<tr> 
 <th> Product Name </th> 
 <th> Product Qty </th>
 <th> Product Rate </th>
 <th> Total Amount </th>
 <th> Update/Delete </th>
 <tr> 
 
 <% ArrayList<ProductBean> list = (ArrayList<ProductBean>)session.getAttribute("Pbean"); 
      
   if(list.size()==0)
   {
	  %> <tr class="red"> <td colspan="5" class="red"> <%  out.println("No Product Available ");%> </td> <tr> <%
   }
   else{
    
     Iterator<ProductBean> it = list.iterator();
     
     while(it.hasNext())
     {
    	   ProductBean pb =  it.next();
    	   
    	   %> 
    	   
    	   <tr> 
    	   <td> <% out.println(pb.getProductName()); %> </td>
    	   <td> <% out.println(pb.getQty()); %> </td>
           <td> <% out.println(pb.getProductRate()); %> </td>
           <td> <% out.println(pb.getProductAmount()); %></td>
            <td> <% out.println(" <a href='edit?Pname="+pb.getProductName()+"' > Edit </a> &nbsp; &nbsp; <a href='delete?Pname="+pb.getProductName()+"'>Delete</a>");%>  	  
    	   
    	 <% 	 
        }
     
     
     
     
     
   }
     
 %>

 


</table> <br> <br> <br>

  
  
    </div> 
</body>
</html>
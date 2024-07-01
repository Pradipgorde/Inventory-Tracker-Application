<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
   import="java.util.*,addProduct.*"    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

form{

margin:auto;
height:500px;
width:500px;
padding:20px;
background-color:aqua;
 }

</style>
<body>
 <%
 
 ArrayList<ProductBean> list = (ArrayList<ProductBean>) session.getAttribute("Pbean");
 
 String pname = (String) request.getParameter("Pname");
 out.println("<span> "+pname+"</span>");
    Iterator<ProductBean> it= list.iterator();    
     
        while(it.hasNext())
        {
        	ProductBean pb = (ProductBean)it.next();
        	if(pb.getProductName().equals(pname))
        	{
   %>
    <form action="update" method="post">
   
   <br> 
   Product Name:  <%out.println("<span> "+pname+"</span>"); %> <br><br>
  
    <input type="hidden" name="name" value=<%=pb.getProductName() %> ><br><br>
    Product Qty: <input type="number" name="qty" value=<%=pb.getQty() %> ><br><br>
    Product Rate: <input type="number" name="rate" value=<%=pb.getProductRate() %>><br><br>
     
     <button type="submit" value="update"> Update </button>
 
 <%}
        } %>
 
 
 <br> <br> 
 
 <a href="veiw"> View Product </a> &nbsp; &nbsp;
 <a href="logout"> logOut </a> 
 </form> 
 
 
  


</body>
</html>
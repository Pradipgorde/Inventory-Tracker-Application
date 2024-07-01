<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="java.util.* , addProduct.*, delete.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%  


ArrayList<ProductBean> list =   (ArrayList<ProductBean>) session.getAttribute("Pbean");

String pname = (String)request.getParameter("Pname");
Iterator<ProductBean> it = list.iterator();





	int k = new DeleteDAO().deleteData(pname);


while(it.hasNext())
{
	ProductBean pb = it.next();
	
	
	if(pname.equals(pb.getProductName()))
	{
		list.remove(pb);
		
%>    <script> 
 
  window.alert(" Delete sucessfully..... ");

</script>                      <% 
		break;
	}}
	
	
	
	




%>

<%@include file="add.html" %>



</body>
</html>
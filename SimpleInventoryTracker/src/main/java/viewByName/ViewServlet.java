package viewByName;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import addProduct.ProductBean;

@SuppressWarnings("serial")
@WebServlet("/searchproduct")
public class ViewServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		// 
		
	       String Pname = req.getParameter("pname");
		
		//ArrayList<ProductBean> list = new GetByCode().getByCode(pname); 
		
		req.setAttribute("pname", Pname);
		
		RequestDispatcher rd = req.getRequestDispatcher("ViewByName.jsp");
		rd.forward(req, res);
		
		
		
		
	}
	
	

}

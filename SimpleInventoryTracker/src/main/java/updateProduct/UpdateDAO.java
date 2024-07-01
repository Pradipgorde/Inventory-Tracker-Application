package updateProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

import addProduct.ProductBean;
import dbInfo.DBConnection;

public class UpdateDAO 
{
	private int k=0;
	
	public int updateProduct(ProductBean pb)
	{
		//System.out.println(" In DAO ");
		try {
			
			System.out.println( pb.getProductName()+" "+pb.getQty()+" "+pb.getProductRate()+" "+pb.getProductAmount());
	
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update ProductTable set productQty=?, productRate=?, productAmount=? where productname=? ");
			
			
		 ps.setInt(1, pb.getQty()); ps.setDouble(2, pb.getProductRate());
			ps.setDouble(3, pb.getProductAmount()); 	ps.setString(4, pb.getProductName());
 			
		    k = ps.executeUpdate();	
			System.out.println("k value:"+k);
			
		}catch(Exception e) {}
		
		
		
		return k;
	}
	
	
	

}

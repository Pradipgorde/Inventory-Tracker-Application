package addProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbInfo.DBConnection;

public class AddProductDAO 
{
	private int k=0;
	
	public int addProduct(ProductBean pb)  
	{
		
		
		try {
			System.out.println("comes here");
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps = con.prepareStatement("insert into ProductTable values (?,?,?,?)");
			
			  ps.setString(1, pb.getProductName()); ps.setInt(2, pb.getQty());
			ps.setDouble(3, pb.getProductRate()); ps.setDouble(4, pb.getProductAmount());
			
			k = ps.executeUpdate();
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return k;
		
		
	}
	
	

}

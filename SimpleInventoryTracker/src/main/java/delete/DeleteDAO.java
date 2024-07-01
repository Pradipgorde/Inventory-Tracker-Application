package delete;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dbInfo.DBConnection;

public class DeleteDAO 
{
	
	private int k=0;
	
	
	public int deleteData(String pname)
	{
		
		try {
				
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps = con.prepareStatement("delete from ProductTable where productname=?");
			
			ps.setString(1, pname);
			
			k = ps.executeUpdate();
			
			
		}catch(Exception e) {}
		
		
		return k;
	}
	
	

}

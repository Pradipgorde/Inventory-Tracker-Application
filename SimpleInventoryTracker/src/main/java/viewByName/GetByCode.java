package viewByName;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import addProduct.ProductBean;
import dbInfo.DBConnection;

public class GetByCode 
{
	ArrayList<ProductBean> list  = new ArrayList<>();
	
	
	
	public ArrayList<ProductBean> getByCode(String pname)
	{
		try {
			
			
			Connection con= DBConnection.getConnection();
			
			PreparedStatement ps = con.prepareStatement("select * from ProductTable where code=?");
			
			ps.setString(1,pname );
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			 {ProductBean bb = new ProductBean();
			
				
				  bb.setProductName(rs.getString(1)); bb.setQty(2);
				bb.setProductRate(rs.getDouble(3)); bb.setProductAmount(4);
				
				list.add(bb);
			}
			
		System.out.println(list);
			
		}catch(Exception e) {e.printStackTrace();}
		
		
		
		return list;
	}
	
	

}

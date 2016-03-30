package model;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import connection.ConnManager;

public class Addingcart 
{
	public static Connection conn = ConnManager.getInstance().getConnection();
	
	
	
	
	public static boolean addToCart(GetternSetterForUsers gns,GetternSetterForBooks gns1) throws SQLException	//inserting users information into database
	{
		PreparedStatement ps = null;
		try 
		{
			int netprice,price,quantity;
			price = Integer.parseInt(gns1.getPrice());
			quantity = Integer.parseInt(gns1.getQuantity());
			Class.forName("com.mysql.jdbc.Driver");
			netprice = price * quantity;
			String sql = "INSERT INTO cart (bookid,useremail,bookcond,price,quantity,netsum) VALUES (?,?,?,?,?,?)";
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			ps.setString(1,gns1.getBookid());
			ps.setString(2, gns.getEmail());
			ps.setString(3, gns1.getCondition());
			ps.setString(4, gns1.getPrice());
			ps.setString(5, gns1.getQuantity());
			ps.setInt(6, netprice);
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Users.java catch 2");
			e.printStackTrace();
			return false;
		}
		finally
		{
			ps.close();
			ConnManager.getInstance().close();
		}
	}//end of the first method inserting values of user into database
	
	
	
}

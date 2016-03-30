package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.PreparedStatement;

import connection.ConnManager;

/* methods written 
 * 1.	insertUserInfo which insert users info into database
 * 2.	loginAuthentication, it checks whether user who is trying to login is authentic or not?  
 *  
 */

public class Users
{
	public static Connection conn = ConnManager.getInstance().getConnection(); //creating connection
	private static CallableStatement cs = null;
	
	public static boolean insertUserInfo(GetternSetterForUsers gns) throws SQLException	//inserting users information into database
	{
		PreparedStatement ps = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			String sql = "INSERT INTO users (username,useremail,userpassword,usermobile) VALUES (?,?,?,?)";
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			ps.setString(1,gns.getName());
			ps.setString(2, gns.getEmail());
			ps.setString(3, gns.getPassword());
			ps.setString(4, gns.getMobile_no());
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
	
	
	
	public static String loginAuthentication(String email, String password) throws SQLException 
	{
		String name=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String sql = "{?=call bookstore.loginauthentication(?,?)}";	//sql command for calling function from database
			cs = (CallableStatement) conn.prepareCall(sql);
			
			cs.registerOutParameter(1, Types.CHAR);
			cs.setString(2, email);
			cs.setString(3, password);
			cs.executeUpdate();
			name = cs.getString(1);	//function returns the name of a user
		}
		catch(Exception e)
		{
			System.out.println("Users.java catch 4");
			e.printStackTrace();
		}
		finally
		{
			cs.close();
			ConnManager.getInstance().close();
		}
		
		
		return name;
	}	//closing of second method login authentication
	
	
	
	
	
	public static boolean userPurchased(GetternSetterForBooks gns) throws ClassNotFoundException, SQLException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String sql = "{?=call bookstore.userbookpurchased(?)}";
			
			
			cs = (CallableStatement) conn.prepareCall(sql);
			cs.registerOutParameter(1, Types.INTEGER);
			cs.setInt(2, Integer.valueOf(gns.getCartid()));
			
			cs.executeUpdate();
			if(cs.getInt(1) == 1)
				return true;
			else 
				return false;
		}
		catch(Exception e)
		{
			System.out.println("Users.java userPurchased catch");
			e.printStackTrace();
			return false;
		}
		finally
		{
			cs.close();
			ConnManager.getInstance().close();
		}
	}
	
	
	
	public static boolean userBorrowed(GetternSetterForBooks gns) throws ClassNotFoundException, SQLException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String sql = "{?=call bookstore.userbookborrowed(?,?,?)}";
			
			cs = (CallableStatement) conn.prepareCall(sql);
			cs.registerOutParameter(1, Types.INTEGER);
			cs.setString(2, gns.getEmail());
			cs.setInt(3, Integer.valueOf(gns.getBookid()));
			cs.setString(4, gns.getCondition());
			cs.executeUpdate();
			if(cs.getInt(1) == 1)
				return true;
			else 
				return false;
		}
		catch(Exception e)
		{
			System.out.println("====BorrowedbyUser.java catch===");
			return false;
		}
		finally
		{
			cs.close();
			ConnManager.getInstance().close();
		}
	}
	
	public static boolean userInfoUpdate(GetternSetterForUsers gns) throws SQLException	//inserting users information into database
	{
		PreparedStatement ps = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			//update users set username = 'xyz' ,useremail = 'xyz@gmail.com' ,usermobile = '9978964512' where useremail = 'aba@gmai';
			String sql = "UPDATE users set username = ? ,useremail = ? ,usermobile = ? where useremail = ?";
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			ps.setString(1,gns.getName());
			ps.setString(2, gns.getNew_email());
			ps.setString(3, gns.getMobile_no());
			ps.setString(4, gns.getEmail());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Users - userinfoupdate.java catch 2");
			e.printStackTrace();
			return false;
		}
		finally
		{
			ps.close();
			ConnManager.getInstance().close();
		}
	}//end of the first method inserting values of user into database
} //end of the class user

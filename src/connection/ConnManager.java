package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnManager {
	public static ConnManager instance = null;
	private final String USERNAME = "root";
	private final String PASSWORD = "12345";
	private final String CONN_STRING = "jdbc:mysql://localhost:3306/bookstore";
	private Connection conn = null;
	
	
	public static ConnManager getInstance()	//this method will object of this class
	{
		instance = new ConnManager();
		return instance;
	}
	
	
	private boolean openConnection()	//opening the connection
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("ConnManager.java Catch 2");
			e.printStackTrace();
			return false;
		}
	}
	
	public Connection getConnection()
	{
		openConnection();
		return conn;
	}
	
	
	public void close()
	{
		try 
		{
			if(conn != null)
				conn.close();
		} 
		catch(Exception e)
		{
			System.out.println("ConnManager.java Catch 4");
			e.printStackTrace();
		}
		conn = null;
	}
}

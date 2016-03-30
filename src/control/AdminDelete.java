package control;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

import connection.ConnManager;


@WebServlet("/AdminDelete")
public class AdminDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminDelete() {
        super();
        
    }
    
    
    public static Connection conn = ConnManager.getInstance().getConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String title,
		
		bookid = request.getParameter("bookid");
		title = request.getParameter("title");
		
		
		PreparedStatement ps = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			String sql = "delete from books where bookid = ? and title = ?";
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			ps.setString(1, bookid);
			ps.setString(2, title);
			ps.executeUpdate();
			response.sendRedirect("addbook.jsp");
		}
		catch(Exception e)
		{
			
			System.out.println("Admin.java catch 2");
		}
		finally
		{
			try 
			{
				ps.close();
			} 
			catch (Exception e) {
				
			}
			ConnManager.getInstance().close();
		}
	}

}

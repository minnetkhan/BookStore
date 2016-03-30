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


@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Admin() {
        super();
        
    }
    
    
    public static Connection conn = ConnManager.getInstance().getConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String bookid,title,authorid,publication,genre,condition,pages,description,quantity,cost,url;
		
		bookid = request.getParameter("bookid");
		title = request.getParameter("title");
		authorid = request.getParameter("authorid");
		publication = request.getParameter("publication");
		genre = request.getParameter("genre");
		condition = request.getParameter("condition");
		pages = request.getParameter("pages");
		description = request.getParameter("discription");
		quantity = request.getParameter("quantity");
		cost = request.getParameter("cost");
		url = " '/bookstore/images/' ";
		
		
		PreparedStatement ps = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			String sql = "INSERT INTO books (bookid,title,condn,authorid,publisherid,pages,discription,price,url,genre,quantity) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
			ps = (PreparedStatement) conn.prepareStatement(sql); 
			ps.setString(1, bookid);
			ps.setString(2, title);
			ps.setString(3, condition);
			ps.setString(4, authorid);
			ps.setString(5, publication);
			ps.setString(6, pages);
			ps.setString(7, description);
			ps.setString(8, cost);
			ps.setString(9, url);
			ps.setString(10, genre);
			ps.setString(11, quantity);
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

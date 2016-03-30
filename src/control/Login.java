package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Users;


@WebServlet("/Login")
public class Login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public Login() 
    {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email,password;
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		
		try
		{
			if(new String("admin@gmail.com").equals(email) && new String("admin").equals(password))
			{
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("name","admin");
				response.sendRedirect("admin.jsp");
			}
			else
			{
				String userName = Users.loginAuthentication(email, password);
				if(userName != null)
				{
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
					session.setAttribute("name",userName);
					response.sendRedirect("homepage.jsp");
					System.out.println(email);
					System.out.println(userName);
				}
				else
				{
					request.setAttribute("message", "Unknown username/password. Please retry."); // Store error message in request scope.
			        request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
			
				
			
		}
		catch(Exception e)
		{
			System.out.println("login.java catch");
			e.printStackTrace();
		}
		
	}

}	//class login

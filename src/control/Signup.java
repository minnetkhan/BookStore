package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GetternSetterForUsers;
import model.Users;

@WebServlet("/Signup")


public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Signup() {
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email,name,password,mobile_no;
		name = request.getParameter("name");
		email = request.getParameter("email");
		password = request.getParameter("password");
		mobile_no = request.getParameter("mobile");
		
		
		GetternSetterForUsers gns = new GetternSetterForUsers();
		gns.setName(name);
		gns.setEmail(email);
		gns.setPassword(password);
		gns.setMobile_no(mobile_no);
		
		
		try
		{
			boolean isInserted = Users.insertUserInfo(gns);
			if(isInserted)
				response.sendRedirect("login.html");
			else
				response.sendRedirect("signup.html");
		}
		catch(Exception e)
		{
			System.out.println("Signup.java catch 1");
			e.printStackTrace();
		}
	
	
	}	//doPost
}	//class

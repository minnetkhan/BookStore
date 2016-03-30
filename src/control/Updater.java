package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GetternSetterForUsers;
import model.Users;

@WebServlet("/Updater")


public class Updater extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Updater() {
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email="123",name,password,mobile_no,new_email;
		name = request.getParameter("name");
		email = request.getParameter("email");
		password = request.getParameter("password");
		mobile_no = request.getParameter("mobile");
		new_email = request.getParameter("new_email");
		
		GetternSetterForUsers gns = new GetternSetterForUsers();
		gns.setName(name);
		gns.setEmail(email);
		gns.setPassword(password);
		gns.setMobile_no(mobile_no);
		gns.setNew_email(new_email);
		
		try
		{
			boolean isInserted = Users.userInfoUpdate(gns);
			if(isInserted)
				response.sendRedirect("login.jsp");
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

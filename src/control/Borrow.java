package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GetternSetterForBooks;
import model.Users;


@WebServlet("/Borrow")
public class Borrow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Borrow() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		
		
		
		
		
		
		
		String email,bookid,condition;
		GetternSetterForBooks gns = new GetternSetterForBooks();
		
		
		
		HttpSession session = request.getSession();
		
		
		
		if(session.getAttribute("email")!=null)
		{
			email = (String) session.getAttribute("email");
			bookid = (String) session.getAttribute("bookid");
			condition = (String) session.getAttribute("cond");
			
			gns.setBookid(bookid);
			gns.setEmail(email);
			gns.setQuantity("1");
			gns.setCondition(condition);
			gns.setPrice(null);
			
			try
			{
				boolean status=true;
				status = Users.userBorrowed(gns);
				if(status)
				{
					response.sendRedirect("loginredirect.html");
				}
				else
				{
					System.out.println("kuch toh garbad h daya");
				}
			}
			catch(Exception e){
				System.out.println("buy.java in catch");
				e.printStackTrace();
			}
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}

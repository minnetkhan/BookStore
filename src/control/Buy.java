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

@WebServlet("/buy")
public class Buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Buy()
    {
        super();
    }
	
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		String email,bookid,quantity,price,condition,cartid;
		GetternSetterForBooks gns = new GetternSetterForBooks();
		
		
		
		HttpSession session = request.getSession();
		
		
		
		if(session.getAttribute("email")!=null)
		{
			email = (String) session.getAttribute("email");
			bookid = (String) request.getParameter("bookid");
			quantity = (String) request.getParameter("quantity");
			price = (String) request.getAttribute("price");
			condition = (String) session.getAttribute("cond");
			cartid = (String) request.getParameter("cartid");
			gns.setBookid(bookid);
			gns.setEmail(email);
			gns.setQuantity(quantity);
			gns.setPrice(price);
			gns.setCondition(condition);
			gns.setCartid(cartid);
			
			
			try
			{
				boolean status=false;
				status = Users.userPurchased(gns);
				if(status)
				{
					System.out.println("Congrats");
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
			response.sendRedirect("login.html");
		}
	}

	
	
	
}

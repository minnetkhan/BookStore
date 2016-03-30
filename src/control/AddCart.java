package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Addingcart;
import model.GetternSetterForBooks;
import model.GetternSetterForUsers;

@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddCart()
    {
        super();    
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		
		
		
		
		
		
		
		String email,bookid,condition,price,quantity;
		GetternSetterForBooks gns = new GetternSetterForBooks();
		GetternSetterForUsers gns1 = new GetternSetterForUsers();
		
		
		HttpSession session = request.getSession();
		
		
		
		if(session.getAttribute("email")!=null)
		{
			email = (String) session.getAttribute("email");
			bookid = (String) session.getAttribute("bookid");
			condition = (String) session.getAttribute("cond");
			price = (String)session.getAttribute("price");
			quantity = (String) request.getParameter("quantity");
			gns.setBookid(bookid);
			gns.setEmail(email);
			gns.setQuantity(quantity);
			gns.setCondition(condition);
			gns.setPrice(price);
			
			gns1.setEmail(email);
			
			
			try
			{
				boolean status=true;
				status = Addingcart.addToCart(gns1,gns);
				if(status)
				{
					response.sendRedirect("cartview.jsp");
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
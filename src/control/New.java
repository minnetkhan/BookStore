package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class New
 */
@WebServlet("/New")
public class New extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public New() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] str = request.getParameterValues("contact");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getParameter("preview"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("gender"));
		System.out.println(request.getParameter("age"));
		System.out.println(request.getParameter("date"));
		System.out.println(request.getParameter("color"));
		System.out.println(request.getParameter("country"));
		System.out.println(request.getParameter("height"));
		System.out.println(request.getParameter("salary"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("mobile"));
		System.out.println(request.getParameter("address"));
		//str[] = (request.getParameterValues("contact"));
		for(int i=0;i < (request.getParameterValues("contact")).length;i++)
		{
			System.out.println(str[i]);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}

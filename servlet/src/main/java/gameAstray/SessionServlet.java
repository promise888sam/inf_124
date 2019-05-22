package gameAstray;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		String[] history;
		ArrayList<String> cart = null;
		
		if(session.isNew()) {
			history = new String[5];
			cart = new ArrayList<String>();
			session.setAttribute("history", history);
			session.setAttribute("cart", cart);
		}
		else {
			history = (String[])session.getAttribute("history");
			cart = (ArrayList<String>) session.getAttribute("cart");
			request.setAttribute("history", session.getAttribute("history"));
			request.setAttribute("cart", session.getAttribute("cart"));
		}
		if(history == null) {
			history = new String[5];
			request.setAttribute("history", history);
		}
		if(cart == null) {
			cart = new ArrayList<String>();
			request.setAttribute("cart", cart);
		}
		session.setAttribute("history", history);
		session.setAttribute("cart", cart);
		request.getRequestDispatcher("/Browse.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
